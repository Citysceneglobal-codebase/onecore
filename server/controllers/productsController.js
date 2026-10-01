import { query } from '../config/db.js';

export const getProducts = async (req, res, next) => {
  try {
    const isPublic = !req.user;
    let sql = `
      SELECT p.*, ta.name as therapeutic_area_name, ta.slug as therapeutic_area_slug
      FROM products p
      LEFT JOIN therapeutic_areas ta ON p.therapeutic_area_id = ta.id
    `;
    if (isPublic) {
      sql += " WHERE p.status = 'published'";
    }
    sql += ' ORDER BY p.display_order ASC, p.id ASC';

    const products = await query(sql);

    return res.status(200).json({
      success: true,
      data: products,
    });
  } catch (error) {
    next(error);
  }
};

export const getProductByIdOrSlug = async (req, res, next) => {
  try {
    const { identifier } = req.params;
    const products = await query(
      `SELECT p.*, ta.name as therapeutic_area_name, ta.slug as therapeutic_area_slug
       FROM products p
       LEFT JOIN therapeutic_areas ta ON p.therapeutic_area_id = ta.id
       WHERE p.id = ? OR p.slug = ?`,
      [identifier, identifier]
    );

    if (!products || products.length === 0) {
      return res.status(404).json({ success: false, message: 'Product not found.' });
    }

    const product = products[0];

    // Compositions
    product.compositions = await query(
      'SELECT * FROM product_compositions WHERE product_id = ? ORDER BY display_order ASC, id ASC',
      [product.id]
    );

    // Benefits
    product.benefits = await query(
      'SELECT * FROM product_benefits WHERE product_id = ? ORDER BY display_order ASC, id ASC',
      [product.id]
    );

    // Dosage
    const dosage = await query('SELECT * FROM product_dosage WHERE product_id = ?', [product.id]);
    product.dosage = dosage[0] || null;

    // Mechanisms
    product.mechanisms = await query(
      'SELECT * FROM product_mechanisms WHERE product_id = ? ORDER BY display_order ASC, id ASC',
      [product.id]
    );

    // Safety
    product.safetySections = await query(
      'SELECT * FROM product_safety_sections WHERE product_id = ? ORDER BY display_order ASC, id ASC',
      [product.id]
    );

    // Gallery Images (Multiple Photos)
    product.images = await query(
      'SELECT * FROM product_images WHERE product_id = ? ORDER BY is_primary DESC, display_order ASC, id ASC',
      [product.id]
    );

    return res.status(200).json({
      success: true,
      data: product,
    });
  } catch (error) {
    next(error);
  }
};

export const createProduct = async (req, res, next) => {
  try {
    const {
      therapeutic_area_id,
      brand_name,
      slug,
      short_description,
      full_description,
      packshot_url,
      status,
      display_order,
      seo_title,
      seo_description,
      compositions,
      benefits,
      dosage,
      mechanisms,
      safetySections,
      images,
    } = req.body;

    if (!brand_name || !brand_name.trim()) {
      return res.status(400).json({ success: false, message: 'Brand name is required.' });
    }

    const productSlug = slug ? slug.trim().toLowerCase().replace(/\s+/g, '-') : brand_name.trim().toLowerCase().replace(/\s+/g, '-');

    let order = display_order;
    if (order === undefined) {
      const [maxOrder] = await query('SELECT MAX(display_order) as max_order FROM products');
      order = (maxOrder?.max_order || 0) + 1;
    }

    const result = await query(`
      INSERT INTO products (therapeutic_area_id, brand_name, slug, short_description, full_description, packshot_url, status, display_order, seo_title, seo_description)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `, [
      therapeutic_area_id || 1,
      brand_name.trim(),
      productSlug,
      short_description || '',
      full_description || '',
      packshot_url || null,
      status || 'published',
      order,
      seo_title || null,
      seo_description || null
    ]);

    const productId = result.insertId;

    // Save nested details
    await saveNestedProductDetails(productId, { compositions, benefits, dosage, mechanisms, safetySections, images });

    return res.status(201).json({
      success: true,
      message: 'Product created successfully.',
      data: { id: productId }
    });
  } catch (error) {
    next(error);
  }
};

export const updateProduct = async (req, res, next) => {
  try {
    const { id } = req.params;
    const {
      therapeutic_area_id,
      brand_name,
      slug,
      short_description,
      full_description,
      status,
      display_order,
      packshot_url,
      seo_title,
      seo_description,
      compositions,
      benefits,
      dosage,
      mechanisms,
      safetySections,
      images
    } = req.body;

    const updates = [];
    const params = [];

    if (therapeutic_area_id !== undefined) { updates.push('therapeutic_area_id = ?'); params.push(therapeutic_area_id); }
    if (brand_name !== undefined) { updates.push('brand_name = ?'); params.push(brand_name.trim()); }
    if (slug !== undefined) { updates.push('slug = ?'); params.push(slug.trim().toLowerCase().replace(/\s+/g, '-')); }
    if (short_description !== undefined) { updates.push('short_description = ?'); params.push(short_description); }
    if (full_description !== undefined) { updates.push('full_description = ?'); params.push(full_description); }
    if (status !== undefined) { updates.push('status = ?'); params.push(status); }
    if (display_order !== undefined) { updates.push('display_order = ?'); params.push(display_order); }
    if (packshot_url !== undefined) { updates.push('packshot_url = ?'); params.push(packshot_url); }
    if (seo_title !== undefined) { updates.push('seo_title = ?'); params.push(seo_title); }
    if (seo_description !== undefined) { updates.push('seo_description = ?'); params.push(seo_description); }

    if (updates.length > 0) {
      params.push(id);
      await query(`UPDATE products SET ${updates.join(', ')} WHERE id = ?`, params);
    }

    // Update nested details if present in payload
    await saveNestedProductDetails(id, { compositions, benefits, dosage, mechanisms, safetySections, images });

    return res.status(200).json({
      success: true,
      message: 'Product updated successfully.',
    });
  } catch (error) {
    next(error);
  }
};

export const deleteProduct = async (req, res, next) => {
  try {
    const { id } = req.params;
    await query('DELETE FROM product_compositions WHERE product_id = ?', [id]);
    await query('DELETE FROM product_benefits WHERE product_id = ?', [id]);
    await query('DELETE FROM product_dosage WHERE product_id = ?', [id]);
    await query('DELETE FROM product_mechanisms WHERE product_id = ?', [id]);
    await query('DELETE FROM product_safety_sections WHERE product_id = ?', [id]);
    await query('DELETE FROM product_images WHERE product_id = ?', [id]);
    await query('DELETE FROM products WHERE id = ?', [id]);

    return res.status(200).json({
      success: true,
      message: 'Product deleted successfully.',
    });
  } catch (error) {
    next(error);
  }
};

export const reorderProducts = async (req, res, next) => {
  try {
    const { orderedIds } = req.body;
    if (!Array.isArray(orderedIds)) {
      return res.status(400).json({ success: false, message: 'orderedIds must be an array of IDs.' });
    }

    for (let index = 0; index < orderedIds.length; index++) {
      await query('UPDATE products SET display_order = ? WHERE id = ?', [index + 1, orderedIds[index]]);
    }

    return res.status(200).json({
      success: true,
      message: 'Products reordered successfully.',
    });
  } catch (error) {
    next(error);
  }
};

async function saveNestedProductDetails(productId, { compositions, benefits, dosage, mechanisms, safetySections, images }) {
  // Compositions
  if (compositions !== undefined && Array.isArray(compositions)) {
    await query('DELETE FROM product_compositions WHERE product_id = ?', [productId]);
    for (let i = 0; i < compositions.length; i++) {
      const item = compositions[i];
      if (item.ingredient_name && item.ingredient_name.trim()) {
        await query(`
          INSERT INTO product_compositions (product_id, ingredient_name, ingredient_description, strength, display_order)
          VALUES (?, ?, ?, ?, ?)
        `, [productId, item.ingredient_name.trim(), item.ingredient_description || null, item.strength || '', i + 1]);
      }
    }
  }

  // Benefits
  if (benefits !== undefined && Array.isArray(benefits)) {
    await query('DELETE FROM product_benefits WHERE product_id = ?', [productId]);
    for (let i = 0; i < benefits.length; i++) {
      const item = benefits[i];
      if (item.title && item.title.trim()) {
        await query(`
          INSERT INTO product_benefits (product_id, title, description, display_order)
          VALUES (?, ?, ?, ?)
        `, [productId, item.title.trim(), item.description || '', i + 1]);
      }
    }
  }

  // Dosage
  if (dosage !== undefined) {
    await query('DELETE FROM product_dosage WHERE product_id = ?', [productId]);
    if (dosage && (dosage.heading || dosage.description)) {
      await query(`
        INSERT INTO product_dosage (product_id, heading, description)
        VALUES (?, ?, ?)
      `, [productId, dosage.heading || 'How it should be taken.', dosage.description || '']);
    }
  }

  // Mechanisms
  if (mechanisms !== undefined && Array.isArray(mechanisms)) {
    await query('DELETE FROM product_mechanisms WHERE product_id = ?', [productId]);
    for (let i = 0; i < mechanisms.length; i++) {
      const item = mechanisms[i];
      if (item.title && item.title.trim()) {
        await query(`
          INSERT INTO product_mechanisms (product_id, title, description, display_order)
          VALUES (?, ?, ?, ?)
        `, [productId, item.title.trim(), item.description || '', i + 1]);
      }
    }
  }

  // Safety Sections
  if (safetySections !== undefined && Array.isArray(safetySections)) {
    await query('DELETE FROM product_safety_sections WHERE product_id = ?', [productId]);
    for (let i = 0; i < safetySections.length; i++) {
      const item = safetySections[i];
      if (item.title && item.title.trim()) {
        await query(`
          INSERT INTO product_safety_sections (product_id, section_key, title, description, display_order)
          VALUES (?, ?, ?, ?, ?)
        `, [productId, item.section_key || `safety_${i + 1}`, item.title.trim(), item.description || '', i + 1]);
      }
    }
  }

  // Multiple Product Photos / Gallery Images
  if (images !== undefined && Array.isArray(images)) {
    await query('DELETE FROM product_images WHERE product_id = ?', [productId]);
    for (let i = 0; i < images.length; i++) {
      const item = images[i];
      const imgUrl = typeof item === 'string' ? item : item.image_url;
      if (imgUrl && imgUrl.trim()) {
        const isPrimary = (typeof item === 'object' && item.is_primary) ? 1 : (i === 0 ? 1 : 0);
        const altText = (typeof item === 'object' && item.alt_text) ? item.alt_text : null;
        await query(`
          INSERT INTO product_images (product_id, image_url, alt_text, is_primary, display_order)
          VALUES (?, ?, ?, ?, ?)
        `, [productId, imgUrl.trim(), altText, isPrimary, i + 1]);
      }
    }

    // Synchronize primary photo back into products.packshot_url
    const primaryImages = await query(
      'SELECT image_url FROM product_images WHERE product_id = ? ORDER BY is_primary DESC, display_order ASC LIMIT 1',
      [productId]
    );
    if (primaryImages.length > 0 && primaryImages[0].image_url) {
      await query('UPDATE products SET packshot_url = ? WHERE id = ?', [primaryImages[0].image_url, productId]);
    }
  }
}

export const addProductImage = async (req, res, next) => {
  try {
    const { id } = req.params;
    const { image_url, alt_text, is_primary } = req.body;

    if (!image_url || !image_url.trim()) {
      return res.status(400).json({ success: false, message: 'image_url is required.' });
    }

    const [maxOrder] = await query(
      'SELECT MAX(display_order) as max_order FROM product_images WHERE product_id = ?',
      [id]
    );
    const order = (maxOrder?.max_order || 0) + 1;

    if (is_primary) {
      await query('UPDATE product_images SET is_primary = 0 WHERE product_id = ?', [id]);
    }

    const result = await query(
      `INSERT INTO product_images (product_id, image_url, alt_text, is_primary, display_order)
       VALUES (?, ?, ?, ?, ?)`,
      [id, image_url.trim(), alt_text || null, is_primary ? 1 : 0, order]
    );

    if (is_primary) {
      await query('UPDATE products SET packshot_url = ? WHERE id = ?', [image_url.trim(), id]);
    }

    const [newImg] = await query('SELECT * FROM product_images WHERE id = ?', [result.insertId]);

    return res.status(201).json({
      success: true,
      message: 'Product image added successfully.',
      data: newImg,
    });
  } catch (error) {
    next(error);
  }
};

export const deleteProductImage = async (req, res, next) => {
  try {
    const { id, imageId } = req.params;
    const [img] = await query('SELECT * FROM product_images WHERE id = ? AND product_id = ?', [imageId, id]);
    if (!img) {
      return res.status(404).json({ success: false, message: 'Image not found.' });
    }

    await query('DELETE FROM product_images WHERE id = ? AND product_id = ?', [imageId, id]);

    // If deleted image was primary, select the next available image as primary
    if (img.is_primary) {
      const [nextImg] = await query(
        'SELECT * FROM product_images WHERE product_id = ? ORDER BY display_order ASC LIMIT 1',
        [id]
      );
      if (nextImg) {
        await query('UPDATE product_images SET is_primary = 1 WHERE id = ?', [nextImg.id]);
        await query('UPDATE products SET packshot_url = ? WHERE id = ?', [nextImg.image_url, id]);
      } else {
        await query('UPDATE products SET packshot_url = NULL WHERE id = ?', [id]);
      }
    }

    return res.status(200).json({
      success: true,
      message: 'Product image deleted successfully.',
    });
  } catch (error) {
    next(error);
  }
};

export const setPrimaryProductImage = async (req, res, next) => {
  try {
    const { id, imageId } = req.params;
    const [img] = await query('SELECT * FROM product_images WHERE id = ? AND product_id = ?', [imageId, id]);
    if (!img) {
      return res.status(404).json({ success: false, message: 'Image not found.' });
    }

    await query('UPDATE product_images SET is_primary = 0 WHERE product_id = ?', [id]);
    await query('UPDATE product_images SET is_primary = 1 WHERE id = ?', [imageId]);
    await query('UPDATE products SET packshot_url = ? WHERE id = ?', [img.image_url, id]);

    return res.status(200).json({
      success: true,
      message: 'Primary product image updated successfully.',
      data: { packshot_url: img.image_url },
    });
  } catch (error) {
    next(error);
  }
};
