import { useState, useEffect } from 'react';
import { areasOfCare as fallbackAreas } from '../data/areasOfCare';

const DIVISION_MAP = {
  'womens-health': 'Femme',
  'women-health': 'Femme',
  'femme': 'Femme',
  'paediatrics': 'Pediaplus',
  'pediatrics': 'Pediaplus',
  'pediatric': 'Pediaplus',
  'pediaplus': 'Pediaplus',
  'orthopaedics': 'Ortheon',
  'orthopedic': 'Ortheon',
  'orthopedics': 'Ortheon',
  'ortheon': 'Ortheon',
  'neurology': 'Neurix',
  'neuro': 'Neurix',
  'neurix': 'Neurix',
  'ophthalmology': 'Eyerix',
  'ocular': 'Eyerix',
  'eye-care': 'Eyerix',
  'eyerix': 'Eyerix',
  'dermatology': 'Vellis',
  'derma': 'Vellis',
  'skin': 'Vellis',
  'vellis': 'Vellis',
  'ent': 'OTIRA',
  'ear-nose-throat': 'OTIRA',
  'otira': 'OTIRA',
  'general-medicine': 'Omnara',
  'general': 'Omnara',
  'internal-medicine': 'Omnara',
  'omnara': 'Omnara',
  'oncology': 'Cytos',
  'cancer-care': 'Cytos',
  'cytos': 'Cytos',
};

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
            const cleanSlug = (area.slug || '').toLowerCase().trim();
            const cleanName = (area.name || '').toLowerCase().trim();
            const cleanNameSlug = cleanName.replace(/[^a-z0-9]+/g, '-');

            const fallback = fallbackAreas.find((f) => {
              const fSlug = (f.slug || '').toLowerCase().trim();
              const fId = (f.id || '').toLowerCase().trim();
              const fDiv = (f.divisionName || '').toLowerCase().trim();
              const fTherapeutic = (f.therapeuticArea || '').toLowerCase().trim();
              const fDisplay = (f.displayName || '').toLowerCase().trim();
              const aliases = (f.aliases || []).map((a) => a.toLowerCase().trim());

              if (fSlug === cleanSlug || fId === cleanSlug || fId === String(area.id)) return true;
              if (aliases.includes(cleanSlug) || aliases.includes(cleanNameSlug) || aliases.includes(cleanName)) return true;
              if (fDiv && (fDiv === cleanSlug || fDiv === cleanName || fDiv === cleanNameSlug)) return true;
              if (fTherapeutic && (fTherapeutic === cleanName || fTherapeutic === cleanSlug || fTherapeutic.replace(/[^a-z0-9]+/g, '-') === cleanNameSlug)) return true;
              if (fDisplay && (fDisplay === cleanName || fDisplay === cleanSlug)) return true;
              if (DIVISION_MAP[cleanSlug] && DIVISION_MAP[cleanSlug].toLowerCase() === fDiv) return true;
              if (DIVISION_MAP[cleanNameSlug] && DIVISION_MAP[cleanNameSlug].toLowerCase() === fDiv) return true;
              return false;
            }) || fallbackAreas[idx] || {};

            const divisionName = area.division_name || fallback.divisionName || DIVISION_MAP[cleanSlug] || DIVISION_MAP[cleanNameSlug] || area.name;
            const therapeuticArea = area.therapeutic_area || fallback.therapeuticArea || area.name || area.heading;
            const savedImage = (area.image_url && area.image_url.trim()) ? area.image_url.trim() : ((area.image && area.image.trim()) ? area.image.trim() : (fallback.image || fallback.image_url || '/assets/therapeutic-general-medicine.jpg'));

            return {
              ...fallback,
              ...area,
              id: area.id || fallback.id || cleanSlug,
              dbId: area.id,
              divisionName,
              therapeuticArea,
              num: area.number_label || fallback.num || String(idx + 1).padStart(2, '0'),
              title: area.name || fallback.title || divisionName,
              name: divisionName,
              displayName: therapeuticArea,
              slug: area.slug || fallback.slug || cleanSlug,
              focusTitle: area.heading || area.focus_title || fallback.focusTitle || fallback.heading,
              heading: area.heading || fallback.focusTitle || fallback.heading,
              description: area.description || fallback.description,
              image: savedImage,
              image_url: savedImage,
              heroImage: savedImage,
              tags: Array.isArray(area.tags) && area.tags.length > 0 ? area.tags : fallback.tags || [],
              sampleProducts: fallback.sampleProducts || [],
              route: fallback.route || `/areas-of-care/${(fallback.slug || area.slug || cleanSlug).toLowerCase().trim()}`,
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
