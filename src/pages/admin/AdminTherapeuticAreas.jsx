import React, { useState, useEffect } from 'react';
import {
  Activity,
  ExternalLink,
  Search,
  Plus,
  Edit2,
  Trash2,
  Save,
  X,
  Tag,
  Image as ImageIcon,
  Eye,
  EyeOff,
  ChevronUp,
  ChevronDown,
} from 'lucide-react';
import AdminLayout from '../../components/admin/AdminLayout';
import { AdminCard } from '../../components/admin/AdminCard';
import AdminTable from '../../components/admin/AdminTable';
import ToastNotification from '../../components/admin/ToastNotification';
import ConfirmModal from '../../components/admin/ConfirmModal';
import MediaSelectorModal from '../../components/admin/MediaSelectorModal';
import { useAdminAuth } from '../../context/AdminAuthContext';
import { assetUrl } from '../../utils/assetUrl';

const DIVISION_MAP = {
  'womens-health': 'Femme',
  'paediatrics': 'Pediaplus',
  'pediatrics': 'Pediaplus',
  'orthopaedics': 'Ortheon',
  'orthopedic': 'Ortheon',
  'neurology': 'Neurix',
  'ophthalmology': 'Eyerix',
  'dermatology': 'Vellis',
  'ent': 'OTIRA',
  'general-medicine': 'Omnara',
  'general': 'Omnara',
  'oncology': 'Cytos',
};

const SEED_AREAS = [
  { id: 1, name: 'Women’s Health', slug: 'womens-health', number_label: '01', heading: 'Supporting women through different stages of care.', description: 'Our women’s health portfolio brings together prescription medicines and supportive formulations across reproductive health, fertility, pregnancy related nutrition, gynaecological care and intimate health.', image_url: '/assets/therapeutic-womens-health.jpg', display_order: 1, is_active: 1, tags: ['Reproductive health', 'Fertility', 'Pregnancy related nutrition', 'Gynaecological care', 'Intimate health'] },
  { id: 2, name: 'Paediatrics', slug: 'paediatrics', number_label: '02', heading: 'Care designed around the needs of growing children.', description: 'A portfolio spanning paediatric therapeutic and nutritional needs, with formulations and dosage formats suited to different stages of childhood care.', image_url: '/assets/therapeutic-paediatrics.jpg', display_order: 2, is_active: 1, tags: ['Child health', 'Nutrition', 'Paediatric medicines'] },
  { id: 3, name: 'Orthopaedics', slug: 'orthopaedics', number_label: '03', heading: 'Supporting movement, mobility and musculoskeletal care.', description: 'Our orthopaedic portfolio spans joint health, bone health, mobility, pain management and musculoskeletal support.', image_url: '/assets/therapeutic-orthopaedics.jpg', display_order: 3, is_active: 1, tags: ['Joint health', 'Bone health', 'Pain management', 'Mobility'] },
  { id: 4, name: 'Neurology', slug: 'neurology', number_label: '04', heading: 'A focused portfolio across neurological care.', description: 'Onecore’s neurology portfolio includes prescription therapies and supportive formulations used across a range of neurological and neuro nutritional needs.', image_url: '/assets/therapeutic-neurology.jpg', display_order: 4, is_active: 1, tags: ['Neuropathic care', 'Neuro nutrition', 'CNS care'] },
  { id: 5, name: 'Ophthalmology', slug: 'ophthalmology', number_label: '05', heading: 'Specialised formulations for different areas of eye care.', description: 'Our ophthalmology range includes products used across ocular infection, inflammation, glaucoma related care, lubrication and other ophthalmic needs.', image_url: '/assets/therapeutic-ophthalmology.jpg', display_order: 5, is_active: 1, tags: ['Ocular infection', 'Inflammation', 'Glaucoma care', 'Ocular lubrication'] },
  { id: 6, name: 'Dermatology', slug: 'dermatology', number_label: '06', heading: 'Formulations for medical and supportive skin care.', description: 'The dermatology portfolio spans prescription and supportive formulations across fungal infections, acne, inflammatory skin conditions, pigmentation and skin health.', image_url: '/assets/therapeutic-dermatology.jpg', display_order: 6, is_active: 1, tags: ['Acne', 'Fungal care', 'Inflammatory conditions', 'Pigmentation'] },
  { id: 7, name: 'ENT', slug: 'ent', number_label: '07', heading: 'Focused support across ear, nose and throat care.', description: 'A portfolio developed around common and specialised needs encountered across ENT practice.', image_url: '/assets/therapeutic-ent.jpg', display_order: 7, is_active: 1, tags: ['ENT care', 'Allergy', 'Infection management'] },
  { id: 8, name: 'General Medicine', slug: 'general-medicine', number_label: '08', heading: 'Everyday therapies across a broad range of clinical needs.', description: 'Our general medicine portfolio includes gastrointestinal care, anti infectives, pain management, allergy care and other commonly encountered therapeutic needs.', image_url: '/assets/therapeutic-general-medicine.jpg', display_order: 8, is_active: 1, tags: ['Gastrointestinal care', 'Anti infectives', 'Pain management', 'Allergy care'] },
  { id: 9, name: 'Oncology', slug: 'oncology', number_label: '09', heading: 'Specialised therapies within cancer care.', description: 'Onecore’s oncology portfolio brings together specialised prescription products used across selected areas of cancer treatment and supportive care.', image_url: '/assets/therapeutic-oncology.jpg', display_order: 9, is_active: 1, tags: ['Specialised therapies', 'Oncology care', 'Supportive care'] },
];

// ─── Inline Area Editor ────────────────────────────────────────────────────────
function AreaEditorPanel({ area, onSave, onCancel, onOpenMedia }) {
  const [form, setForm] = useState({
    name: area?.name || '',
    slug: area?.slug || '',
    number_label: area?.number_label || '01',
    heading: area?.heading || area?.name || '',
    description: area?.description || '',
    image_url: area?.image_url || area?.image || '',
    is_active: area?.is_active !== 0,
    tags: (area?.tags || []).join(', '),
  });

  const set = (key) => (e) => setForm((p) => ({ ...p, [key]: e.target.value }));
  const division = area?.slug ? DIVISION_MAP[area.slug.toLowerCase()] : (area?.name ? DIVISION_MAP[area.name.toLowerCase().replace(/\s+/g, '-')] : null);

  return (
    <div className="bg-slate-50 border border-slate-200 rounded-xl p-5 space-y-4">
      {division && (
        <div className="flex items-center gap-2 pb-2 border-b border-slate-200">
          <span className="text-[10px] font-mono uppercase tracking-wider px-2 py-0.5 rounded bg-[#0D5C75]/10 border border-[#0D5C75]/20 text-[#0D5C75] font-bold">
            Division: {division}
          </span>
          <span className="text-xs text-slate-500 font-medium">
            {form.name || area?.name}
          </span>
        </div>
      )}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
        <div>
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
            Therapeutic Area Name *
          </label>
          <input
            type="text"
            value={form.name}
            onChange={set('name')}
            placeholder="e.g. Orthopaedics"
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
          />
        </div>
        <div>
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
            URL Slug
          </label>
          <input
            type="text"
            value={form.slug}
            onChange={set('slug')}
            placeholder="orthopaedics"
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 font-mono focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
          />
        </div>
        <div className="md:col-span-2">
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
            Heading / Focus Title
          </label>
          <input
            type="text"
            value={form.heading}
            onChange={set('heading')}
            placeholder="Main heading shown on the area page"
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
          />
        </div>
        <div className="md:col-span-2">
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
            Clinical Description
          </label>
          <textarea
            value={form.description}
            onChange={set('description')}
            rows={3}
            placeholder="Clinical description of this therapeutic area..."
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] resize-y"
          />
        </div>
        <div className="md:col-span-2">
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
            Tags (comma-separated)
          </label>
          <input
            type="text"
            value={form.tags}
            onChange={set('tags')}
            placeholder="Joint health, Bone health, Pain management, Mobility"
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
          />
        </div>
        <div className="md:col-span-2">
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
            Area Feature Image URL
          </label>
          <div className="flex gap-2">
            <input
              type="text"
              value={form.image_url}
              onChange={set('image_url')}
              placeholder="/assets/therapeutic-orthopaedics.jpg or /uploads/..."
              className="flex-1 bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
            />
            <button
              type="button"
              onClick={() => onOpenMedia((url) => setForm((p) => ({ ...p, image_url: url })))}
              className="shrink-0 flex items-center gap-1 px-3 py-2 bg-slate-100 hover:bg-slate-200 border border-slate-200 rounded-lg text-xs font-semibold text-slate-700 transition-all"
            >
              <ImageIcon size={14} />
              <span>Media</span>
            </button>
            {form.image_url && (
              <button
                type="button"
                onClick={() => setForm((p) => ({ ...p, image_url: '' }))}
                className="shrink-0 px-2.5 py-2 text-slate-400 hover:text-rose-600 hover:bg-rose-50 border border-slate-200 rounded-lg text-xs transition-colors"
                title="Clear image"
              >
                <X size={14} />
              </button>
            )}
          </div>
          {form.image_url && (
            <div className="mt-2.5 flex items-center gap-3 p-2 bg-white rounded-lg border border-slate-200 max-w-sm">
              <div className="w-14 h-14 rounded-md overflow-hidden bg-slate-100 shrink-0 border border-slate-200">
                <img
                  src={assetUrl(form.image_url)}
                  alt="Preview"
                  className="w-full h-full object-cover"
                  onError={(e) => {
                    e.target.style.display = 'none';
                  }}
                />
              </div>
              <div className="min-w-0 flex-1">
                <span className="text-[10px] font-mono uppercase text-slate-400 block font-semibold">Active Preview</span>
                <span className="text-xs font-mono text-slate-700 truncate block">{form.image_url}</span>
              </div>
            </div>
          )}
        </div>
      </div>
      <div className="flex items-center justify-end gap-2.5 pt-3 border-t border-slate-200">
        <button
          type="button"
          onClick={onCancel}
          className="px-4 py-2 text-xs font-semibold text-slate-600 hover:text-slate-900 bg-slate-100 hover:bg-slate-200 rounded-lg transition-colors"
        >
          Cancel
        </button>
        <button
          type="button"
          onClick={() =>
            onSave({
              ...form,
              tags: form.tags
                .split(',')
                .map((t) => t.trim())
                .filter(Boolean),
            })
          }
          className="flex items-center gap-1.5 px-4 py-2 text-xs font-semibold bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg transition-colors shadow-xs"
        >
          <Save size={13} />
          <span>Save Area</span>
        </button>
      </div>
    </div>
  );
}

export default function AdminTherapeuticAreas() {
  const { token } = useAdminAuth();
  const [areas, setAreas] = useState(SEED_AREAS);
  const [editingId, setEditingId] = useState(null);
  const [addingNew, setAddingNew] = useState(false);
  const [deleteTarget, setDeleteTarget] = useState(null);
  const [toast, setToast] = useState(null);
  const [mediaCb, setMediaCb] = useState(null);
  const [search, setSearch] = useState('');

  const showToast = (type, message) => setToast({ type, message });

  const fetchAreas = async () => {
    try {
      const res = await fetch('/api/therapeutic-areas', {
        headers: { Authorization: `Bearer ${token}` },
      });
      if (res.ok) {
        const data = await res.json();
        if (data.success && data.data && data.data.length > 0) {
          setAreas(data.data);
        }
      }
    } catch {
      // Keep seed areas
    }
  };

  useEffect(() => {
    document.title = 'Areas of Care | Onecore Admin';
    fetchAreas();
  }, []);

  const handleSave = async (areaId, payload) => {
    try {
      const isNew = areaId === 'new';
      const endpoint = isNew ? '/api/therapeutic-areas' : `/api/therapeutic-areas/${areaId}`;
      const method = isNew ? 'POST' : 'PUT';

      const res = await fetch(endpoint, {
        method,
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(payload),
      });

      const data = await res.json();
      if (res.ok && data.success) {
        showToast('success', isNew ? 'Therapeutic area added.' : 'Therapeutic area updated.');
        setEditingId(null);
        setAddingNew(false);
        fetchAreas();
      } else {
        showToast('error', data.message || 'Save failed.');
      }
    } catch (err) {
      showToast('error', err.message);
    }
  };

  const handleDelete = async () => {
    if (!deleteTarget) return;
    try {
      const res = await fetch(`/api/therapeutic-areas/${deleteTarget}`, {
        method: 'DELETE',
        headers: { Authorization: `Bearer ${token}` },
      });
      const data = await res.json();
      if (data.success) {
        showToast('success', 'Therapeutic area deleted.');
        fetchAreas();
      } else {
        showToast('error', data.message || 'Delete failed.');
      }
    } catch (err) {
      showToast('error', err.message);
    } finally {
      setDeleteTarget(null);
    }
  };

  const handleToggleActive = async (area) => {
    const newActive = area.is_active === 1 ? 0 : 1;
    try {
      const res = await fetch(`/api/therapeutic-areas/${area.id}`, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify({ is_active: newActive }),
      });
      if (res.ok) {
        setAreas((prev) =>
          prev.map((a) => (a.id === area.id ? { ...a, is_active: newActive } : a))
        );
        showToast('success', `Therapeutic area ${newActive === 1 ? 'enabled' : 'disabled'}.`);
      }
    } catch {
      showToast('error', 'Update failed.');
    }
  };

  const handleReorder = async (index, direction) => {
    const swapIndex = direction === 'up' ? index - 1 : index + 1;
    if (swapIndex < 0 || swapIndex >= areas.length) return;

    const newAreas = [...areas];
    [newAreas[index], newAreas[swapIndex]] = [newAreas[swapIndex], newAreas[index]];
    setAreas(newAreas);

    try {
      await fetch('/api/therapeutic-areas/reorder', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify({ orderedIds: newAreas.map((a) => a.id) }),
      });
      showToast('success', 'Order updated.');
    } catch {
      showToast('error', 'Reorder failed.');
      fetchAreas();
    }
  };

  const filtered = areas.filter((a) =>
    (a.name || '').toLowerCase().includes(search.toLowerCase()) ||
    (a.heading || '').toLowerCase().includes(search.toLowerCase()) ||
    (a.slug || '').toLowerCase().includes(search.toLowerCase())
  );

  return (
    <AdminLayout
      title="Areas of Care (Therapeutic Disciplines)"
      subtitle="Manage clinical divisions, therapeutic descriptions, category tags, and product associations"
    >
      <AdminCard
        title={`Therapeutic Areas (${filtered.length})`}
        subtitle="Clinical specialities and franchise divisions across Onecore portfolio"
        action={
          <div className="flex items-center gap-3">
            <div className="relative">
              <input
                type="text"
                placeholder="Search areas..."
                value={search}
                onChange={(e) => setSearch(e.target.value)}
                className="bg-white border border-slate-200 rounded-lg px-3 py-1.5 pl-8 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
              <Search size={13} className="absolute left-2.5 top-2.5 text-slate-400 pointer-events-none" />
            </div>
            <button
              type="button"
              onClick={() => setAddingNew(true)}
              className="flex items-center gap-1.5 px-3 py-1.5 text-xs font-semibold bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg transition-all shadow-xs"
            >
              <Plus size={13} />
              <span>Add Therapeutic Area</span>
            </button>
          </div>
        }
      >
        {addingNew && (
          <div className="mb-6">
            <h4 className="text-xs font-bold text-slate-900 uppercase tracking-wider mb-2">
              New Therapeutic Area
            </h4>
            <AreaEditorPanel
              area={{}}
              onSave={(payload) => handleSave('new', payload)}
              onCancel={() => setAddingNew(false)}
              onOpenMedia={(cb) => setMediaCb(() => cb)}
            />
          </div>
        )}

        <div className="space-y-3">
          {filtered.map((area, idx) => {
            const isEditing = editingId === area.id;
            const division = area.slug ? DIVISION_MAP[area.slug.toLowerCase()] : null;

            return (
              <div
                key={area.id}
                className={`border rounded-xl transition-all shadow-xs ${
                  isEditing
                    ? 'border-[#1B365D] bg-[#FAFAFC]'
                    : area.is_active === 0
                    ? 'border-slate-200 bg-slate-50/60 opacity-60'
                    : 'border-slate-200 bg-white hover:border-slate-300'
                }`}
              >
                <div className="p-4 flex items-center justify-between gap-3">
                  <div className="flex items-center gap-3 min-w-0 flex-1">
                    {/* Reorder buttons */}
                    <div className="flex flex-col gap-0.5 shrink-0">
                      <button
                        type="button"
                        onClick={() => handleReorder(idx, 'up')}
                        disabled={idx === 0}
                        className="text-slate-400 hover:text-slate-800 disabled:opacity-20 transition-colors"
                      >
                        <ChevronUp size={14} />
                      </button>
                      <button
                        type="button"
                        onClick={() => handleReorder(idx, 'down')}
                        disabled={idx === filtered.length - 1}
                        className="text-slate-400 hover:text-slate-800 disabled:opacity-20 transition-colors"
                      >
                        <ChevronDown size={14} />
                      </button>
                    </div>

                    <span className="w-7 h-7 rounded-full bg-slate-100 border border-slate-200 text-slate-700 text-xs font-mono font-bold flex items-center justify-center shrink-0">
                      {area.number_label || String(idx + 1).padStart(2, '0')}
                    </span>

                    {/* Area Image Thumbnail */}
                    <div className="w-12 h-12 rounded-lg bg-slate-100 border border-slate-200 overflow-hidden shrink-0">
                      {(area.image_url || area.image) ? (
                        <img
                          src={assetUrl(area.image_url || area.image)}
                          alt={area.name}
                          className="w-full h-full object-cover"
                          onError={(e) => {
                            e.target.style.display = 'none';
                          }}
                        />
                      ) : (
                        <div className="w-full h-full flex items-center justify-center text-slate-400">
                          <ImageIcon size={16} />
                        </div>
                      )}
                    </div>

                    <div className="min-w-0 flex-1">
                      <div className="flex items-center gap-2 flex-wrap">
                        <span className="text-sm font-bold text-slate-900">{area.name}</span>
                        {division && (
                          <span className="text-[10px] font-mono font-semibold px-2 py-0.5 rounded bg-[#0D5C75]/10 text-[#0D5C75] border border-[#0D5C75]/20">
                            Division: {division}
                          </span>
                        )}
                        <span className="text-xs font-mono text-slate-400">/{area.slug}</span>
                        {area.is_active === 0 && (
                          <span className="text-[10px] font-mono text-rose-700 bg-rose-50 border border-rose-200 px-1.5 py-0.5 rounded font-semibold">
                            Disabled
                          </span>
                        )}
                      </div>
                      <p className="text-xs text-slate-600 truncate mt-1">
                        {area.heading || area.description}
                      </p>
                      {area.tags && area.tags.length > 0 && (
                        <div className="flex items-center gap-1.5 flex-wrap mt-1.5">
                          {area.tags.slice(0, 4).map((t, tIdx) => (
                            <span key={tIdx} className="text-[10px] bg-slate-100 text-slate-600 px-2 py-0.5 rounded">
                              {typeof t === 'string' ? t : t.name}
                            </span>
                          ))}
                          {area.tags.length > 4 && (
                            <span className="text-[10px] text-slate-400 font-mono">
                              +{area.tags.length - 4} more
                            </span>
                          )}
                        </div>
                      )}
                    </div>
                  </div>

                  <div className="flex items-center gap-1.5 shrink-0">
                    <button
                      type="button"
                      onClick={() => handleToggleActive(area)}
                      className="p-2 text-slate-400 hover:text-slate-800 hover:bg-slate-100 rounded-lg transition-colors"
                      title={area.is_active === 1 ? 'Disable Area' : 'Enable Area'}
                    >
                      {area.is_active === 1 ? <Eye size={15} /> : <EyeOff size={15} />}
                    </button>
                    <button
                      type="button"
                      onClick={() => setEditingId(isEditing ? null : area.id)}
                      className="flex items-center gap-1 px-3 py-1.5 bg-slate-100 hover:bg-slate-200 text-slate-800 text-xs font-semibold rounded-lg transition-all"
                    >
                      <Edit2 size={12} />
                      <span>{isEditing ? 'Close' : 'Edit'}</span>
                    </button>
                    <a
                      href={`/areas-of-care/${area.slug}`}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="p-2 text-slate-400 hover:text-slate-800 hover:bg-slate-100 rounded-lg transition-colors"
                      title="View Public Page"
                    >
                      <ExternalLink size={14} />
                    </a>
                    <button
                      type="button"
                      onClick={() => setDeleteTarget(area.id)}
                      className="p-2 text-slate-400 hover:text-rose-600 hover:bg-rose-50 rounded-lg transition-colors"
                      title="Delete Area"
                    >
                      <Trash2 size={14} />
                    </button>
                  </div>
                </div>

                {isEditing && (
                  <div className="p-4 pt-0">
                    <AreaEditorPanel
                      area={area}
                      onSave={(payload) => handleSave(area.id, payload)}
                      onCancel={() => setEditingId(null)}
                      onOpenMedia={(cb) => setMediaCb(() => cb)}
                    />
                  </div>
                )}
              </div>
            );
          })}
        </div>
      </AdminCard>

      <ConfirmModal
        isOpen={!!deleteTarget}
        title="Delete Therapeutic Area"
        message="This action will delete the therapeutic area and its tag mappings. Linked products must be reassigned first."
        confirmLabel="Delete Area"
        onConfirm={handleDelete}
        onCancel={() => setDeleteTarget(null)}
        dangerous
      />

      <MediaSelectorModal
        isOpen={!!mediaCb}
        onClose={() => setMediaCb(null)}
        onSelect={(url) => {
          if (mediaCb) mediaCb(url);
          setMediaCb(null);
        }}
      />

      <ToastNotification toast={toast} onDismiss={() => setToast(null)} />
    </AdminLayout>
  );
}
