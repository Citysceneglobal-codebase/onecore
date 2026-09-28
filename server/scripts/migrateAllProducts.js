import mysql from 'mysql2/promise';
import path from 'path';
import dotenv from 'dotenv';
import { fileURLToPath } from 'url';

// Import product datasets
import { femmeProducts } from '../../src/data/femmeProducts.js';
import { pediatricsProducts } from '../../src/data/pediatricsProducts.js';
import { orthopaedicsProducts } from '../../src/data/orthopaedicsProducts.js';
import { neurologyProducts } from '../../src/data/neurologyProducts.js';
import { ophthalmologyProducts } from '../../src/data/ophthalmologyProducts.js';
import { dermatologyProducts } from '../../src/data/dermatologyProducts.js';
import { entProducts } from '../../src/data/entProducts.js';
import { generalMedicineProducts } from '../../src/data/generalMedicineProducts.js';
import { oncologyProducts } from '../../src/data/oncologyProducts.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

dotenv.config({ path: path.join(__dirname, '..', '.env') });

const dbConfig = {
  host: process.env.DB_HOST || 'localhost',
  port: parseInt(process.env.DB_PORT || '3306', 10),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'onecore_pharma',
};

const categoryToAreaId = {
  'womens-health': 1,
  'paediatrics': 2,
  'pediatrics': 2,
  'orthopaedics': 3,
  'neurology': 4,
  'ophthalmology': 5,
  'dermatology': 6,
  'ent': 7,
  'general-medicine': 8,
  'oncology': 9,
};

const datasets = [
  { areaId: 1, items: femmeProducts, areaSlug: 'womens-health' },
  { areaId: 2, items: pediatricsProducts, areaSlug: 'paediatrics' },
  { areaId: 3, items: orthopaedicsProducts, areaSlug: 'orthopaedics' },
  { areaId: 4, items: neurologyProducts, areaSlug: 'neurology' },
  { areaId: 5, items: ophthalmologyProducts, areaSlug: 'ophthalmology' },
  { areaId: 6, items: dermatologyProducts, areaSlug: 'dermatology' },
  { areaId: 7, items: entProducts, areaSlug: 'ent' },
  { areaId: 8, items: generalMedicineProducts, areaSlug: 'general-medicine' },
  { areaId: 9, items: oncologyProducts, areaSlug: 'oncology' },
];

async function migrateProducts() {
  console.log('🚀 Starting Full Product Catalog Migration into MySQL...');
  let connection;

  try {
    connection = await mysql.createConnection(dbConfig);
    console.log('✅ Connected to database:', dbConfig.database);

    let totalMigrated = 0;

    for (const group of datasets) {
      let order = 1;
      for (const item of group.items) {
        const brandName = item.name || item.brand_name || 'Unnamed Product';
        const slug = item.slug;
        const shortDesc = (item.description || item.usedFor || '').slice(0, 250);
        const fullDesc = item.description || '';
        const packshotUrl = item.image || item.packshot_url || `/assets/products/${slug}.png`;
        const seoTitle = `${brandName} — Formulation & Indication | Onecore Pharma`;
        const seoDesc = shortDesc;

        // 1. Insert or update product
        await connection.query(`
          INSERT INTO products (therapeutic_area_id, brand_name, slug, short_description, full_description, packshot_url, status, display_order, seo_title, seo_description)
          VALUES (?, ?, ?, ?, ?, ?, 'published', ?, ?, ?)
          ON DUPLICATE KEY UPDATE
            therapeutic_area_id = VALUES(therapeutic_area_id),
            brand_name = VALUES(brand_name),
            short_description = VALUES(short_description),
            full_description = VALUES(full_description),
            packshot_url = VALUES(packshot_url),
            status = 'published',
            display_order = VALUES(display_order),
            seo_title = VALUES(seo_title),
            seo_description = VALUES(seo_description)
        `, [
          group.areaId,
          brandName,
          slug,
          shortDesc,
          fullDesc,
          packshotUrl,
          order,
          seoTitle,
          seoDesc,
        ]);

        // Get Product ID
        const [rows] = await connection.query('SELECT id FROM products WHERE slug = ?', [slug]);
        const productId = rows[0]?.id;

        if (productId) {
          // Clear and recreate child relation tables for clean deterministic state
          await connection.query('DELETE FROM product_compositions WHERE product_id = ?', [productId]);
          await connection.query('DELETE FROM product_benefits WHERE product_id = ?', [productId]);
          await connection.query('DELETE FROM product_mechanisms WHERE product_id = ?', [productId]);
          await connection.query('DELETE FROM product_safety_sections WHERE product_id = ?', [productId]);
          await connection.query('DELETE FROM product_dosage WHERE product_id = ?', [productId]);

          // 2. Composition
          if (item.composition) {
            const ingredients = item.composition.split('+').map((s) => s.trim());
            let compOrder = 1;
            for (const ing of ingredients) {
              await connection.query(`
                INSERT INTO product_compositions (product_id, ingredient_name, strength, display_order)
                VALUES (?, ?, ?, ?)
              `, [productId, ing, '', compOrder++]);
            }
          }

          // 3. Benefits / Indications
          if (item.usedFor) {
            await connection.query(`
              INSERT INTO product_benefits (product_id, title, description, display_order)
              VALUES (?, ?, ?, ?)
            `, [productId, 'Clinical Role & Indications', item.usedFor, 1]);
          }

          // 4. Mechanism
          if (item.mechanism) {
            await connection.query(`
              INSERT INTO product_mechanisms (product_id, title, description, display_order)
              VALUES (?, ?, ?, ?)
            `, [productId, 'Mechanism of Action', item.mechanism, 1]);
          }

          // 5. Dosage & Direction
          if (item.direction) {
            await connection.query(`
              INSERT INTO product_dosage (product_id, heading, description)
              VALUES (?, ?, ?)
            `, [productId, 'Administration & Usage Guidance', item.direction]);
          }

          // 6. Safety & Precautions
          if (Array.isArray(item.precautions) && item.precautions.length > 0) {
            let pOrder = 1;
            for (const prec of item.precautions) {
              await connection.query(`
                INSERT INTO product_safety_sections (product_id, section_key, title, description, display_order)
                VALUES (?, ?, ?, ?, ?)
              `, [productId, `precaution_${pOrder}`, 'Precaution', prec, pOrder]);
              pOrder++;
            }
          }
        }

        order++;
        totalMigrated++;
      }
    }

    console.log(`🎉 Successfully migrated ${totalMigrated} products into MySQL!`);
  } catch (err) {
    console.error('❌ Error during product migration:', err);
  } finally {
    if (connection) await connection.end();
  }
}

migrateProducts();
