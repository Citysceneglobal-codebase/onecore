import path from 'path';
import fs from 'fs';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

/**
 * Dynamically traverses up the directory tree to locate persistent storage
 * on Hostinger (e.g. hbuilds/shared_uploads or domain/shared_uploads)
 * and discovers the versions directory to rescue previously uploaded files.
 */
export function getStoragePaths(startDir = __dirname) {
  let curr = path.resolve(startDir);
  let sharedDir = null;
  let versionsDir = null;
  let domainDir = null;

  for (let i = 0; i < 10; i++) {
    const parent = path.dirname(curr);
    if (!parent || parent === curr) break;

    const base = path.basename(curr);

    // If there is an existing shared_uploads folder
    const candidateShared = path.join(curr, 'shared_uploads');
    if (fs.existsSync(candidateShared)) {
      try {
        if (fs.statSync(candidateShared).isDirectory()) {
          sharedDir = candidateShared;
        }
      } catch {}
    }

    // Hostinger hbuilds root
    if (base === 'hbuilds') {
      if (!sharedDir) {
        sharedDir = path.join(curr, 'shared_uploads');
      }
    }

    // Hostinger versioned deployments folder
    if (base === 'versions') {
      versionsDir = curr;
      if (!sharedDir) {
        sharedDir = path.join(parent, 'shared_uploads');
      }
    }

    // Domain root or public_html
    if (
      base.includes('hostingersite.com') ||
      base.includes('onecorepharma') ||
      base === 'public_html'
    ) {
      domainDir = curr;
    }

    curr = parent;
  }

  // Fallback to domain root if hbuilds wasn't directly found
  if (!sharedDir && domainDir) {
    sharedDir = path.join(domainDir, 'shared_uploads');
  }

  // Ensure persistent shared_uploads directory exists and is writable
  if (sharedDir && !fs.existsSync(sharedDir)) {
    try {
      fs.mkdirSync(sharedDir, { recursive: true });
    } catch (err) {
      console.warn('[Storage] Could not create shared directory:', sharedDir, err.message);
    }
  }

  return { sharedDir, versionsDir };
}

/**
 * Locates an uploaded file across:
 * 1. Custom UPLOADS_DIR (if set)
 * 2. Persistent shared_uploads directory
 * 3. Local server/uploads directory
 * 4. Public assets fallback directories
 * 5. Sibling version directories in Hostinger hbuilds/versions/*
 */
export function findUploadedFile(filename, customUploadsDir = null) {
  const cleanName = path.basename(filename || '');
  if (!cleanName || cleanName === '.' || cleanName === '..') return null;

  const { sharedDir, versionsDir } = getStoragePaths(__dirname);
  const localUploadsDir = path.resolve(__dirname, '../uploads');
  const parentUploadsDir = path.resolve(__dirname, '../../uploads');

  // 1. Primary directories in priority order
  const searchDirs = [
    customUploadsDir ? path.resolve(customUploadsDir) : null,
    sharedDir,
    localUploadsDir,
    parentUploadsDir,
    path.resolve(__dirname, '../public/assets/uploads'),
    path.resolve(__dirname, '../public/assets'),
    path.resolve(__dirname, '../../public/assets/uploads'),
    path.resolve(__dirname, '../../public/assets'),
  ].filter(Boolean);

  for (const dir of searchDirs) {
    try {
      if (fs.existsSync(dir)) {
        const candidate = path.join(dir, cleanName);
        if (fs.existsSync(candidate) && fs.statSync(candidate).isFile()) {
          return candidate;
        }
      }
    } catch {}
  }

  // 2. Auto-rescue from sibling Hostinger versions
  if (versionsDir && fs.existsSync(versionsDir)) {
    try {
      const versionEntries = fs.readdirSync(versionsDir);
      for (const ver of versionEntries) {
        const verPath = path.join(versionsDir, ver);
        const candidates = [
          path.join(verPath, 'server', 'uploads', cleanName),
          path.join(verPath, 'nodejs', 'server', 'uploads', cleanName),
          path.join(verPath, 'uploads', cleanName),
          path.join(verPath, 'nodejs', 'uploads', cleanName),
          path.join(verPath, 'public', 'assets', 'uploads', cleanName),
        ];

        for (const cand of candidates) {
          try {
            if (fs.existsSync(cand) && fs.statSync(cand).isFile()) {
              // Copy to sharedDir & localUploadsDir so subsequent requests are immediate
              if (sharedDir && fs.existsSync(sharedDir)) {
                try { fs.copyFileSync(cand, path.join(sharedDir, cleanName)); } catch {}
              }
              if (localUploadsDir && fs.existsSync(localUploadsDir)) {
                try { fs.copyFileSync(cand, path.join(localUploadsDir, cleanName)); } catch {}
              }
              return cand;
            }
          } catch {}
        }
      }
    } catch (err) {
      console.warn('[Storage] Error scanning sibling versions:', err.message);
    }
  }

  return null;
}

/**
 * Diagnostic tool to inspect Hostinger filesystem structure, discovery paths,
 * and recover any orphan uploaded files across server restarts or deploys.
 */
export function getStorageDiagnostic() {
  const { sharedDir, versionsDir } = getStoragePaths(__dirname);
  const cwd = process.cwd();
  const dirTree = [];

  let curr = path.resolve(__dirname);
  for (let i = 0; i < 6; i++) {
    try {
      const entries = fs.readdirSync(curr).slice(0, 30);
      dirTree.push({ path: curr, entries });
    } catch (e) {
      dirTree.push({ path: curr, error: e.message });
    }
    const parent = path.dirname(curr);
    if (!parent || parent === curr) break;
    curr = parent;
  }

  const foundImages = [];
  function scan(dir, depth = 0) {
    if (depth > 4 || foundImages.length > 200) return;
    try {
      const files = fs.readdirSync(dir);
      for (const f of files) {
        if (f.startsWith('.') || f === 'node_modules' || f === '.git' || f === 'dist') continue;
        const p = path.join(dir, f);
        try {
          const stat = fs.statSync(p);
          if (stat.isDirectory()) {
            scan(p, depth + 1);
          } else if (f.match(/\.(png|jpg|jpeg|webp)$/i)) {
            foundImages.push({ name: f, path: p, size: stat.size, mtime: stat.mtime });
          }
        } catch {}
      }
    } catch {}
  }

  try {
    scan(curr);
  } catch {}

  return {
    cwd,
    dirname: __dirname,
    uploadsEnv: process.env.UPLOADS_DIR || null,
    sharedDir,
    versionsDir,
    dirTree,
    foundImagesCount: foundImages.length,
    foundImages: foundImages.slice(0, 50),
  };
}
