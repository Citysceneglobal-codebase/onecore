import React, { useState, useEffect, useCallback } from 'react';
import { useParams, useNavigate, Link } from 'react-router-dom';
import {
  ChevronLeft,
  Save,
  Plus,
  Trash2,
  Image as ImageIcon,
  ExternalLink,
  Package,
  Layers,
  ShieldCheck,
  Activity,
  CheckCircle2,
} from 'lucide-react';
import AdminLayout from '../../components/admin/AdminLayout';
import { AdminCard } from '../../components/admin/AdminCard';
import ToastNotification from '../../components/admin/ToastNotification';
import MediaSelectorModal from '../../components/admin/MediaSelectorModal';
import { useAdminAuth } from '../../context/AdminAuthContext';
import { allProducts } from '../../data/allProducts';

function FieldLabel({ children, required }) {
  return (
    <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
      {children}
      {required && <span className="text-rose-600 ml-1">*</span>}
    </label>
  );
}

function TextInput({ value, onChange, placeholder, className = '', required }) {
  return (
    <input
      type="text"
      required={required}
      value={value || ''}
      onChange={onChange}
      placeholder={placeholder}
      className={`w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] ${className}`}
    />
  );
}

function TextArea({ value, onChange, placeholder, rows = 3 }) {
  return (
    <textarea
      value={value || ''}
      onChange={onChange}
      placeholder={placeholder}
      rows={rows}
      className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] resize-y leading-relaxed"
    />
  );
}

// Repeatable structured list editor (compositions, benefits, mechanisms, safety)
function RepeatableListEditor({ items, onChange, fields, addLabel }) {
  const add = () => onChange([...items, Object.fromEntries(fields.map((f) => [f.key, '']))]);
  const remove = (i) => onChange(items.filter((_, idx) => idx !== i));
  const update = (i, key, val) =>
    onChange(items.map((item, idx) => (idx === i ? { ...item, [key]: val } : item)));

  return (
    <div className="space-y-3">
      {items.map((item, i) => (
        <div key={i} className="bg-slate-50 border border-slate-200 rounded-xl p-4 space-y-3 relative group">
          <button
            type="button"
            onClick={() => remove(i)}
            className="absolute top-3.5 right-3.5 text-slate-400 hover:text-rose-600 transition-colors"
          >
            <Trash2 size={14} />
          </button>
          <div className="text-[10px] font-mono text-[#0D5C75] font-bold uppercase tracking-wider mb-1">
            Item #{i + 1}
          </div>
          {fields.map((f) => (
            <div key={f.key}>
              <FieldLabel>{f.label}</FieldLabel>
              {f.multiline ? (
                <TextArea
                  value={item[f.key]}
                  onChange={(e) => update(i, f.key, e.target.value)}
                  placeholder={f.placeholder}
                  rows={2}
                />
              ) : (
                <TextInput
                  value={item[f.key]}
                  onChange={(e) => update(i, f.key, e.target.value)}
                  placeholder={f.placeholder}
                />
              )}
            </div>
          ))}
        </div>
      ))}
      <button
        type="button"
        onClick={add}
        className="flex items-center gap-2 px-3 py-2 text-xs font-semibold text-[#0D5C75] hover:bg-[#0D5C75]/10 border border-dashed border-[#0D5C75]/30 rounded-xl transition-all w-full justify-center"
      >
        <Plus size={13} />
        {addLabel}
      </button>
    </div>
  );
}

export default function AdminProductEditor() {
  const { id } = useParams(); // ID or slug or 'new'
  const navigate = useNavigate();
  const { token } = useAdminAuth();
  const isNew = id === 'new';

  const [areas, setAreas] = useState([]);
  const [loading, setLoading] = useState(!isNew);
  const [saving, setSaving] = useState(false);
  const [toast, setToast] = useState(null);
  const [mediaOpen, setMediaOpen] = useState(false);

  const showToast = (type, message) => setToast({ type, message });

  const [form, setForm] = useState({
    brand_name: '',
    slug: '',
    therapeutic_area_id: 3,
    short_description: '',
    full_description: '',
    packshot_url: '',
    status: 'published',
    display_order: 1,
    seo_title: '',
    seo_description: '',
    compositions: [],
    benefits: [],
    dosage: { heading: 'How it should be taken.', description: 'Use as directed by a healthcare professional.' },
    mechanisms: [],
    safetySections: [],
  });

  const set = (key) => (e) => setForm((prev) => ({ ...prev, [key]: e.target.value }));

  // Load Therapeutic Areas for dropdown
  useEffect(() => {
    fetch('/api/therapeutic-areas')
      .then((r) => r.json())
      .then((d) => {
        if (d.success && Array.isArray(d.data)) {
          setAreas(d.data);
        }
      })
      .catch(() => {});
  }, []);

  // Fetch product data
  useEffect(() => {
    document.title = isNew ? 'Add Product | Onecore Admin' : 'Edit Product | Onecore Admin';
    if (isNew) {
      setLoading(false);
      return;
    }

    setLoading(true);
    fetch(`/api/products/${id}`, {
      headers: { Authorization: `Bearer ${token}` },
    })
      .then((r) => r.json())
      .then((d) => {
        if (d.success && d.data) {
          const p = d.data;
          setForm({
            id: p.id,
            brand_name: p.brand_name || p.name || '',
            slug: p.slug || '',
            therapeutic_area_id: p.therapeutic_area_id || 3,
            short_description: p.short_description || '',
            full_description: p.full_description || p.description || '',
            packshot_url: p.packshot_url || p.image || '',
            status: p.status || 'published',
            display_order: p.display_order || 1,
            seo_title: p.seo_title || '',
            seo_description: p.seo_description || '',
            compositions: p.compositions || [],
            benefits: p.benefits || [],
            dosage: p.dosage || { heading: 'How it should be taken.', description: 'Use as directed by a healthcare professional.' },
            mechanisms: p.mechanisms || [],
            safetySections: p.safetySections || p.safety_sections || [],
          });
        } else {
          // Check static data fallback
          const fallback = allProducts.find((item) => item.slug === id || String(item.id) === id);
          if (fallback) {
            setForm({
              brand_name: fallback.name,
              slug: fallback.slug,
              therapeutic_area_id: 3,
              short_description: fallback.composition || fallback.usedFor || '',
              full_description: fallback.description || '',
              packshot_url: fallback.image || '',
              status: 'published',
              display_order: 1,
              seo_title: '',
              seo_description: '',
              compositions: [
                { ingredient_name: fallback.composition || fallback.name, ingredient_description: '', strength: '' }
              ],
              benefits: [],
              dosage: { heading: 'How it should be taken.', description: fallback.direction || 'Use as directed by a healthcare professional.' },
              mechanisms: fallback.mechanism ? [{ title: 'Mechanism of Action', description: fallback.mechanism }] : [],
              safetySections: (fallback.precautions || []).map((prec, idx) => ({
                title: `Safety Note ${idx + 1}`,
                description: prec,
              })),
            });
          }
        }
      })
      .catch((err) => {
        showToast('error', 'Failed to load product from server.');
      })
      .finally(() => setLoading(false));
  }, [id, isNew, token]);

  const handleSave = async () => {
    if (!form.brand_name.trim()) {
      showToast('error', 'Brand name is required.');
      return;
    }

    setSaving(true);
    const method = isNew ? 'POST' : 'PUT';
    const endpoint = isNew ? '/api/products' : `/api/products/${form.id || id}`;

    try {
      const res = await fetch(endpoint, {
        method,
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(form),
      });

      const data = await res.json();
      if (res.ok && data.success) {
        showToast('success', isNew ? 'Product created successfully.' : 'Product updated successfully.');
        if (isNew && data.data?.id) {
          navigate(`/admin/products/${data.data.id}`, { replace: true });
        }
      } else {
        showToast('error', data.message || 'Failed to save product.');
      }
    } catch (err) {
      showToast('error', err.message);
    } finally {
      setSaving(false);
    }
  };

  return (
    <AdminLayout
      title={isNew ? 'New Product Formulation' : `Edit: ${form.brand_name || id}`}
      subtitle="Manage active ingredients, compositions, clinical benefits, mechanism of action, and safety monographs"
    >
      {/* Top Navigation */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
        <Link
          to="/admin/products"
          className="flex items-center gap-1 text-xs font-semibold text-slate-500 hover:text-slate-800 transition-colors"
        >
          <ChevronLeft size={16} />
          <span>Back to Product Portfolio</span>
        </Link>

        <div className="flex items-center gap-2.5">
          {!isNew && form.slug && (
            <a
              href={`/areas-of-care/orthopaedics/${form.slug}`}
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center gap-1.5 px-3 py-2 bg-white border border-slate-200 hover:bg-slate-50 text-slate-700 text-xs font-semibold rounded-lg transition-all shadow-xs"
            >
              <span>View Product Page</span>
              <ExternalLink size={13} />
            </a>
          )}
          <button
            type="button"
            onClick={handleSave}
            disabled={saving}
            className="flex items-center gap-1.5 px-4 py-2 bg-[#1B365D] hover:bg-[#152a48] text-white text-xs font-semibold rounded-lg transition-all shadow-xs disabled:opacity-50"
          >
            <Save size={14} />
            <span>{saving ? 'Saving...' : 'Save Product'}</span>
          </button>
        </div>
      </div>

      {loading ? (
        <div className="py-12 text-center text-slate-400 text-xs">
          Loading product specifications from MySQL...
        </div>
      ) : (
        <div className="space-y-6">
          {/* Section 1: Basic Product Information */}
          <AdminCard
            title="General Product Specifications"
            subtitle="Brand name, classification, division, and descriptions"
          >
            <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
              <div>
                <FieldLabel required>Brand Name</FieldLabel>
                <TextInput
                  required
                  value={form.brand_name}
                  onChange={(e) => {
                    const name = e.target.value;
                    setForm((prev) => ({
                      ...prev,
                      brand_name: name,
                      ...(isNew ? { slug: name.toLowerCase().replace(/[^a-z0-9]+/g, '-') } : {}),
                    }));
                  }}
                  placeholder="e.g. OneFLEXO, Calmme, Folentis"
                />
              </div>

              <div>
                <FieldLabel required>URL Slug</FieldLabel>
                <TextInput
                  required
                  value={form.slug}
                  onChange={set('slug')}
                  placeholder="e.g. oneflexo, calmme"
                />
              </div>

              <div>
                <FieldLabel required>Therapeutic Area / Division</FieldLabel>
                <select
                  value={form.therapeutic_area_id}
                  onChange={(e) =>
                    setForm((p) => ({ ...p, therapeutic_area_id: parseInt(e.target.value, 10) }))
                  }
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                >
                  {areas.map((a) => (
                    <option key={a.id} value={a.id}>
                      {a.name} ({a.slug})
                    </option>
                  ))}
                </select>
              </div>

              <div className="md:col-span-3">
                <FieldLabel>Short Description / Indication Summary</FieldLabel>
                <TextInput
                  value={form.short_description}
                  onChange={set('short_description')}
                  placeholder="e.g. Specialised joint health formulation combining Aflapin®, native collagen and Mobilee®."
                />
              </div>

              <div className="md:col-span-3">
                <FieldLabel>Full Monograph / Detailed Description</FieldLabel>
                <TextArea
                  rows={3}
                  value={form.full_description}
                  onChange={set('full_description')}
                  placeholder="Comprehensive clinical overview and therapeutic positioning..."
                />
              </div>

              {/* Packshot Image */}
              <div className="md:col-span-3">
                <FieldLabel>Product Packshot Image</FieldLabel>
                <div className="flex gap-2">
                  <TextInput
                    value={form.packshot_url}
                    onChange={set('packshot_url')}
                    placeholder="/assets/products/oneflexo-packshot.png"
                    className="flex-1"
                  />
                  <button
                    type="button"
                    onClick={() => setMediaOpen(true)}
                    className="shrink-0 flex items-center gap-1.5 px-3 py-2 bg-slate-50 border border-slate-200 hover:bg-slate-100 rounded-lg text-xs font-semibold text-slate-700 transition-all"
                  >
                    <ImageIcon size={14} />
                    <span>Choose Media</span>
                  </button>
                </div>
                {form.packshot_url && (
                  <div className="mt-3 flex items-center gap-3 p-3 bg-slate-50 border border-slate-200 rounded-lg">
                    <img
                      src={form.packshot_url}
                      alt="Packshot Preview"
                      className="w-16 h-16 object-contain rounded border border-slate-200 bg-white"
                      onError={(e) => {
                        e.target.style.display = 'none';
                      }}
                    />
                    <span className="text-xs text-slate-600 font-mono truncate">{form.packshot_url}</span>
                  </div>
                )}
              </div>
            </div>
          </AdminCard>

          {/* Section 2: Structured Product Composition Ingredients */}
          <AdminCard
            title="Product Composition Ingredients"
            subtitle="Individual active ingredients, scientific extract subtitles, and measured strengths"
          >
            <RepeatableListEditor
              items={form.compositions || []}
              onChange={(items) => setForm((p) => ({ ...p, compositions: items }))}
              fields={[
                { key: 'ingredient_name', label: 'Ingredient / Active Name *', placeholder: 'e.g. Aflapin®, Calcium citrate maleate' },
                { key: 'ingredient_description', label: 'Scientific Subtitle / Extract Details', placeholder: 'e.g. Boswellia serrata gum resin extract' },
                { key: 'strength', label: 'Strength / Amount', placeholder: 'e.g. 100 mg, 1250 mg' },
                { key: 'role_description', label: 'Role Description (Optional)', placeholder: 'e.g. Standardized Boswellia extract specialized in joint comfort.' },
              ]}
              addLabel="Add Active Ingredient"
            />
          </AdminCard>

          {/* Section 3: Structured Clinical Benefits */}
          <AdminCard
            title="Product Benefits"
            subtitle="Clinical advantages and targeted therapeutic outcomes"
          >
            <RepeatableListEditor
              items={form.benefits || []}
              onChange={(items) => setForm((p) => ({ ...p, benefits: items }))}
              fields={[
                { key: 'title', label: 'Benefit Title *', placeholder: 'e.g. JOINT COMFORT, MOBILITY' },
                { key: 'description', label: 'Benefit Description *', placeholder: 'Supports formulation role in maintaining comfort during movement.', multiline: true },
              ]}
              addLabel="Add Benefit"
            />
          </AdminCard>

          {/* Section 4: Administration & Dosage Guidance */}
          <AdminCard
            title="Administration & Dosage"
            subtitle="Recommended usage instructions and physician guidance"
          >
            <div className="space-y-3">
              <div>
                <FieldLabel>Dosage Heading</FieldLabel>
                <TextInput
                  value={form.dosage?.heading || ''}
                  onChange={(e) =>
                    setForm((p) => ({
                      ...p,
                      dosage: { ...p.dosage, heading: e.target.value },
                    }))
                  }
                  placeholder="e.g. How OneFLEXO should be taken."
                />
              </div>
              <div>
                <FieldLabel>Administration Instructions</FieldLabel>
                <TextArea
                  rows={2}
                  value={form.dosage?.description || ''}
                  onChange={(e) =>
                    setForm((p) => ({
                      ...p,
                      dosage: { ...p.dosage, description: e.target.value },
                    }))
                  }
                  placeholder="e.g. Take 1 tablet once daily with or after a meal as prescribed by the doctor."
                />
              </div>
            </div>
          </AdminCard>

          {/* Section 5: Mechanism of Action */}
          <AdminCard
            title="Mechanism of Action"
            subtitle="Scientific pharmacokinetics and cellular pathways"
          >
            <RepeatableListEditor
              items={form.mechanisms || []}
              onChange={(items) => setForm((p) => ({ ...p, mechanisms: items }))}
              fields={[
                { key: 'title', label: 'Mechanism Step / Title *', placeholder: 'e.g. Primary Action, Target Pathway' },
                { key: 'description', label: 'Mechanism Details *', placeholder: 'Binds progesterone receptors and provides progestational effects...', multiline: true },
              ]}
              addLabel="Add Mechanism Point"
            />
          </AdminCard>

          {/* Section 6: Safety, Precautions & Contraindications */}
          <AdminCard
            title="Safety Information & Precautions"
            subtitle="Clinical warnings, patient contraindications, and storage recommendations"
          >
            <RepeatableListEditor
              items={form.safetySections || []}
              onChange={(items) => setForm((p) => ({ ...p, safetySections: items }))}
              fields={[
                { key: 'title', label: 'Safety Section Title *', placeholder: 'e.g. WHO SHOULD NOT USE THIS PRODUCT, STORAGE INSTRUCTIONS' },
                { key: 'description', label: 'Safety Content / Warnings *', placeholder: 'Individuals with known hypersensitivity should not consume...', multiline: true },
              ]}
              addLabel="Add Safety Point"
            />
          </AdminCard>

          {/* Section 7: SEO Meta & Search Engine Optimization */}
          <AdminCard
            title="Search Engine Optimization (SEO)"
            subtitle="Meta title and description for this product monograph"
          >
            <div className="space-y-3">
              <div>
                <FieldLabel>SEO Title</FieldLabel>
                <TextInput
                  value={form.seo_title}
                  onChange={set('seo_title')}
                  placeholder="e.g. OneFLEXO | Orthopaedics Portfolio | Onecore Pharma"
                />
              </div>
              <div>
                <FieldLabel>SEO Meta Description</FieldLabel>
                <TextArea
                  rows={2}
                  value={form.seo_description}
                  onChange={set('seo_description')}
                  placeholder="Clinical product monograph for OneFLEXO, its formulation, composition and joint health information..."
                />
              </div>
            </div>
          </AdminCard>
        </div>
      )}

      {/* Media Selector Modal */}
      <MediaSelectorModal
        isOpen={mediaOpen}
        onClose={() => setMediaOpen(false)}
        onSelect={(url) => {
          setForm((p) => ({ ...p, packshot_url: url }));
          setMediaOpen(false);
        }}
      />

      <ToastNotification toast={toast} onDismiss={() => setToast(null)} />
    </AdminLayout>
  );
}
