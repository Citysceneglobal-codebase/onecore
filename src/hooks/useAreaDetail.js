import { useState, useEffect } from 'react';
import { getAreaBySlug } from '../data/areasOfCare';

export function useAreaDetail(slug) {
  const [area, setArea] = useState(() => (slug ? getAreaBySlug(slug) : null));
  const [products, setProducts] = useState(() => {
    const found = slug ? getAreaBySlug(slug) : null;
    return found?.sampleProducts || [];
  });
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    if (!slug) {
      setArea(null);
      setProducts([]);
      setLoading(false);
      return;
    }

    let isMounted = true;
    const fallback = getAreaBySlug(slug);
    if (fallback) {
      setArea(fallback);
      setProducts(fallback.sampleProducts || []);
    }

    const fetchDetail = async () => {
      try {
        const res = await fetch(`/api/therapeutic-areas/${slug}`);
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const result = await res.json();

        if (isMounted && result.success && result.data) {
          const apiArea = result.data;
          const savedImage = (apiArea.image_url && String(apiArea.image_url).trim()) ? String(apiArea.image_url).trim() : ((apiArea.image && String(apiArea.image).trim()) ? String(apiArea.image).trim() : (fallback?.image || fallback?.image_url || '/assets/therapeutic-general-medicine.jpg'));

          const merged = {
            ...fallback,
            ...apiArea,
            id: apiArea.id,
            name: apiArea.name || fallback?.title,
            title: apiArea.name || fallback?.title,
            slug: apiArea.slug || slug,
            heading: apiArea.heading || fallback?.focusTitle,
            focusTitle: apiArea.heading || fallback?.focusTitle,
            description: apiArea.description || fallback?.description,
            image: savedImage,
            image_url: savedImage,
            heroImage: savedImage,
            tags: apiArea.tags && apiArea.tags.length > 0 ? apiArea.tags : fallback?.tags || [],
            sampleProducts: (apiArea.products && apiArea.products.length > 0) ? apiArea.products : fallback?.sampleProducts || [],
          };

          setArea(merged);
          setProducts(merged.sampleProducts);
          setError(null);
        }
      } catch {
        if (!fallback && isMounted) {
          setError('Area of care not found.');
        }
      } finally {
        if (isMounted) setLoading(false);
      }
    };

    fetchDetail();

    return () => {
      isMounted = false;
    };
  }, [slug]);

  return { area, products, loading, error };
}
