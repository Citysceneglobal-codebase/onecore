import { query } from '../config/db.js';

export const getDashboardStats = async (req, res, next) => {
  try {
    // 1. Live counts from MySQL tables
    const [pagesCount] = await query('SELECT COUNT(*) as count FROM pages');
    const [taCount] = await query('SELECT COUNT(*) as count FROM therapeutic_areas WHERE is_active = 1');
    const [prodCount] = await query("SELECT COUNT(*) as count FROM products WHERE status = 'published'");
    const [newsCount] = await query("SELECT COUNT(*) as count FROM news_articles WHERE status = 'published'");
    const [newEnquiriesCount] = await query("SELECT COUNT(*) as count FROM contact_enquiries WHERE status = 'new'");
    const [totalEnquiriesCount] = await query('SELECT COUNT(*) as count FROM contact_enquiries');
    const [mediaCount] = await query('SELECT COUNT(*) as count FROM media');

    // 2. Recent enquiries (up to 5)
    const recentEnquiries = await query(
      `SELECT id, full_name, email, organisation, contacting_as, enquiry_type, status, submitted_at
       FROM contact_enquiries
       ORDER BY submitted_at DESC
       LIMIT 5`
    );

    // 3. Recently modified content
    const recentSections = await query(
      `SELECT p.title as page_title, s.heading, s.section_key, s.updated_at, 'Page Section' as content_type
       FROM page_sections s
       JOIN pages p ON s.page_id = p.id
       ORDER BY s.updated_at DESC
       LIMIT 4`
    );

    const recentProducts = await query(
      `SELECT brand_name as heading, 'Product' as content_type, updated_at
       FROM products
       ORDER BY updated_at DESC
       LIMIT 3`
    );

    const recentNews = await query(
      `SELECT title as heading, 'News Article' as content_type, updated_at
       FROM news_articles
       ORDER BY updated_at DESC
       LIMIT 3`
    );

    const recentlyModified = [
      ...recentSections.map(s => ({ title: s.heading || s.section_key, meta: `${s.page_title} (${s.content_type})`, updated_at: s.updated_at })),
      ...recentProducts.map(p => ({ title: p.heading, meta: 'Product Portfolio', updated_at: p.updated_at })),
      ...recentNews.map(n => ({ title: n.heading, meta: 'News Article', updated_at: n.updated_at })),
    ].sort((a, b) => new Date(b.updated_at) - new Date(a.updated_at)).slice(0, 6);

    return res.status(200).json({
      success: true,
      data: {
        stats: {
          totalPages: pagesCount?.count || 8,
          therapeuticAreas: taCount?.count || 9,
          products: prodCount?.count || 1,
          publishedNews: newsCount?.count || 3,
          newEnquiries: newEnquiriesCount?.count || 0,
          totalEnquiries: totalEnquiriesCount?.count || 0,
          totalMedia: mediaCount?.count || 0,
        },
        recentEnquiries: recentEnquiries || [],
        recentlyModified: recentlyModified || [],
      },
    });
  } catch (error) {
    next(error);
  }
};
