import './config/env.js';
import express from 'express';
import cors from 'cors';
import helmet from 'helmet';
import rateLimit from 'express-rate-limit';
import path from 'path';
import fs from 'fs';
import { fileURLToPath } from 'url';

import authRoutes from './routes/authRoutes.js';
import dashboardRoutes from './routes/dashboardRoutes.js';
import contactsRoutes from './routes/contactsRoutes.js';
import therapeuticAreasRoutes from './routes/therapeuticAreasRoutes.js';
import productsRoutes from './routes/productsRoutes.js';
import newsRoutes from './routes/newsRoutes.js';
import pagesRoutes from './routes/pagesRoutes.js';
import mediaRoutes from './routes/mediaRoutes.js';
import settingsRoutes from './routes/settingsRoutes.js';
import adminUsersRoutes from './routes/adminUsersRoutes.js';
import { errorHandler } from './middleware/errorMiddleware.js';
import { testConnection } from './config/db.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

import { getStoragePaths, findUploadedFile } from './utils/storage.js';

// Auto-detect Hostinger persistent shared storage
const { sharedDir: sharedUploadsDir } = getStoragePaths(__dirname);
const customUploadsDir = process.env.UPLOADS_DIR ? path.resolve(process.env.UPLOADS_DIR) : null;
const uploadsDir = path.resolve(__dirname, 'uploads');
const parentUploadsDir = path.resolve(__dirname, '..', 'uploads');

if (customUploadsDir && !fs.existsSync(customUploadsDir)) {
  try { fs.mkdirSync(customUploadsDir, { recursive: true }); } catch {}
}
if (!fs.existsSync(uploadsDir)) {
  try { fs.mkdirSync(uploadsDir, { recursive: true }); } catch {}
}
if (!fs.existsSync(parentUploadsDir)) {
  try { fs.mkdirSync(parentUploadsDir, { recursive: true }); } catch {}
}

const app = express();
const PORT = process.env.PORT || 5000;

// Security & Middlewares
app.use(helmet({
  crossOriginResourcePolicy: { policy: 'cross-origin' },
}));

// Normalize duplicate /uploads/uploads/ URLs
app.use((req, res, next) => {
  if (req.url.startsWith('/uploads/uploads/')) {
    req.url = req.url.replace('/uploads/uploads/', '/uploads/');
  }
  next();
});

const allowedOrigins = [
  'http://localhost:3000',
  'http://127.0.0.1:3000',
  'http://localhost:5173',
  'http://127.0.0.1:5173',
];

app.use(cors({
  origin: (origin, callback) => {
    // allow requests with no origin (like mobile apps, curl, server-to-server)
    if (!origin || allowedOrigins.indexOf(origin) !== -1) {
      return callback(null, true);
    }
    return callback(null, true); // Dev convenience fallback
  },
  credentials: true,
}));

app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true, limit: '10mb' }));

// Global Rate Limiter
const globalLimiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 minutes
  max: 300, // max 300 requests per IP
  standardHeaders: true,
  legacyHeaders: false,
  message: {
    success: false,
    message: 'Too many requests from this IP, please try again later.',
  },
});
app.use('/api', globalLimiter);

// Disable Cache Staleness across all API routes
app.use('/api', (req, res, next) => {
  res.setHeader('Cache-Control', 'no-store, no-cache, must-revalidate, proxy-revalidate');
  res.setHeader('Pragma', 'no-cache');
  res.setHeader('Expires', '0');
  next();
});

// Auth Limiter (Strict for login brute force prevention)
const authLimiter = rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 20, // 20 login attempts per 15 min
  message: {
    success: false,
    message: 'Too many login attempts. Please wait 15 minutes before trying again.',
  },
});
app.use('/api/auth/login', authLimiter);

const serveUploadHandler = (req, res) => {
  const reqFile = req.params.filename || req.params[0] || '';
  const cleanName = path.basename(reqFile);
  const found = findUploadedFile(cleanName, customUploadsDir);

  if (found) {
    res.setHeader('Cache-Control', 'public, max-age=86400');
    return res.sendFile(found);
  }

  // File not found — return 404 text response so frontend onError handles it cleanly.
  // NEVER send wide brand logo as an image payload that blows up into "NE" on mobile viewports!
  return res.status(404).send('Image not found');
};

app.get('/uploads/:filename(*)', serveUploadHandler);
app.get('/assets/uploads/:filename(*)', serveUploadHandler);

// Map /images/divisions to public assets
const divisionImageMap = {
  'general-medicine.jpg': '/assets/therapeutic-general-medicine.jpg',
  'ortheon.jpg': '/assets/ortheon.jpg',
  'orthopaedics.jpg': '/assets/ortheon.jpg',
  'womens-health.jpg': '/assets/therapeutic-womens-health.jpg',
  'pediaplus.jpg': '/assets/pediaplus.jpg',
  'pediatrics.jpg': '/assets/pediaplus.jpg',
  'paediatrics.jpg': '/assets/pediaplus.jpg',
  'neurix.jpg': '/assets/neurix.jpg',
  'neurology.jpg': '/assets/neurix.jpg',
  'eyerix.jpg': '/assets/eyerix.jpg',
  'ophthalmology.jpg': '/assets/eyerix.jpg',
  'vellis.webp': '/assets/vellis.webp',
  'dermatology.jpg': '/assets/vellis.webp',
  'otira.jpg': '/assets/otira.jpg',
  'ent.jpg': '/assets/otira.jpg',
  'cytos.jpg': '/assets/cytos.jpg',
  'oncology.jpg': '/assets/cytos.jpg',
};
app.use('/images/divisions/:filename', (req, res, next) => {
  const target = divisionImageMap[req.params.filename];
  if (target) {
    return res.redirect(target);
  }
  next();
});

// Public assets & fallback placeholder
const publicAssetsDir = path.resolve(__dirname, '../public/assets');
if (fs.existsSync(publicAssetsDir)) {
  app.use('/assets', express.static(publicAssetsDir));
}
const placeholderPath = path.resolve(__dirname, '../public/placeholder.png');
if (fs.existsSync(placeholderPath)) {
  app.use('/placeholder.png', (req, res) => res.sendFile(placeholderPath));
}

// Health check
app.get('/api/health', (req, res) => {
  res.json({
    status: 'ok',
    service: 'Onecore Pharma API',
    timestamp: new Date().toISOString(),
  });
});

// API Routes
app.use('/api/auth', authRoutes);
app.use('/api/admin', dashboardRoutes);
app.use('/api', contactsRoutes); // /api/contact & /api/admin/enquiries
app.use('/api/therapeutic-areas', therapeuticAreasRoutes);
app.use('/api/products', productsRoutes);
app.use('/api/news', newsRoutes);
app.use('/api/pages', pagesRoutes);
app.use('/api/admin/media', mediaRoutes);
app.use('/api/media', mediaRoutes);
app.use('/api/settings', settingsRoutes);
app.use('/api/admin/users', adminUsersRoutes);

// Serve Frontend Static Files
const distPath = path.join(__dirname, '../dist');
if (fs.existsSync(distPath)) {
  app.use(express.static(distPath));
  app.get('*', (req, res, next) => {
    // Strictly prevent HTML catch-all for missing API calls, uploads, or images
    if (
      req.path.startsWith('/api') ||
      req.path.startsWith('/uploads') ||
      req.path.startsWith('/assets') ||
      req.path.endsWith('.jpg') ||
      req.path.endsWith('.jpeg') ||
      req.path.endsWith('.png') ||
      req.path.endsWith('.webp') ||
      req.path.endsWith('.svg')
    ) {
      return res.status(404).send('Not found');
    }
    res.sendFile(path.join(distPath, 'index.html'));
  });
}

// Error Handling Middleware
app.use(errorHandler);

// Start Server
app.listen(PORT, async () => {
  console.log(`========================================`);
  console.log(` Onecore Pharma API Server Running      `);
  console.log(` Port:    http://localhost:${PORT}      `);
  console.log(` Health:  http://localhost:${PORT}/api/health `);
  console.log(` Environment: ${process.env.NODE_ENV || 'development'} `);
  console.log(`========================================`);

  // Verify MySQL connection
  await testConnection();
});
