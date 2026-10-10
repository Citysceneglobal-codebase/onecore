import React, { useState, useEffect, useCallback } from 'react';
import { useParams, useNavigate, Link } from 'react-router-dom';
import {
  ChevronLeft,
  Plus,
  Save,
  Trash2,
  Eye,
  EyeOff,
  GripVertical,
  Edit2,
  X,
  ExternalLink,
  FileText,
  Image as ImageIcon,
  ChevronUp,
  ChevronDown,
  Layers,
  Sparkles,
  CheckCircle2,
} from 'lucide-react';
import AdminLayout from '../../components/admin/AdminLayout';
import { AdminCard } from '../../components/admin/AdminCard';
import ToastNotification from '../../components/admin/ToastNotification';
import ConfirmModal from '../../components/admin/ConfirmModal';
import MediaSelectorModal from '../../components/admin/MediaSelectorModal';
import { useAdminAuth } from '../../context/AdminAuthContext';
import { assetUrl } from '../../utils/assetUrl';

// ─── Inline Repeatable Items Manager ──────────────────────────────────────────
function SectionItemsManager({ items, onChange, onOpenMedia }) {
  const [itemList, setItemList] = useState(items || []);
  const [editingItemIdx, setEditingItemIdx] = useState(null);

  useEffect(() => {
    setItemList(items || []);
  }, [items]);

  const updateItems = (newList) => {
    setItemList(newList);
    onChange(newList);
  };

  const handleAddItem = () => {
    const newItem = {
      title: 'New Card / Item',
      desc: '',
      description: '',
      eyebrow: '',
      stat: '',
      num: String(itemList.length + 1).padStart(2, '0'),
      cta_text: '',
      cta_url: '',
      image: '',
    };
    const updated = [...itemList, newItem];
    updateItems(updated);
    setEditingItemIdx(updated.length - 1);
  };

  const handleRemoveItem = (index) => {
    const updated = itemList.filter((_, i) => i !== index);
    updateItems(updated);
    if (editingItemIdx === index) setEditingItemIdx(null);
    else if (editingItemIdx > index) setEditingItemIdx(editingItemIdx - 1);
  };

  const handleMoveItem = (index, direction) => {
    const swapIndex = direction === 'up' ? index - 1 : index + 1;
    if (swapIndex < 0 || swapIndex >= itemList.length) return;
    const updated = [...itemList];
    [updated[index], updated[swapIndex]] = [updated[swapIndex], updated[index]];
    updateItems(updated);
    if (editingItemIdx === index) setEditingItemIdx(swapIndex);
    else if (editingItemIdx === swapIndex) setEditingItemIdx(index);
  };

  const handleFieldChange = (index, field, value) => {
    const updated = itemList.map((item, i) => {
      if (i !== index) return item;
      return { ...item, [field]: value };
    });
    updateItems(updated);
  };

  return (
    <div className="space-y-3 pt-3 border-t border-slate-200">
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-2">
          <Layers size={14} className="text-[#0D5C75]" />
          <label className="text-xs font-semibold uppercase tracking-wider text-[#0D5C75]">
            Repeatable Cards / Steps / Items ({itemList.length})
          </label>
        </div>
        <button
          type="button"
          onClick={handleAddItem}
          className="flex items-center gap-1.5 px-2.5 py-1 text-xs font-semibold bg-[#0D5C75]/10 hover:bg-[#0D5C75]/20 text-[#0D5C75] border border-[#0D5C75]/30 rounded-lg transition-all"
        >
          <Plus size={13} />
          Add Item / Card
        </button>
      </div>

      {itemList.length === 0 ? (
        <p className="text-[11px] text-slate-500 italic py-2">
          No repeatable items configured for this section. Click "Add Item / Card" to create cards, pillars, or steps.
        </p>
      ) : (
        <div className="space-y-2">
          {itemList.map((item, idx) => {
            const isEditing = editingItemIdx === idx;
            const itemLabel = item.title || item.heading || item.name || item.stat || `Item #${idx + 1}`;
            const itemSub = item.eyebrow || item.stat || item.num || item.channel || item.stage || '';
            const itemDesc = item.desc || item.description || item.text || item.body || item.detail || '';

            return (
              <div
                key={idx}
                className="bg-white border border-slate-200 rounded-lg overflow-hidden transition-all shadow-2xs"
              >
                {/* Item Summary Bar */}
                <div className="flex items-center justify-between px-3 py-2 bg-[#F8F9FA]">
                  <div className="flex items-center gap-2 min-w-0 flex-1">
                    <div className="flex flex-col gap-0.5 shrink-0">
                      <button
                        type="button"
                        onClick={() => handleMoveItem(idx, 'up')}
                        disabled={idx === 0}
                        className="text-slate-400 hover:text-slate-700 disabled:opacity-20 transition-colors"
                      >
                        <ChevronUp size={12} />
                      </button>
                      <button
                        type="button"
                        onClick={() => handleMoveItem(idx, 'down')}
                        disabled={idx === itemList.length - 1}
                        className="text-slate-400 hover:text-slate-700 disabled:opacity-20 transition-colors"
                      >
                        <ChevronDown size={12} />
                      </button>
                    </div>

                    <span className="w-5 h-5 rounded bg-slate-200 text-slate-700 text-[10px] font-mono font-semibold flex items-center justify-center shrink-0">
                      {idx + 1}
                    </span>

                    <div className="min-w-0 flex-1">
                      <div className="flex items-center gap-2">
                        <span className="text-xs font-semibold text-slate-900 truncate">{itemLabel}</span>
                        {itemSub && (
                          <span className="text-[10px] font-mono text-[#0D5C75] font-semibold uppercase px-1.5 py-0.5 bg-[#0D5C75]/10 rounded">
                            {itemSub}
                          </span>
                        )}
                      </div>
                      {itemDesc && (
                        <p className="text-[11px] text-slate-500 truncate">{itemDesc}</p>
                      )}
                    </div>
                  </div>

                  <div className="flex items-center gap-1 shrink-0 ml-2">
                    <button
                      type="button"
                      onClick={() => setEditingItemIdx(isEditing ? null : idx)}
                      className={`p-1.5 rounded text-xs transition-colors ${
                        isEditing ? 'bg-[#0D5C75]/15 text-[#0D5C75] font-semibold' : 'text-slate-500 hover:text-slate-900 hover:bg-slate-100'
                      }`}
                    >
                      {isEditing ? <X size={13} /> : <Edit2 size={13} />}
                    </button>
                    <button
                      type="button"
                      onClick={() => handleRemoveItem(idx)}
                      className="p-1.5 rounded text-slate-400 hover:text-rose-600 hover:bg-rose-50 transition-colors"
                    >
                      <Trash2 size={13} />
                    </button>
                  </div>
                </div>

                {/* Inline Item Details Editor */}
                {isEditing && (
                  <div className="p-3.5 bg-white border-t border-slate-100 space-y-3">
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
                      {/* Title */}
                      <div>
                        <label className="block text-[10px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                          Item Title / Heading
                        </label>
                        <input
                          type="text"
                          value={item.title || item.heading || item.name || ''}
                          onChange={(e) => {
                            handleFieldChange(idx, 'title', e.target.value);
                            if (item.heading) handleFieldChange(idx, 'heading', e.target.value);
                          }}
                          placeholder="e.g. Consistent Standards"
                          className="w-full bg-white border border-slate-200 rounded-lg px-2.5 py-1.5 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                        />
                      </div>

                      {/* Eyebrow / Subtitle / Number / Stat */}
                      <div>
                        <label className="block text-[10px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                          Eyebrow / Number / Stat Label
                        </label>
                        <input
                          type="text"
                          value={item.eyebrow || item.stat || item.num || item.channel || item.stage || ''}
                          onChange={(e) => {
                            handleFieldChange(idx, 'eyebrow', e.target.value);
                            if (item.stat !== undefined) handleFieldChange(idx, 'stat', e.target.value);
                            if (item.num !== undefined) handleFieldChange(idx, 'num', e.target.value);
                            if (item.channel !== undefined) handleFieldChange(idx, 'channel', e.target.value);
                          }}
                          placeholder="e.g. 01, 60+, FOUNDATIONAL QUALITY"
                          className="w-full bg-white border border-slate-200 rounded-lg px-2.5 py-1.5 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                        />
                      </div>

                      {/* Description / Detail */}
                      <div className="md:col-span-2">
                        <label className="block text-[10px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                          Description / Text / Body
                        </label>
                        <textarea
                          rows={2}
                          value={item.desc || item.description || item.text || item.body || ''}
                          onChange={(e) => {
                            handleFieldChange(idx, 'desc', e.target.value);
                            handleFieldChange(idx, 'description', e.target.value);
                            handleFieldChange(idx, 'text', e.target.value);
                          }}
                          placeholder="Item descriptive copy..."
                          className="w-full bg-white border border-slate-200 rounded-lg px-2.5 py-1.5 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] resize-y"
                        />
                      </div>

                      {/* Detail / Secondary text (optional) */}
                      {(item.detail !== undefined || item.footer !== undefined) && (
                        <div className="md:col-span-2">
                          <label className="block text-[10px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                            Secondary Detail / Footer Note
                          </label>
                          <input
                            type="text"
                            value={item.detail || item.footer || ''}
                            onChange={(e) => {
                              if (item.detail !== undefined) handleFieldChange(idx, 'detail', e.target.value);
                              if (item.footer !== undefined) handleFieldChange(idx, 'footer', e.target.value);
                            }}
                            placeholder="Additional nuance or badge text"
                            className="w-full bg-white border border-slate-200 rounded-lg px-2.5 py-1.5 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                          />
                        </div>
                      )}

                      {/* CTA Text & Link (optional) */}
                      <div>
                        <label className="block text-[10px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                          Button / Link Text
                        </label>
                        <input
                          type="text"
                          value={item.cta_text || ''}
                          onChange={(e) => handleFieldChange(idx, 'cta_text', e.target.value)}
                          placeholder="e.g. Learn More"
                          className="w-full bg-white border border-slate-200 rounded-lg px-2.5 py-1.5 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                        />
                      </div>
                      <div>
                        <label className="block text-[10px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                          Link Target URL
                        </label>
                        <input
                          type="text"
                          value={item.cta_url || item.value || ''}
                          onChange={(e) => {
                            handleFieldChange(idx, 'cta_url', e.target.value);
                            if (item.value !== undefined) handleFieldChange(idx, 'value', e.target.value);
                          }}
                          placeholder="/page or #target or mailto:..."
                          className="w-full bg-white border border-slate-200 rounded-lg px-2.5 py-1.5 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                        />
                      </div>

                      {/* Item Image (if used) */}
                      <div className="md:col-span-2">
                        <label className="block text-[10px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                          Item Image URL (Optional)
                        </label>
                        <div className="flex gap-2">
                          <input
                            type="text"
                            value={item.image || item.image_url || ''}
                            onChange={(e) => {
                              handleFieldChange(idx, 'image', e.target.value);
                              handleFieldChange(idx, 'image_url', e.target.value);
                            }}
                            placeholder="/assets/image.jpg"
                            className="flex-1 bg-white border border-slate-200 rounded-lg px-2.5 py-1.5 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                          />
                          <button
                            type="button"
                            onClick={() =>
                              onOpenMedia((url) => {
                                handleFieldChange(idx, 'image', url);
                                handleFieldChange(idx, 'image_url', url);
                              })
                            }
                            className="shrink-0 flex items-center gap-1 px-3 py-1.5 bg-slate-50 border border-slate-200 hover:bg-slate-100 rounded-lg text-xs text-slate-700 font-medium transition-all"
                          >
                            <ImageIcon size={13} />
                            <span>Media</span>
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                )}
              </div>
            );
          })}
        </div>
      )}
    </div>
  );
}

// ─── Inline Section Editor Panel ──────────────────────────────────────────────
function SectionEditorPanel({ section, onSave, onCancel, onOpenMedia }) {
  let initialItems = [];
  if (section.items_json) {
    try {
      initialItems = typeof section.items_json === 'string'
        ? JSON.parse(section.items_json)
        : section.items_json;
    } catch {
      initialItems = [];
    }
  }

  const [form, setForm] = useState({
    eyebrow: section.eyebrow || '',
    heading: section.heading || section.title || '',
    subheading: section.subheading || section.subtitle || '',
    body: section.body || '',
    cta_text: section.cta_text || '',
    cta_url: section.cta_url || '',
    secondary_cta_text: section.secondary_cta_text || '',
    secondary_cta_url: section.secondary_cta_url || '',
    image_url: section.image_url || '',
    video_url: section.video_url || '',
    is_active: section.is_active !== 0,
    items_json: JSON.stringify(initialItems),
  });

  const [parsedItems, setParsedItems] = useState(initialItems);

  const set = (field) => (e) => setForm((prev) => ({ ...prev, [field]: e.target.value }));

  const handleItemsChange = (newItems) => {
    setParsedItems(newItems);
    setForm((prev) => ({ ...prev, items_json: JSON.stringify(newItems) }));
  };

  const handleSave = () => {
    onSave({
      ...form,
      items_json: JSON.stringify(parsedItems),
    });
  };

  return (
    <div className="bg-white border-2 border-[#1B365D]/30 rounded-xl p-5 space-y-5 mt-3 shadow-md">
      <div className="flex items-center justify-between pb-3 border-b border-slate-100">
        <div className="flex items-center gap-2">
          <Sparkles size={15} className="text-[#0D5C75]" />
          <span className="text-xs font-bold text-slate-900 uppercase tracking-wider">
            Edit Section: <strong className="text-[#0D5C75] font-mono">{section.section_key}</strong>
          </span>
        </div>
        <span className="text-[10px] font-mono text-slate-600 uppercase bg-slate-100 px-2.5 py-0.5 rounded font-medium border border-slate-200">
          Type: {section.section_type || 'editorial'}
        </span>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
        {/* Eyebrow */}
        <div>
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
            Eyebrow Label
          </label>
          <input
            type="text"
            value={form.eyebrow}
            onChange={set('eyebrow')}
            placeholder="e.g. ABOUT ONECORE"
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
          />
        </div>

        {/* Heading */}
        <div>
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
            Heading / Title *
          </label>
          <input
            type="text"
            value={form.heading}
            onChange={set('heading')}
            placeholder="Main section heading"
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] font-medium"
          />
        </div>

        {/* Subheading */}
        <div className="md:col-span-2">
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
            Subheading / Subtitle
          </label>
          <input
            type="text"
            value={form.subheading}
            onChange={set('subheading')}
            placeholder="Subtitle or additional contextual tagline"
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
          />
        </div>

        {/* Body */}
        <div className="md:col-span-2">
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
            Body / Paragraph Copy
          </label>
          <textarea
            value={form.body}
            onChange={set('body')}
            rows={4}
            placeholder="Section editorial copy..."
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] resize-y leading-relaxed"
          />
        </div>

        {/* Primary CTA */}
        <div>
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
            Primary CTA Button Label
          </label>
          <input
            type="text"
            value={form.cta_text}
            onChange={set('cta_text')}
            placeholder="e.g. Discover Onecore"
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
          />
        </div>
        <div>
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
            Primary CTA Destination URL
          </label>
          <input
            type="text"
            value={form.cta_url}
            onChange={set('cta_url')}
            placeholder="/about or #principles"
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
          />
        </div>

        {/* Secondary CTA */}
        <div>
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
            Secondary CTA Button Label (Optional)
          </label>
          <input
            type="text"
            value={form.secondary_cta_text}
            onChange={set('secondary_cta_text')}
            placeholder="e.g. Contact Details"
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
          />
        </div>
        <div>
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
            Secondary CTA Destination URL
          </label>
          <input
            type="text"
            value={form.secondary_cta_url}
            onChange={set('secondary_cta_url')}
            placeholder="/contact#contact-details"
            className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
          />
        </div>

        {/* Image URL & Selector */}
        <div>
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
            Section Image URL
          </label>
          <div className="flex gap-2">
            <input
              type="text"
              value={form.image_url}
              onChange={set('image_url')}
              placeholder="/assets/quality.jpg"
              className="flex-1 bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
            />
            <button
              type="button"
              onClick={() => onOpenMedia((url) => setForm((p) => ({ ...p, image_url: url })))}
              className="shrink-0 flex items-center gap-1.5 px-3 py-2 bg-slate-50 border border-slate-200 hover:bg-slate-100 rounded-lg text-xs font-semibold text-slate-700 transition-all"
            >
              <ImageIcon size={14} />
              <span>Choose</span>
            </button>
          </div>
          {form.image_url && (
            <div className="mt-2.5 flex items-center gap-3 p-2 bg-slate-50 border border-slate-200 rounded-lg">
              <img
                src={assetUrl(form.image_url)}
                alt="Section Preview"
                className="w-16 h-10 object-cover rounded border border-slate-200 bg-white"
                onError={(e) => {
                  e.target.style.display = 'none';
                }}
              />
              <span className="text-[11px] text-slate-500 font-mono truncate">{form.image_url}</span>
            </div>
          )}
        </div>

        {/* Video URL & Selector */}
        <div>
          <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
            Section Video URL (Optional)
          </label>
          <div className="flex gap-2">
            <input
              type="text"
              value={form.video_url}
              onChange={set('video_url')}
              placeholder="/assets/manufacturing-hero.mp4"
              className="flex-1 bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
            />
            <button
              type="button"
              onClick={() => onOpenMedia((url) => setForm((p) => ({ ...p, video_url: url })))}
              className="shrink-0 flex items-center gap-1.5 px-3 py-2 bg-slate-50 border border-slate-200 hover:bg-slate-100 rounded-lg text-xs font-semibold text-slate-700 transition-all"
            >
              <ImageIcon size={14} />
              <span>Choose</span>
            </button>
          </div>
          {form.video_url && (
            <div className="mt-2.5 flex items-center gap-3 p-2 bg-slate-50 border border-slate-200 rounded-lg">
              <span className="text-[11px] text-slate-500 font-mono truncate">🎬 {form.video_url}</span>
            </div>
          )}
        </div>

        {/* Repeatable Cards / Items */}
        <div className="md:col-span-2">
          <SectionItemsManager
            items={parsedItems}
            onChange={handleItemsChange}
            onOpenMedia={onOpenMedia}
          />
        </div>
      </div>

      {/* Action Buttons */}
      <div className="flex items-center justify-end gap-2.5 pt-4 border-t border-slate-100">
        <button
          type="button"
          onClick={onCancel}
          className="px-4 py-2 text-xs font-semibold text-slate-600 hover:text-slate-900 bg-slate-100 hover:bg-slate-200 rounded-lg transition-colors"
        >
          Cancel
        </button>
        <button
          type="button"
          onClick={handleSave}
          className="flex items-center gap-1.5 px-4 py-2 text-xs font-semibold bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg transition-colors shadow-xs"
        >
          <Save size={13} />
          <span>Save Section</span>
        </button>
      </div>
    </div>
  );
}

// ─── Main AdminPageEditor Component ───────────────────────────────────────────
export default function AdminPageEditor() {
  const { pageKey } = useParams();
  const navigate = useNavigate();
  const { token } = useAdminAuth();

  const [page, setPage] = useState(null);
  const [sections, setSections] = useState([]);
  const [loading, setLoading] = useState(true);
  const [savingPage, setSavingPage] = useState(false);
  const [editingSectionId, setEditingSectionId] = useState(null);
  const [addingSection, setAddingSection] = useState(false);
  const [deleteTargetId, setDeleteTargetId] = useState(null);
  const [toast, setToast] = useState(null);
  const [mediaSelectorCb, setMediaSelectorCb] = useState(null);

  // New section form
  const [newSectionForm, setNewSectionForm] = useState({
    section_key: '',
    section_type: 'editorial',
    heading: '',
    eyebrow: '',
    subheading: '',
    body: '',
    image_url: '',
    video_url: '',
    cta_text: '',
    cta_url: '',
    secondary_cta_text: '',
    secondary_cta_url: '',
  });

  const showToast = (type, message) => setToast({ type, message });

  const fetchPage = useCallback(async () => {
    setLoading(true);
    try {
      const res = await fetch(`/api/pages/${pageKey}`, {
        headers: { Authorization: `Bearer ${token}` },
      });
      if (res.ok) {
        const data = await res.json();
        if (data.success && data.data) {
          setPage(data.data);
          setSections(data.data.sections || []);
        } else {
          showToast('error', 'Page not found.');
        }
      } else {
        showToast('error', `Failed to load page (HTTP ${res.status}).`);
      }
    } catch (err) {
      showToast('error', `Network error: ${err.message}`);
    } finally {
      setLoading(false);
    }
  }, [pageKey, token]);

  useEffect(() => {
    document.title = `Edit ${pageKey} | Onecore Admin`;
    fetchPage();
  }, [pageKey, fetchPage]);

  // Save Page Settings (SEO Title, Description, etc.)
  const handleSavePageSettings = async () => {
    if (!page) return;
    setSavingPage(true);
    try {
      const res = await fetch(`/api/pages/${page.id}`, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify({
          title: page.title,
          slug: page.slug,
          status: page.status,
          seo_title: page.seo_title,
          seo_description: page.seo_description,
        }),
      });
      const data = await res.json();
      if (res.ok && data.success) {
        showToast('success', 'Page settings saved successfully.');
      } else {
        showToast('error', data.message || 'Save failed.');
      }
    } catch (err) {
      showToast('error', err.message);
    } finally {
      setSavingPage(false);
    }
  };

  // Save / Update Section
  const handleSaveSection = async (sectionId, updatedFields) => {
    try {
      const res = await fetch(`/api/pages/sections/${sectionId}`, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(updatedFields),
      });
      const data = await res.json();
      if (res.ok && data.success) {
        showToast('success', 'Section updated successfully.');
        setEditingSectionId(null);
        fetchPage();
      } else {
        showToast('error', data.message || 'Save failed.');
      }
    } catch (err) {
      showToast('error', err.message);
    }
  };

  // Add New Section
  const handleCreateSection = async (e) => {
    e.preventDefault();
    if (!newSectionForm.section_key.trim()) {
      showToast('error', 'Section key identifier is required.');
      return;
    }
    if (!newSectionForm.heading.trim()) {
      showToast('error', 'Heading is required.');
      return;
    }

    try {
      const res = await fetch(`/api/pages/${page.id}/sections`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(newSectionForm),
      });
      const data = await res.json();
      if (res.ok && data.success) {
        showToast('success', 'Section added successfully.');
        setAddingSection(false);
        setNewSectionForm({
          section_key: '',
          section_type: 'editorial',
          heading: '',
          eyebrow: '',
          subheading: '',
          body: '',
          image_url: '',
          video_url: '',
          cta_text: '',
          cta_url: '',
          secondary_cta_text: '',
          secondary_cta_url: '',
        });
        fetchPage();
      } else {
        showToast('error', data.message || 'Create failed.');
      }
    } catch (err) {
      showToast('error', err.message);
    }
  };

  // Delete Section
  const handleDeleteSection = async () => {
    if (!deleteTargetId) return;
    try {
      const res = await fetch(`/api/pages/sections/${deleteTargetId}`, {
        method: 'DELETE',
        headers: { Authorization: `Bearer ${token}` },
      });
      const data = await res.json();
      if (res.ok && data.success) {
        showToast('success', 'Section deleted successfully.');
        fetchPage();
      } else {
        showToast('error', data.message || 'Delete failed.');
      }
    } catch (err) {
      showToast('error', err.message);
    } finally {
      setDeleteTargetId(null);
    }
  };

  // Toggle Visibility
  const handleToggleVisibility = async (sec) => {
    const newActive = sec.is_active === 1 ? 0 : 1;
    try {
      const res = await fetch(`/api/pages/sections/${sec.id}`, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify({ is_active: newActive }),
      });
      if (res.ok) {
        setSections((prev) =>
          prev.map((s) => (s.id === sec.id ? { ...s, is_active: newActive } : s))
        );
        showToast('success', `Section ${newActive === 1 ? 'shown' : 'hidden'}.`);
      }
    } catch {
      showToast('error', 'Update failed.');
    }
  };

  // Move Section Up / Down
  const handleReorder = async (index, direction) => {
    const swapIndex = direction === 'up' ? index - 1 : index + 1;
    if (swapIndex < 0 || swapIndex >= sections.length) return;

    const newSections = [...sections];
    [newSections[index], newSections[swapIndex]] = [newSections[swapIndex], newSections[index]];
    setSections(newSections);

    try {
      await fetch(`/api/pages/${page.id}/reorder-sections`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify({ orderedIds: newSections.map((s) => s.id) }),
      });
      showToast('success', 'Section order saved.');
    } catch {
      showToast('error', 'Reorder failed.');
      fetchPage();
    }
  };

  const publicUrl = page?.slug || (page?.page_key === 'home' ? '/' : `/${page?.page_key || ''}`);

  return (
    <AdminLayout
      title={`Edit Page: ${page?.title || pageKey}`}
      subtitle="Structured section builder — headings, paragraphs, cards, images, and CTAs"
    >
      {/* Header Actions & Back */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
        <Link
          to="/admin/pages"
          className="flex items-center gap-1 text-xs font-semibold text-slate-500 hover:text-slate-800 transition-colors"
        >
          <ChevronLeft size={16} />
          <span>Back to All Pages</span>
        </Link>

        <div className="flex items-center gap-2.5">
          <a
            href={publicUrl}
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center gap-1.5 px-3 py-2 bg-white border border-slate-200 hover:bg-slate-50 text-slate-700 text-xs font-semibold rounded-lg transition-all shadow-xs"
          >
            <span>View Live Page</span>
            <ExternalLink size={13} />
          </a>
          <button
            type="button"
            onClick={() => setAddingSection(true)}
            className="flex items-center gap-1.5 px-3.5 py-2 bg-[#0D5C75] hover:bg-[#0b4b60] text-white text-xs font-semibold rounded-lg transition-all shadow-xs"
          >
            <Plus size={14} />
            <span>Add Section</span>
          </button>
        </div>
      </div>

      {/* Page Metadata & SEO Card */}
      {page && (
        <AdminCard
          title="Page & SEO Settings"
          subtitle="Configure metadata, browser title, and page slug"
          action={
            <button
              type="button"
              onClick={handleSavePageSettings}
              disabled={savingPage}
              className="flex items-center gap-1.5 px-3.5 py-1.5 bg-[#1B365D] hover:bg-[#152a48] text-white text-xs font-semibold rounded-lg transition-all shadow-xs disabled:opacity-50"
            >
              <Save size={13} />
              <span>{savingPage ? 'Saving...' : 'Save Page Settings'}</span>
            </button>
          }
        >
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Page Title
              </label>
              <input
                type="text"
                value={page.title || ''}
                onChange={(e) => setPage({ ...page, title: e.target.value })}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                URL Slug / Route
              </label>
              <input
                type="text"
                value={page.slug || ''}
                onChange={(e) => setPage({ ...page, slug: e.target.value })}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 font-mono focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Publish Status
              </label>
              <select
                value={page.status || 'published'}
                onChange={(e) => setPage({ ...page, status: e.target.value })}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              >
                <option value="published">Published</option>
                <option value="draft">Draft</option>
              </select>
            </div>
            <div className="md:col-span-3">
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                SEO Meta Title
              </label>
              <input
                type="text"
                value={page.seo_title || ''}
                onChange={(e) => setPage({ ...page, seo_title: e.target.value })}
                placeholder="Title shown in search engines and browser tabs"
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div className="md:col-span-3">
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                SEO Meta Description
              </label>
              <textarea
                rows={2}
                value={page.seo_description || ''}
                onChange={(e) => setPage({ ...page, seo_description: e.target.value })}
                placeholder="Brief summary shown in search engine snippet results"
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] resize-y"
              />
            </div>
          </div>
        </AdminCard>
      )}

      {/* Add New Section Modal / Form */}
      {addingSection && (
        <AdminCard
          title="Add New Page Section"
          subtitle="Create a new structured section for this page"
          className="border-2 border-[#0D5C75]/40"
        >
          <form onSubmit={handleCreateSection} className="space-y-4">
            <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
              <div>
                <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                  Section Key Identifier *
                </label>
                <input
                  type="text"
                  required
                  value={newSectionForm.section_key}
                  onChange={(e) =>
                    setNewSectionForm({ ...newSectionForm, section_key: e.target.value })
                  }
                  placeholder="e.g. clinical_advantages"
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                />
              </div>
              <div>
                <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                  Section Type
                </label>
                <select
                  value={newSectionForm.section_type}
                  onChange={(e) =>
                    setNewSectionForm({ ...newSectionForm, section_type: e.target.value })
                  }
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                >
                  <option value="editorial">Editorial / Text + Image</option>
                  <option value="hero">Hero Section</option>
                  <option value="cards">Cards / Grid</option>
                  <option value="statistics">Statistics / Metrics</option>
                  <option value="timeline">Timeline / Process Steps</option>
                  <option value="cta">Call To Action (CTA)</option>
                </select>
              </div>
              <div>
                <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                  Eyebrow Label
                </label>
                <input
                  type="text"
                  value={newSectionForm.eyebrow}
                  onChange={(e) =>
                    setNewSectionForm({ ...newSectionForm, eyebrow: e.target.value })
                  }
                  placeholder="e.g. CLINICAL ADVANTAGES"
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                />
              </div>
              <div className="md:col-span-3">
                <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                  Heading / Title *
                </label>
                <input
                  type="text"
                  required
                  value={newSectionForm.heading}
                  onChange={(e) =>
                    setNewSectionForm({ ...newSectionForm, heading: e.target.value })
                  }
                  placeholder="Main heading displayed on the page"
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                />
              </div>
              <div className="md:col-span-3">
                <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                  Subheading
                </label>
                <input
                  type="text"
                  value={newSectionForm.subheading}
                  onChange={(e) =>
                    setNewSectionForm({ ...newSectionForm, subheading: e.target.value })
                  }
                  placeholder="Contextual subtitle"
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                />
              </div>
              <div className="md:col-span-3">
                <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1">
                  Body / Paragraph Copy
                </label>
                <textarea
                  rows={3}
                  value={newSectionForm.body}
                  onChange={(e) =>
                    setNewSectionForm({ ...newSectionForm, body: e.target.value })
                  }
                  placeholder="Editorial paragraph content..."
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] resize-y"
                />
              </div>
            </div>

            <div className="flex items-center justify-end gap-2.5 pt-3 border-t border-slate-100">
              <button
                type="button"
                onClick={() => setAddingSection(false)}
                className="px-4 py-2 text-xs font-semibold text-slate-600 hover:text-slate-900 bg-slate-100 hover:bg-slate-200 rounded-lg transition-colors"
              >
                Cancel
              </button>
              <button
                type="submit"
                className="flex items-center gap-1.5 px-4 py-2 text-xs font-semibold bg-[#0D5C75] hover:bg-[#0b4b60] text-white rounded-lg transition-colors shadow-xs"
              >
                <Plus size={13} />
                <span>Create Section</span>
              </button>
            </div>
          </form>
        </AdminCard>
      )}

      {/* Sections List */}
      <AdminCard
        title={`Page Sections (${sections.length})`}
        subtitle="Ordered modular sections rendered sequentially on this page"
      >
        {loading ? (
          <div className="py-12 text-center text-slate-400 text-xs">
            Loading page sections from MySQL database...
          </div>
        ) : sections.length === 0 ? (
          <div className="py-12 text-center text-slate-400 text-xs">
            <FileText size={32} className="mx-auto mb-2 text-slate-300" />
            <p className="font-medium text-slate-600">No sections found for this page.</p>
            <button
              type="button"
              onClick={() => setAddingSection(true)}
              className="mt-3 px-3.5 py-1.5 bg-[#0D5C75] text-white text-xs font-semibold rounded-lg"
            >
              Add First Section
            </button>
          </div>
        ) : (
          <div className="space-y-3.5">
            {sections.map((sec, idx) => {
              const isEditing = editingSectionId === sec.id;
              let itemsCount = 0;
              if (sec.items_json) {
                try {
                  const p = typeof sec.items_json === 'string' ? JSON.parse(sec.items_json) : sec.items_json;
                  itemsCount = Array.isArray(p) ? p.length : 0;
                } catch {}
              }

              return (
                <div
                  key={sec.id}
                  className={`border rounded-xl transition-all shadow-xs ${
                    isEditing
                      ? 'border-[#1B365D] bg-[#FAFAFC]'
                      : sec.is_active === 0
                      ? 'border-slate-200 bg-slate-50/60 opacity-60'
                      : 'border-slate-200 bg-white hover:border-slate-300'
                  }`}
                >
                  {/* Section Summary Row */}
                  <div className="p-4 flex items-center justify-between gap-3">
                    <div className="flex items-center gap-3 min-w-0 flex-1">
                      {/* Reorder Buttons */}
                      <div className="flex flex-col gap-0.5 shrink-0">
                        <button
                          type="button"
                          onClick={() => handleReorder(idx, 'up')}
                          disabled={idx === 0}
                          className="text-slate-400 hover:text-slate-800 disabled:opacity-20 transition-colors"
                          title="Move Up"
                        >
                          <ChevronUp size={14} />
                        </button>
                        <button
                          type="button"
                          onClick={() => handleReorder(idx, 'down')}
                          disabled={idx === sections.length - 1}
                          className="text-slate-400 hover:text-slate-800 disabled:opacity-20 transition-colors"
                          title="Move Down"
                        >
                          <ChevronDown size={14} />
                        </button>
                      </div>

                      {/* Display Order Pill */}
                      <span className="w-6 h-6 rounded-full bg-slate-100 border border-slate-200 text-slate-700 text-xs font-mono font-bold flex items-center justify-center shrink-0">
                        {idx + 1}
                      </span>

                      {/* Section Info */}
                      <div className="min-w-0 flex-1">
                        <div className="flex items-center gap-2 flex-wrap">
                          <span className="text-xs font-mono font-bold text-[#0D5C75]">
                            {sec.section_key}
                          </span>
                          <span className="text-[10px] font-mono text-slate-500 bg-slate-100 px-1.5 py-0.5 rounded">
                            {sec.section_type || 'editorial'}
                          </span>
                          {itemsCount > 0 && (
                            <span className="text-[10px] font-mono text-emerald-700 bg-emerald-50 border border-emerald-200 px-1.5 py-0.5 rounded font-semibold">
                              {itemsCount} items
                            </span>
                          )}
                          {sec.image_url && (
                            <span className="text-[10px] font-mono text-blue-700 bg-blue-50 border border-blue-200 px-1.5 py-0.5 rounded font-medium flex items-center gap-1">
                              <ImageIcon size={10} /> image
                            </span>
                          )}
                          {sec.is_active === 0 && (
                            <span className="text-[10px] font-mono text-rose-700 bg-rose-50 border border-rose-200 px-1.5 py-0.5 rounded font-semibold">
                              Hidden
                            </span>
                          )}
                        </div>
                        <h4 className="text-sm font-semibold text-slate-900 mt-1 truncate">
                          {sec.heading || sec.title || 'Untitled Section'}
                        </h4>
                        {(sec.body || sec.subheading) && (
                          <p className="text-xs text-slate-500 truncate mt-0.5">
                            {sec.subheading || sec.body}
                          </p>
                        )}
                      </div>
                    </div>

                    {/* Action Buttons */}
                    <div className="flex items-center gap-1.5 shrink-0">
                      <button
                        type="button"
                        onClick={() => handleToggleVisibility(sec)}
                        className={`p-2 rounded-lg transition-colors text-xs ${
                          sec.is_active !== 0
                            ? 'text-slate-500 hover:text-slate-900 hover:bg-slate-100'
                            : 'text-amber-700 hover:bg-amber-50'
                        }`}
                        title={sec.is_active !== 0 ? 'Hide Section' : 'Show Section'}
                      >
                        {sec.is_active !== 0 ? <Eye size={15} /> : <EyeOff size={15} />}
                      </button>

                      <button
                        type="button"
                        onClick={() => setEditingSectionId(isEditing ? null : sec.id)}
                        className={`flex items-center gap-1 px-3 py-1.5 rounded-lg text-xs font-semibold transition-all ${
                          isEditing
                            ? 'bg-[#1B365D] text-white shadow-xs'
                            : 'bg-slate-100 hover:bg-slate-200 text-slate-800'
                        }`}
                      >
                        <Edit2 size={12} />
                        <span>{isEditing ? 'Close' : 'Edit'}</span>
                      </button>

                      <button
                        type="button"
                        onClick={() => setDeleteTargetId(sec.id)}
                        className="p-2 text-slate-400 hover:text-rose-600 hover:bg-rose-50 rounded-lg transition-colors"
                        title="Delete Section"
                      >
                        <Trash2 size={14} />
                      </button>
                    </div>
                  </div>

                  {/* Expanded Section Editor */}
                  {isEditing && (
                    <div className="p-4 pt-0">
                      <SectionEditorPanel
                        section={sec}
                        onSave={(updated) => handleSaveSection(sec.id, updated)}
                        onCancel={() => setEditingSectionId(null)}
                        onOpenMedia={(cb) => setMediaSelectorCb(() => cb)}
                      />
                    </div>
                  )}
                </div>
              );
            })}
          </div>
        )}
      </AdminCard>

      {/* Delete Confirmation Modal */}
      <ConfirmModal
        isOpen={!!deleteTargetId}
        title="Delete Page Section"
        message="Are you sure you want to delete this section from MySQL? This action cannot be undone."
        confirmLabel="Delete Section"
        onConfirm={handleDeleteSection}
        onCancel={() => setDeleteTargetId(null)}
        dangerous
      />

      {/* Media Selector Modal */}
      <MediaSelectorModal
        isOpen={!!mediaSelectorCb}
        onClose={() => setMediaSelectorCb(null)}
        onSelect={(url) => {
          if (mediaSelectorCb) mediaSelectorCb(url);
          setMediaSelectorCb(null);
        }}
      />

      {/* Toast Notification */}
      <ToastNotification toast={toast} onDismiss={() => setToast(null)} />
    </AdminLayout>
  );
}
