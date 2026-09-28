import { useState, useEffect } from 'react';
import { pagesContent } from '../data/pagesContent';

/**
 * Hook to load page content and sections from MySQL database via Express API,
 * with immediate zero-flicker static fallback.
 */
export function useCmsPage(pageKey, fallbackData = {}) {
  const staticPage = pagesContent[pageKey] || fallbackData;
  const [page, setPage] = useState(staticPage);
  const [sections, setSections] = useState(() => {
    return staticPage?.sections || {};
  });
  const [sectionsList, setSectionsList] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let isMounted = true;
    const initialPage = pagesContent[pageKey] || fallbackData;
    setPage(initialPage);
    setSections(initialPage?.sections || {});

    const fetchPageFromApi = async () => {
      try {
        const res = await fetch(`/api/pages/${pageKey}`);
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const result = await res.json();

        if (isMounted && result.success && result.data) {
          const apiPage = result.data;
          setPage(apiPage);

          if (Array.isArray(apiPage.sections)) {
            setSectionsList(apiPage.sections);
            const mapped = {};
            apiPage.sections.forEach((sec) => {
              let parsedItems = [];
              if (sec.items_json) {
                try {
                  parsedItems = typeof sec.items_json === 'string' ? JSON.parse(sec.items_json) : sec.items_json;
                } catch {
                  parsedItems = [];
                }
              }

              const normalizedSec = {
                ...sec,
                id: sec.id,
                section_key: sec.section_key,
                section_type: sec.section_type,
                title: sec.heading || '',
                heading: sec.heading || '',
                subtitle: sec.subheading || '',
                subheading: sec.subheading || '',
                eyebrow: sec.eyebrow || '',
                body: sec.body || '',
                image_url: sec.image_url || '',
                poster_url: sec.image_url || '',
                video_url: sec.video_url || '',
                cta_text: sec.cta_text || '',
                cta_url: sec.cta_url || '',
                secondary_cta_text: sec.secondary_cta_text || '',
                secondary_cta_url: sec.secondary_cta_url || '',
                is_active: sec.is_active === 1 || sec.is_active === true,
                items: parsedItems && parsedItems.length > 0 ? parsedItems : undefined,
              };

              mapped[sec.section_key] = normalizedSec;
              // Also map hyphenated / underscored variants
              mapped[sec.section_key.replace(/_/g, '-')] = normalizedSec;
              mapped[sec.section_key.replace(/-/g, '_')] = normalizedSec;
            });
            setSections(mapped);
          }

          // Update SEO Meta
          if (apiPage.seo_title) {
            document.title = apiPage.seo_title;
          }
          if (apiPage.seo_description) {
            const metaDesc = document.querySelector('meta[name="description"]');
            if (metaDesc) {
              metaDesc.setAttribute('content', apiPage.seo_description);
            }
          }
        }
      } catch {
        // Graceful fallback to static data
        if (isMounted) {
          if (initialPage?.seo_title) document.title = initialPage.seo_title;
        }
      } finally {
        if (isMounted) setLoading(false);
      }
    };

    fetchPageFromApi();

    return () => {
      isMounted = false;
    };
  }, [pageKey]);

  /**
   * Helper to retrieve a section's fields with fallback
   */
  const getSection = (key, fallback = {}) => {
    const normKey1 = key;
    const normKey2 = key.replace(/_/g, '-');
    const normKey3 = key.replace(/-/g, '_');
    const sec = sections[normKey1] || sections[normKey2] || sections[normKey3];

    const fallbackTitle = fallback.title || fallback.heading || '';
    const fallbackSubtitle = fallback.subtitle || fallback.subheading || '';

    if (!sec) {
      return {
        ...fallback,
        title: fallbackTitle,
        heading: fallbackTitle,
        subtitle: fallbackSubtitle,
        subheading: fallbackSubtitle,
        eyebrow: fallback.eyebrow || '',
        body: fallback.body || '',
        image_url: fallback.image_url || '',
        poster_url: fallback.poster_url || fallback.image_url || '',
        video_url: fallback.video_url || '',
        cta_text: fallback.cta_text || '',
        cta_url: fallback.cta_url || '',
        secondary_cta_text: fallback.secondary_cta_text || '',
        secondary_cta_url: fallback.secondary_cta_url || '',
        is_active: fallback.is_active !== false,
        items: fallback.items || [],
      };
    }

    const titleVal = sec.heading || sec.title || fallbackTitle;
    const subVal = sec.subheading || sec.subtitle || fallbackSubtitle;

    return {
      ...fallback,
      ...sec,
      id: sec.id || key,
      section_key: key,
      title: titleVal,
      heading: titleVal,
      subtitle: subVal,
      subheading: subVal,
      eyebrow: sec.eyebrow !== undefined && sec.eyebrow !== null ? sec.eyebrow : fallback.eyebrow || '',
      body: sec.body !== undefined && sec.body !== null ? sec.body : fallback.body || '',
      image_url: sec.image_url || fallback.image_url || '',
      poster_url: sec.poster_url || sec.image_url || fallback.poster_url || fallback.image_url || '',
      video_url: sec.video_url || fallback.video_url || '',
      cta_text: sec.cta_text !== undefined && sec.cta_text !== null ? sec.cta_text : fallback.cta_text || '',
      cta_url: sec.cta_url !== undefined && sec.cta_url !== null ? sec.cta_url : fallback.cta_url || '',
      secondary_cta_text: sec.secondary_cta_text !== undefined && sec.secondary_cta_text !== null ? sec.secondary_cta_text : fallback.secondary_cta_text || '',
      secondary_cta_url: sec.secondary_cta_url !== undefined && sec.secondary_cta_url !== null ? sec.secondary_cta_url : fallback.secondary_cta_url || '',
      is_active: sec.is_active !== false,
      items: sec.items && sec.items.length > 0 ? sec.items : fallback.items || [],
    };
  };

  return {
    page,
    sections,
    sectionsList,
    getSection,
    loading,
  };
}
