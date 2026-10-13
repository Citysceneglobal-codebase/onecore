import { useState, useEffect } from 'react';
import { areasOfCare as fallbackAreas } from '../data/areasOfCare';

export function useTherapeuticAreas() {
  const [areas, setAreas] = useState(fallbackAreas);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let isMounted = true;

    const fetchAreas = async () => {
      try {
        const res = await fetch('/api/therapeutic-areas');
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const result = await res.json();

        if (isMounted && result.success && Array.isArray(result.data) && result.data.length > 0) {
          // Normalize items with fallback fields
          const merged = result.data.map((area, idx) => {
            const fallback = fallbackAreas.find(
              (f) => f.slug === area.slug || f.id === area.id || f.title?.toLowerCase() === area.name?.toLowerCase() || f.divisionName?.toLowerCase() === area.name?.toLowerCase()
            ) || fallbackAreas[idx] || {};

            return {
              ...fallback,
              ...area,
              id: fallback.id || area.slug || area.id,
              divisionName: fallback.divisionName || area.name,
              therapeuticArea: fallback.therapeuticArea || area.heading,
              num: area.number_label || fallback.num || String(idx + 1).padStart(2, '0'),
              title: fallback.title || area.name,
              name: fallback.title || area.name,
              slug: fallback.slug || area.slug,
              focusTitle: area.heading || area.focus_title || fallback.focusTitle || fallback.heading,
              heading: area.heading || fallback.focusTitle || fallback.heading,
              description: area.description || fallback.description,
              image: area.image_url || fallback.image,
              image_url: area.image_url || fallback.image,
              tags: area.tags && area.tags.length > 0 ? area.tags : fallback.tags || [],
              sampleProducts: fallback.sampleProducts || [],
              route: fallback.route || `/areas-of-care/${fallback.slug || area.slug}`,
            };
          });

          setAreas(merged);
        }
      } catch {
        // Keep fallback
      } finally {
        if (isMounted) setLoading(false);
      }
    };

    fetchAreas();

    return () => {
      isMounted = false;
    };
  }, []);

  return { areas, loading };
}
