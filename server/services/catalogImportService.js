import XLSX from 'xlsx';
import AdmZip from 'adm-zip';
import path from 'path';
import fs from 'fs';
import { fileURLToPath } from 'url';
import { query } from '../config/db.js';
import { getStoragePaths, isWritableDir } from '../utils/storage.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const { sharedDir } = getStoragePaths(__dirname);

function getUploadDirectories() {
  const dirs = [];
  if (process.env.UPLOADS_DIR) {
    const custom = path.resolve(process.env.UPLOADS_DIR);
    try {
      if (!fs.existsSync(custom)) fs.mkdirSync(custom, { recursive: true });
      if (isWritableDir(custom)) dirs.push(custom);
    } catch {}
  }
  if (sharedDir) {
    try {
      if (!fs.existsSync(sharedDir)) fs.mkdirSync(sharedDir, { recursive: true });
      if (isWritableDir(sharedDir)) dirs.push(sharedDir);
    } catch {}
  }
  const local = path.resolve(__dirname, '..', 'uploads');
  try {
    if (!fs.existsSync(local)) fs.mkdirSync(local, { recursive: true });
    dirs.push(local);
  } catch {}

  const publicAssets = path.resolve(__dirname, '..', '..', 'public', 'assets', 'products');
  try {
    if (!fs.existsSync(publicAssets)) fs.mkdirSync(publicAssets, { recursive: true });
    dirs.push(publicAssets);
  } catch {}

  return dirs;
}

export const DIVISION_MAP = {
  'femme': { id: 1, name: "Women's Health", slug: 'womens-health' },
  'womens-health': { id: 1, name: "Women's Health", slug: 'womens-health' },
  "women's health": { id: 1, name: "Women's Health", slug: 'womens-health' },
  'women': { id: 1, name: "Women's Health", slug: 'womens-health' },

  'pediaplus': { id: 2, name: 'Paediatrics', slug: 'paediatrics' },
  'pediatrics': { id: 2, name: 'Paediatrics', slug: 'paediatrics' },
  'paediatrics': { id: 2, name: 'Paediatrics', slug: 'paediatrics' },
  'pedia': { id: 2, name: 'Paediatrics', slug: 'paediatrics' },

  'ortheon': { id: 3, name: 'Orthopaedics', slug: 'orthopaedics' },
  'orthopaedics': { id: 3, name: 'Orthopaedics', slug: 'orthopaedics' },
  'orthopedics': { id: 3, name: 'Orthopaedics', slug: 'orthopaedics' },
  'ortho': { id: 3, name: 'Orthopaedics', slug: 'orthopaedics' },

  'neurix': { id: 4, name: 'Neurology', slug: 'neurology' },
  'neurology': { id: 4, name: 'Neurology', slug: 'neurology' },
  'neuro': { id: 4, name: 'Neurology', slug: 'neurology' },

  'eyrix': { id: 5, name: 'Ophthalmology', slug: 'ophthalmology' },
  'eyerix': { id: 5, name: 'Ophthalmology', slug: 'ophthalmology' },
  'ophthalmology': { id: 5, name: 'Ophthalmology', slug: 'ophthalmology' },
  'eye': { id: 5, name: 'Ophthalmology', slug: 'ophthalmology' },

  'vellis': { id: 6, name: 'Dermatology', slug: 'dermatology' },
  'dermatology': { id: 6, name: 'Dermatology', slug: 'dermatology' },
  'derma': { id: 6, name: 'Dermatology', slug: 'dermatology' },
  'skin': { id: 6, name: 'Dermatology', slug: 'dermatology' },

  'otira': { id: 7, name: 'ENT', slug: 'ent' },
  'ent': { id: 7, name: 'ENT', slug: 'ent' },
  'ear-nose-throat': { id: 7, name: 'ENT', slug: 'ent' },

  'omnara': { id: 8, name: 'General Medicine', slug: 'general-medicine' },
  'general-medicine': { id: 8, name: 'General Medicine', slug: 'general-medicine' },
  'general medicine': { id: 8, name: 'General Medicine', slug: 'general-medicine' },
  'internal-medicine': { id: 8, name: 'General Medicine', slug: 'general-medicine' },
  'general': { id: 8, name: 'General Medicine', slug: 'general-medicine' },

  'cytos': { id: 9, name: 'Oncology', slug: 'oncology' },
  'oncology': { id: 9, name: 'Oncology', slug: 'oncology' },
  'cancer-care': { id: 9, name: 'Oncology', slug: 'oncology' },
};

function normalizeSlug(str) {
  if (!str) return '';
  return str
    .toLowerCase()
    .replace(/[™®©]/g, '')
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '');
}

function normalizeKey(str) {
  if (!str) return '';
  return str.toLowerCase().replace(/[^a-z0-9]/g, '');
}

/**
 * Generates an Excel workbook template pre-filled with Instructions and 9 Division Sheets.
 */
export function generateCatalogTemplate() {
  const wb = XLSX.utils.book_new();

  // 1. Instructions Sheet
  const instructions = [
    ['ONECORE PHARMA — OFFICIAL PRODUCT CATALOG IMPORT TEMPLATE'],
    [''],
    ['========================================================================================'],
    ['IMPORTANT INSTRUCTIONS FOR PRODUCT PORTFOLIO MANAGEMENT'],
    ['========================================================================================'],
    [''],
    ['1. NINE DIVISION SHEETS:'],
    ['   This workbook contains 9 separate sheets for Onecore Pharma\'s 9 therapeutic divisions:'],
    ['   - Femme      : Women\'s Health (Gynaecology & Obstetrics)'],
    ['   - Pediaplus  : Paediatrics & Child Health'],
    ['   - Ortheon    : Orthopaedics & Bone Health'],
    ['   - Neurix     : Neurology & Neurovascular Care'],
    ['   - Eyrix      : Ophthalmology & Eye Care'],
    ['   - Vellis     : Dermatology & Advanced Skin Therapeutics'],
    ['   - Otira      : ENT (Ear, Nose & Throat Therapeutics)'],
    ['   - Omnara     : General & Internal Medicine'],
    ['   - Cytos      : Oncology & Supportive Cancer Care'],
    [''],
    ['2. MULTI-SPECIALTY / CROSS-CATEGORY RULE (VERY IMPORTANT):'],
    ['   If a medicine belongs to more than one specialty, simply enter the product into EACH respective sheet!'],
    ['   Example 1: Glypocal™-LP is entered in BOTH "Femme" and "Ortheon" sheets.'],
    ['   Example 2: Frecox™-SP is entered in BOTH "Ortheon" and "Omnara" sheets.'],
    ['   Example 3: Nervia™-NX is entered in THREE sheets: "Ortheon", "Neurix", and "Omnara".'],
    ['   -> The system automatically links the same brand name and displays the product on every corresponding division page!'],
    [''],
    ['3. PACKSHOT IMAGES ZIP FOLDER:'],
    ['   - Place all packaging photos into a single folder and compress it as a ZIP file (e.g. "images.zip").'],
    ['   - Supported formats: PNG, JPG, JPEG, WEBP.'],
    ['   - Auto-Matching: Name the image after the product brand (e.g. "frecox-sp.png", "glypocal-lp.jpg")'],
    ['     OR specify the exact filename in the "Image File Name" column.'],
    [''],
    ['4. COLUMN DEFINITIONS:'],
    ['   - S.No                        : Serial number (1, 2, 3...)'],
    ['   - Brand Name                  : Commercial pharmaceutical trademark (e.g. Frecox™-SP)'],
    ['   - Active Composition          : Salts, molecules and strength (e.g. Aceclofenac 100 mg + Paracetamol 325 mg)'],
    ['   - Pack Size / Dosage Form     : e.g. 10 x 10 Tablets, 100 ml Syrup, 15 ml Drops'],
    ['   - Short Description / Summary : Key clinical indications and primary therapeutic use'],
    ['   - Detailed Monograph          : Extended medical monograph and pharmacology (optional)'],
    ['   - Dosage Guidance             : Administration instructions (e.g. As directed by physician)'],
    ['   - Image File Name             : Optional image filename (e.g. frecox-sp.png)'],
  ];

  const wsInstructions = XLSX.utils.aoa_to_sheet(instructions);
  XLSX.utils.book_append_sheet(wb, wsInstructions, 'Instructions');

  const headers = [
    'S.No',
    'Brand Name',
    'Active Composition',
    'Pack Size / Dosage Form',
    'Short Description / Indications',
    'Detailed Monograph',
    'Dosage Guidance',
    'Image File Name',
  ];

  const divisions = [
    {
      name: 'Femme',
      sample: [
        1,
        'Glypocal™-LP',
        'Calcium Citrate Malate 1250 mg + Vitamin D3 1000 IU + Folic Acid 1.5 mg',
        '10 x 10 Tablets',
        'Calcium supplementation for pregnancy, lactation and post-menopausal bone support.',
        'High bio-availability calcium formulation tailored for women\'s health.',
        '1 tablet daily after main meal or as directed by physician.',
        'glypocal-lp.png',
      ],
    },
    {
      name: 'Pediaplus',
      sample: [
        1,
        'Dozokid™',
        'Melatonin 3 mg / 5 mL Syrup',
        '60 mL Bottle',
        'Paediatric sleep-wake regulation and circadian rhythm support.',
        'Prescription formulation for physician-directed management of sleep disturbances in children.',
        'As prescribed by paediatrician.',
        'dozokid.png',
      ],
    },
    {
      name: 'Ortheon',
      sample: [
        1,
        'Glypocal™-LP',
        'Calcium Citrate Malate 1250 mg + Vitamin D3 1000 IU + Folic Acid 1.5 mg',
        '10 x 10 Tablets',
        'Orthopaedic calcium replenishment for bone density and fracture healing.',
        'Clinical-strength calcium formulation for bone healing and density recovery.',
        '1 tablet daily after main meal.',
        'glypocal-lp.png',
      ],
      sample2: [
        2,
        'Frecox™-SP',
        'Aceclofenac 100 mg + Paracetamol 325 mg + Serratiopeptidase 15 mg',
        '10 x 10 Tablets',
        'Triple-action anti-inflammatory, analgesic and anti-oedematous tablet for orthopaedics.',
        'Rapid musculoskeletal pain relief with proteolytic tissue repair.',
        '1 tablet twice daily after meals.',
        'frecox-sp.png',
      ],
    },
    {
      name: 'Neurix',
      sample: [
        1,
        'Nervia™-NX',
        'Pregabalin 75 mg + Methylcobalamin 750 mcg + Nortriptyline 10 mg',
        '10 x 10 Tablets',
        'Triple combination for neuropathic pain and peripheral neuropathy.',
        'Synergistic neurological pain management formulation.',
        '1 tablet at bedtime or as directed.',
        'nervia-nx.png',
      ],
    },
    {
      name: 'Eyrix',
      sample: [
        1,
        'Moxable™-LP',
        'Moxifloxacin 0.5% + Loteprednol Etabonate 0.5% Eye Drops',
        '5 mL Eye Drops',
        'Broad-spectrum antibacterial and anti-inflammatory ophthalmic suspension.',
        'For postoperative ocular inflammation and infection control.',
        '1 to 2 drops in the affected eye(s) 3 to 4 times daily.',
        'moxable-lp.png',
      ],
    },
    {
      name: 'Vellis',
      sample: [
        1,
        'Clobtos™-SA',
        'Clobetasol Propionate 0.05% + Salicylic Acid 3% Ointment',
        '30 g Tube',
        'Keratolytic and potent anti-inflammatory topical treatment for hyperkeratotic dermatoses.',
        'Dermatological formulation for plaque psoriasis and chronic eczema.',
        'Apply sparingly to affected areas once or twice daily.',
        'clobtos-sa.png',
      ],
    },
    {
      name: 'Otira',
      sample: [
        1,
        'Flutiriv™',
        'Fluticasone Furoate 27.5 mcg per metered spray',
        '120 Metered Sprays',
        'Corticosteroid nasal spray for allergic rhinitis and nasal polyps.',
        'Provides 24-hour relief from nasal congestion, sneezing, and rhinorrhea.',
        '2 sprays in each nostril once daily.',
        'flutiriv.png',
      ],
    },
    {
      name: 'Omnara',
      sample: [
        1,
        'Frecox™-SP',
        'Aceclofenac 100 mg + Paracetamol 325 mg + Serratiopeptidase 15 mg',
        '10 x 10 Tablets',
        'Anti-inflammatory analgesia for acute systemic pain and swelling.',
        'Potent oral anti-inflammatory agent for acute internal medicine indications.',
        '1 tablet twice daily after food.',
        'frecox-sp.png',
      ],
    },
    {
      name: 'Cytos',
      sample: [
        1,
        'Tocofrac™',
        'Tocotrienol & Tocopherol Soft Gelatin Capsules',
        '10 x 1 x 10 Capsules',
        'Potent lipid-soluble antioxidant support for clinical oncology care.',
        'Advanced palm tocotrienol-rich fraction for cellular protection.',
        '1 capsule daily or as directed by oncologist.',
        'tocofrac.png',
      ],
    },
  ];

  for (const d of divisions) {
    const rows = [headers, d.sample];
    if (d.sample2) rows.push(d.sample2);
    const ws = XLSX.utils.aoa_to_sheet(rows);
    XLSX.utils.book_append_sheet(wb, ws, d.name);
  }

  return XLSX.write(wb, { type: 'buffer', bookType: 'xlsx' });
}

/**
 * Processes an uploaded Excel file and an optional ZIP of images,
 * populating `products`, `product_therapeutic_areas`, and related child tables.
 */
export async function processCatalogImport({ excelBuffer, zipBuffer, mode = 'merge' }) {
  if (!excelBuffer) {
    throw new Error('Excel file buffer is required for catalog import.');
  }

  const uploadDirs = getUploadDirectories();
  const primaryUploadDir = uploadDirs[0] || path.resolve(__dirname, '..', 'uploads');

  // Step 1: Extract Images from ZIP if provided
  const imageMap = new Map(); // normalizedKey -> publicUrl

  if (zipBuffer && zipBuffer.length > 0) {
    try {
      const zip = new AdmZip(zipBuffer);
      const zipEntries = zip.getEntries();

      for (const entry of zipEntries) {
        if (entry.isDirectory) continue;
        const entryName = entry.entryName;
        const ext = path.extname(entryName).toLowerCase();
        if (!['.png', '.jpg', '.jpeg', '.webp', '.svg'].includes(ext)) continue;

        const baseFilename = path.basename(entryName);
        const nameWithoutExt = path.basename(entryName, ext);
        const safeBaseName = normalizeSlug(nameWithoutExt);
        const finalFilename = `${safeBaseName}${ext}`;
        const data = entry.getData();

        // Write to all accessible upload directories
        for (const dir of uploadDirs) {
          try {
            const destPath = path.join(dir, finalFilename);
            fs.writeFileSync(destPath, data);
          } catch (e) {
            console.warn(`Failed writing zip image to ${dir}:`, e.message);
          }
        }

        const publicUrl = `/uploads/${finalFilename}`;
        // Store multiple lookup keys for flexible matching
        imageMap.set(baseFilename.toLowerCase(), publicUrl);
        imageMap.set(nameWithoutExt.toLowerCase(), publicUrl);
        imageMap.set(safeBaseName, publicUrl);
        imageMap.set(normalizeKey(nameWithoutExt), publicUrl);
      }
    } catch (zipError) {
      console.error('Error processing ZIP file:', zipError);
      throw new Error(`Failed to extract images ZIP: ${zipError.message}`);
    }
  }

  // Step 2: Parse Excel sheets
  const wb = XLSX.read(excelBuffer, { type: 'buffer' });
  const sheetNames = wb.SheetNames;

  const aggregatedProducts = new Map(); // slug -> product object
  let totalRowsRead = 0;

  for (const rawSheetName of sheetNames) {
    const cleanSheetKey = rawSheetName.toLowerCase().trim().replace(/[-_]/g, ' ');
    // Skip instruction / overview sheets
    if (
      cleanSheetKey.includes('instruction') ||
      cleanSheetKey.includes('readme') ||
      cleanSheetKey.includes('guide') ||
      cleanSheetKey.includes('summary') ||
      cleanSheetKey.includes('overview')
    ) {
      continue;
    }

    // Match division
    const areaInfo = DIVISION_MAP[cleanSheetKey] || DIVISION_MAP[rawSheetName.toLowerCase().trim()];
    if (!areaInfo) {
      console.warn(`[Import] Skipping unrecognized sheet "${rawSheetName}". Use standard division names like Femme, Ortheon, etc.`);
      continue;
    }

    const ws = wb.Sheets[rawSheetName];
    const rows = XLSX.utils.sheet_to_json(ws, { defval: '' });

    for (let rowIndex = 0; rowIndex < rows.length; rowIndex++) {
      const row = rows[rowIndex];
      totalRowsRead++;

      // Flexible column resolution
      const brand = (
        row['Brand Name'] ||
        row['Product Name'] ||
        row['Brand'] ||
        row['Name'] ||
        row['brand_name'] ||
        row['product_name'] ||
        ''
      ).toString().trim();

      if (!brand || brand.toLowerCase() === 'brand name' || brand.toLowerCase().startsWith('example')) {
        continue;
      }

      const slug = normalizeSlug(brand);
      if (!slug) continue;

      const composition = (
        row['Active Composition'] ||
        row['Composition'] ||
        row['Formula'] ||
        row['Generic Name'] ||
        row['Salt'] ||
        row['composition'] ||
        ''
      ).toString().trim();

      const packSize = (
        row['Pack Size / Dosage Form'] ||
        row['Pack Size'] ||
        row['Packaging'] ||
        row['Dosage Form'] ||
        row['Form'] ||
        row['pack_size'] ||
        ''
      ).toString().trim();

      const shortDesc = (
        row['Short Description / Indications'] ||
        row['Short Description'] ||
        row['Indications'] ||
        row['Indication Summary'] ||
        row['Key Benefits'] ||
        row['Benefits'] ||
        row['short_description'] ||
        ''
      ).toString().trim();

      const fullDesc = (
        row['Detailed Monograph'] ||
        row['Full Description'] ||
        row['Description'] ||
        row['Monograph'] ||
        row['full_description'] ||
        ''
      ).toString().trim();

      const dosage = (
        row['Dosage Guidance'] ||
        row['Dosage'] ||
        row['Administration'] ||
        row['dosage'] ||
        ''
      ).toString().trim();

      const explicitImage = (
        row['Image File Name'] ||
        row['Image'] ||
        row['Packshot'] ||
        row['Photo'] ||
        row['image'] ||
        ''
      ).toString().trim();

      // Resolve Packshot Image
      let packshotUrl = null;

      // 1. Check explicit image column against ZIP
      if (explicitImage) {
        const cleanExplicit = explicitImage.toLowerCase().trim();
        packshotUrl =
          imageMap.get(cleanExplicit) ||
          imageMap.get(path.basename(cleanExplicit, path.extname(cleanExplicit))) ||
          imageMap.get(normalizeSlug(cleanExplicit)) ||
          imageMap.get(normalizeKey(cleanExplicit));

        // If explicit was already a full path like /assets/products/xyz.png or http
        if (!packshotUrl && (cleanExplicit.startsWith('/') || cleanExplicit.startsWith('http'))) {
          packshotUrl = explicitImage;
        }
      }

      // 2. Check brand slug against ZIP
      if (!packshotUrl) {
        packshotUrl =
          imageMap.get(slug) ||
          imageMap.get(`${slug}.png`) ||
          imageMap.get(`${slug}.jpg`) ||
          imageMap.get(`${slug}.jpeg`) ||
          imageMap.get(normalizeKey(brand));
      }

      // 3. Check existing files in public/assets/products or uploads
      if (!packshotUrl) {
        const candidateExtensions = ['.png', '.jpg', '.jpeg', '.webp'];
        const searchDirs = [
          path.resolve(__dirname, '..', '..', 'public', 'assets', 'products'),
          primaryUploadDir,
        ];

        for (const dir of searchDirs) {
          for (const ext of candidateExtensions) {
            const checkFile = path.join(dir, `${slug}${ext}`);
            if (fs.existsSync(checkFile)) {
              packshotUrl = dir.includes('public')
                ? `/assets/products/${slug}${ext}`
                : `/uploads/${slug}${ext}`;
              break;
            }
          }
          if (packshotUrl) break;
        }
      }

      // Multi-Category Aggregation
      if (aggregatedProducts.has(slug)) {
        const existing = aggregatedProducts.get(slug);
        if (!existing.therapeutic_area_ids.includes(areaInfo.id)) {
          existing.therapeutic_area_ids.push(areaInfo.id);
          existing.categories.push(areaInfo.slug);
          existing.specialty_sheets.push(rawSheetName);
        }
        // Fill in missing descriptions if earlier sheet didn't have them
        if (!existing.composition && composition) existing.composition = composition;
        if (!existing.short_description && shortDesc) existing.short_description = shortDesc;
        if (!existing.full_description && fullDesc) existing.full_description = fullDesc;
        if (!existing.dosage && dosage) existing.dosage = dosage;
        if (!existing.packshot_url && packshotUrl) existing.packshot_url = packshotUrl;
      } else {
        aggregatedProducts.set(slug, {
          brand_name: brand,
          slug,
          primary_therapeutic_area_id: areaInfo.id,
          therapeutic_area_ids: [areaInfo.id],
          categories: [areaInfo.slug],
          specialty_sheets: [rawSheetName],
          composition,
          pack_size: packSize,
          short_description: shortDesc,
          full_description: fullDesc,
          dosage,
          packshot_url: packshotUrl || null,
        });
      }
    }
  }

  if (aggregatedProducts.size === 0) {
    throw new Error('No valid products found in the uploaded workbook. Please check sheet names and headers.');
  }

  // Step 3: Database Synchronization
  if (mode === 'replace') {
    // Clean wipe for full replacement
    await query('TRUNCATE TABLE product_compositions');
    await query('TRUNCATE TABLE product_benefits');
    await query('TRUNCATE TABLE product_dosage');
    await query('TRUNCATE TABLE product_mechanisms');
    await query('TRUNCATE TABLE product_safety_sections');
    await query('TRUNCATE TABLE product_images');
    await query('TRUNCATE TABLE product_therapeutic_areas');
    await query('DELETE FROM products');
  }

  let createdCount = 0;
  let updatedCount = 0;
  let multiSpecialtyCount = 0;
  let imageLinkedCount = 0;
  const missingImagesList = [];

  let orderIndex = 1;

  for (const [slug, item] of aggregatedProducts) {
    if (item.therapeutic_area_ids.length > 1) {
      multiSpecialtyCount++;
    }

    if (item.packshot_url) {
      imageLinkedCount++;
    } else {
      missingImagesList.push({
        brand_name: item.brand_name,
        slug: item.slug,
        sheets: item.specialty_sheets.join(', '),
      });
    }

    // Check if product already exists in database
    const existingRows = await query('SELECT id FROM products WHERE slug = ? LIMIT 1', [slug]);

    let productId;

    if (existingRows && existingRows.length > 0) {
      productId = existingRows[0].id;
      updatedCount++;

      // Update existing record
      await query(
        `UPDATE products SET
           brand_name = ?,
           therapeutic_area_id = ?,
           short_description = COALESCE(NULLIF(?, ''), short_description),
           full_description = COALESCE(NULLIF(?, ''), full_description),
           packshot_url = COALESCE(?, packshot_url),
           status = 'published',
           updated_at = NOW()
         WHERE id = ?`,
        [
          item.brand_name,
          item.primary_therapeutic_area_id,
          item.short_description,
          item.full_description,
          item.packshot_url,
          productId,
        ]
      );
    } else {
      createdCount++;
      // Insert new product
      const insertResult = await query(
        `INSERT INTO products (
           therapeutic_area_id, brand_name, slug, short_description, full_description,
           packshot_url, status, display_order, seo_title, seo_description
         )
         VALUES (?, ?, ?, ?, ?, ?, 'published', ?, ?, ?)`,
        [
          item.primary_therapeutic_area_id,
          item.brand_name,
          slug,
          item.short_description || item.composition,
          item.full_description || item.short_description,
          item.packshot_url,
          orderIndex++,
          `${item.brand_name} | Onecore Pharma`,
          item.short_description || `${item.brand_name} clinical formulation`,
        ]
      );
      productId = insertResult.insertId;
    }

    // Update product_therapeutic_areas junction table
    await query('DELETE FROM product_therapeutic_areas WHERE product_id = ?', [productId]);
    for (const tid of item.therapeutic_area_ids) {
      await query(
        `INSERT INTO product_therapeutic_areas (product_id, therapeutic_area_id, display_order)
         VALUES (?, ?, ?)
         ON DUPLICATE KEY UPDATE display_order = VALUES(display_order)`,
        [productId, tid, orderIndex]
      );
    }

    // Composition
    if (item.composition) {
      await query('DELETE FROM product_compositions WHERE product_id = ?', [productId]);
      await query(
        `INSERT INTO product_compositions (product_id, ingredient_name, strength, display_order)
         VALUES (?, ?, '', 1)`,
        [productId, item.composition]
      );
    }

    // Dosage
    if (item.dosage) {
      await query('DELETE FROM product_dosage WHERE product_id = ?', [productId]);
      await query(
        `INSERT INTO product_dosage (product_id, heading, description)
         VALUES (?, 'Dosage Guidance', ?)`,
        [productId, item.dosage]
      );
    }

    // Benefits / Indications
    if (item.short_description) {
      await query('DELETE FROM product_benefits WHERE product_id = ?', [productId]);
      await query(
        `INSERT INTO product_benefits (product_id, title, description, display_order)
         VALUES (?, 'Primary Indication', ?, 1)`,
        [productId, item.short_description]
      );
    }

    // Gallery Image if packshot exists
    if (item.packshot_url) {
      await query('DELETE FROM product_images WHERE product_id = ?', [productId]);
      await query(
        `INSERT INTO product_images (product_id, image_url, alt_text, is_primary, display_order)
         VALUES (?, ?, ?, 1, 1)`,
        [productId, item.packshot_url, item.brand_name]
      );
    }
  }

  // Calculate total division listings
  let totalListings = 0;
  for (const item of aggregatedProducts.values()) {
    totalListings += item.therapeutic_area_ids.length;
  }

  return {
    success: true,
    totalUniqueProducts: aggregatedProducts.size,
    totalDivisionListings: totalListings,
    createdCount,
    updatedCount,
    multiSpecialtyCount,
    imageLinkedCount,
    missingImagesCount: missingImagesList.length,
    missingImages: missingImagesList,
  };
}
