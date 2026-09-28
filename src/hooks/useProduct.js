import { useState, useEffect } from 'react';
import { allProducts } from '../data/allProducts';

const staticOneFlexoData = {
  id: 1,
  therapeutic_area_id: 3,
  brand_name: 'OneFLEXO',
  name: 'OneFLEXO',
  slug: 'oneflexo',
  short_description: 'Specialised joint health formulation combining Aflapin®, native undenatured Type II collagen and Mobilee® in a single capsule.',
  full_description: 'OneFLEXO is a specialised joint health formulation that combines Aflapin®, native undenatured Type II collagen and Mobilee® in a single capsule. The formulation is designed to bring together complementary ingredients used in musculoskeletal and joint support.',
  packshot_url: '/assets/products/oneflexo-packshot.png',
  image: '/assets/products/oneflexo-packshot.png',
  compositions: [
    {
      ingredient_name: 'Aflapin®',
      ingredient_subtitle: 'Boswellia serrata gum resin extract',
      amount: '100 mg',
      strength: '100 mg',
      role_description: 'Standardized Boswellia extract specialized in joint comfort.',
    },
    {
      ingredient_name: 'Native Type II Collagen',
      ingredient_subtitle: 'Undenatured collagen Type II',
      amount: '40 mg',
      strength: '40 mg',
      role_description: 'Intact molecular collagen supporting joint cartilage integrity.',
    },
    {
      ingredient_name: 'Mobilee®',
      ingredient_subtitle: 'Sodium hyaluronate, polysaccharides and collagen complex',
      amount: '40 mg',
      strength: '40 mg',
      role_description: 'Patented hyaluronic acid matrix supporting joint fluid nourishment.',
    },
  ],
  benefits: [
    {
      title: 'JOINT COMFORT',
      description: 'Supports the formulation’s role in maintaining comfort during everyday movement.',
    },
    {
      title: 'MOBILITY',
      description: 'Designed to support mobility as part of an overall musculoskeletal care approach.',
    },
    {
      title: 'JOINT STRUCTURE SUPPORT',
      description: 'Combines ingredients selected for complementary roles in joint and connective tissue support.',
    },
  ],
  dosage: {
    heading: 'How OneFLEXO should be taken.',
    description: 'Use as directed by a healthcare professional or according to the approved product label.',
  },
  safety_sections: [
    {
      section_title: 'WHO SHOULD NOT USE THIS PRODUCT',
      title: 'WHO SHOULD NOT USE THIS PRODUCT',
      content: 'Individuals with known hypersensitivity to any of the ingredients should not consume this product. Consult your physician if pregnant, nursing, or undergoing concurrent medical therapy.',
      description: 'Individuals with known hypersensitivity to any of the ingredients should not consume this product. Consult your physician if pregnant, nursing, or undergoing concurrent medical therapy.',
    },
    {
      section_title: 'STORAGE INSTRUCTIONS',
      title: 'STORAGE INSTRUCTIONS',
      content: 'Store in a cool, dry place away from direct sunlight and moisture. Keep out of reach of children.',
      description: 'Store in a cool, dry place away from direct sunlight and moisture. Keep out of reach of children.',
    },
  ],
};

function findStaticFallback(slugOrId) {
  if (!slugOrId) return null;
  const s = String(slugOrId).toLowerCase().trim();
  if (s === 'oneflexo' || s === '1') return staticOneFlexoData;

  const found = allProducts.find(
    (p) => p.slug?.toLowerCase() === s || String(p.id) === s || p.name?.toLowerCase().replace(/\s+/g, '-') === s
  );
  if (!found) return null;

  return {
    ...found,
    brand_name: found.name,
    full_description: found.description,
    short_description: found.usedFor || found.description,
    packshot_url: found.image || found.packshot_url,
    safety_sections: (found.precautions || []).map((p, idx) => ({
      section_title: `Safety Point ${idx + 1}`,
      title: `Safety Point ${idx + 1}`,
      content: p,
      description: p,
    })),
  };
}

export function useProduct(slugOrId = 'oneflexo') {
  const [product, setProduct] = useState(() => findStaticFallback(slugOrId));
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let isMounted = true;
    const fallback = findStaticFallback(slugOrId);
    if (fallback) setProduct(fallback);

    const fetchProduct = async () => {
      try {
        const res = await fetch(`/api/products/${slugOrId}`);
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const result = await res.json();

        if (isMounted && result.success && result.data) {
          const apiProd = result.data;
          
          // Normalize compositions
          const comps = (apiProd.compositions || []).map((c) => ({
            ...c,
            ingredient_name: c.ingredient_name,
            ingredient_subtitle: c.ingredient_description || c.ingredient_subtitle || '',
            amount: c.strength || c.amount || '',
            strength: c.strength || c.amount || '',
            role_description: c.role_description || '',
          }));

          // Normalize safety sections
          const safety = (apiProd.safetySections || apiProd.safety_sections || []).map((s) => ({
            ...s,
            section_title: s.title || s.section_title || '',
            title: s.title || s.section_title || '',
            content: s.description || s.content || '',
            description: s.description || s.content || '',
          }));

          const compSummary = apiProd.composition_summary || 
            (comps.length > 0 ? comps.map((c) => `${c.ingredient_name || ''} ${c.strength || ''}`.trim()).filter(Boolean).join(' + ') : null);
          
          const mechanismSummary = (apiProd.mechanisms && apiProd.mechanisms.length > 0)
            ? apiProd.mechanisms.map((m) => `${m.title ? m.title + ': ' : ''}${m.description || ''}`).join('. ')
            : null;

          const precautionsList = safety.map((s) => s.description || s.content).filter(Boolean);

          const normalized = {
            ...fallback,
            ...apiProd,
            name: apiProd.brand_name || apiProd.name || fallback?.name,
            brand_name: apiProd.brand_name || apiProd.name || fallback?.name,
            composition: compSummary || fallback?.composition || '',
            composition_summary: compSummary || fallback?.composition_summary || '',
            description: apiProd.full_description || apiProd.description || fallback?.description,
            full_description: apiProd.full_description || apiProd.description || fallback?.description,
            short_description: apiProd.short_description || fallback?.short_description,
            usedFor: apiProd.short_description || fallback?.usedFor,
            mechanism: mechanismSummary || fallback?.mechanism || '',
            direction: apiProd.dosage?.description || fallback?.direction || '',
            precautions: precautionsList.length > 0 ? precautionsList : fallback?.precautions || [],
            packshot_url: apiProd.packshot_url || fallback?.packshot_url || fallback?.image,
            image: apiProd.packshot_url || fallback?.packshot_url || fallback?.image,
            compositions: comps.length > 0 ? comps : fallback?.compositions || [],
            benefits: apiProd.benefits && apiProd.benefits.length > 0 ? apiProd.benefits : fallback?.benefits || [],
            dosage: apiProd.dosage || fallback?.dosage || null,
            mechanisms: apiProd.mechanisms && apiProd.mechanisms.length > 0 ? apiProd.mechanisms : fallback?.mechanisms || [],
            safetySections: safety.length > 0 ? safety : fallback?.safety_sections || [],
            safety_sections: safety.length > 0 ? safety : fallback?.safety_sections || [],
          };

          setProduct(normalized);
        }
      } catch {
        // Fallback already set
      } finally {
        if (isMounted) setLoading(false);
      }
    };

    fetchProduct();

    return () => {
      isMounted = false;
    };
  }, [slugOrId]);

  return { product, loading };
}
