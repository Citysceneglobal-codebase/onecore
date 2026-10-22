import multer from 'multer';
import path from 'path';
import fs from 'fs';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Auto-detect Hostinger hbuilds shared storage
let detectedSharedDir = null;
try {
  const hbuildsDir = path.resolve(__dirname, '../../../../');
  if (path.basename(hbuildsDir) === 'hbuilds') {
    detectedSharedDir = path.join(hbuildsDir, 'shared_uploads');
    if (!fs.existsSync(detectedSharedDir)) {
      try { fs.mkdirSync(detectedSharedDir, { recursive: true }); } catch {}
    }
  }
} catch {}

const uploadDir = process.env.UPLOADS_DIR 
  ? path.resolve(process.env.UPLOADS_DIR) 
  : (detectedSharedDir || path.join(__dirname, '..', 'uploads'));

if (!fs.existsSync(uploadDir)) {
  try { fs.mkdirSync(uploadDir, { recursive: true }); } catch {}
}

const localUploadsDir = path.join(__dirname, '..', 'uploads');
if (!fs.existsSync(localUploadsDir)) {
  try { fs.mkdirSync(localUploadsDir, { recursive: true }); } catch {}
}

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, uploadDir);
  },
  filename: (req, file, cb) => {
    const ext = path.extname(file.originalname).toLowerCase();
    const safeBaseName = path
      .basename(file.originalname, ext)
      .toLowerCase()
      .replace(/[^a-z0-9]/g, '-');
    const uniqueSuffix = `${Date.now()}-${Math.round(Math.random() * 1e9)}`;
    const finalFilename = `${safeBaseName}-${uniqueSuffix}${ext}`;
    
    // Asynchronously mirror to localUploadsDir if uploadDir is external/shared
    if (uploadDir !== localUploadsDir) {
      setTimeout(() => {
        try {
          const src = path.join(uploadDir, finalFilename);
          const dest = path.join(localUploadsDir, finalFilename);
          if (fs.existsSync(src) && !fs.existsSync(dest)) {
            fs.copyFileSync(src, dest);
          }
        } catch {}
      }, 500);
    }
    
    cb(null, finalFilename);
  },
});

const allowedMimes = [
  'image/jpeg',
  'image/png',
  'image/webp',
  'image/svg+xml',
  'application/pdf',
];

const fileFilter = (req, file, cb) => {
  if (allowedMimes.includes(file.mimetype)) {
    cb(null, true);
  } else {
    cb(new Error(`Invalid file type: ${file.mimetype}. Allowed types: JPEG, PNG, WEBP, SVG, PDF`), false);
  }
};

export const upload = multer({
  storage,
  fileFilter,
  limits: {
    fileSize: 10 * 1024 * 1024, // 10MB
  },
});
