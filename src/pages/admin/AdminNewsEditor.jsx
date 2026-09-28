import React, { useState, useEffect } from 'react';
import { useParams, useNavigate, Link } from 'react-router-dom';
import { ChevronLeft, Save, Image as ImageIcon, ExternalLink } from 'lucide-react';
import AdminLayout from '../../components/admin/AdminLayout';
import { AdminCard } from '../../components/admin/AdminCard';
import ToastNotification from '../../components/admin/ToastNotification';
import MediaSelectorModal from '../../components/admin/MediaSelectorModal';
import { useAdminAuth } from '../../context/AdminAuthContext';
import { newsArticles } from '../../data/news';

const CATEGORIES = [
  'RESEARCH & FORMULATION',
  'CLINICAL PRACTICE',
  'SUSTAINABILITY',
  'CORPORATE UPDATE',
  'REGULATORY & QUALITY',
  'SCIENTIFIC DIALOGUE',
];

function FieldLabel({ children, required }) {
  return (
    <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
      {children}
      {required && <span className="text-rose-600 ml-1">*</span>}
    </label>
  );
}

export default function AdminNewsEditor() {
  const { id } = useParams(); // 'new' or article id
  const navigate = useNavigate();
  const { token } = useAdminAuth();
  const isNew = id === 'new';

  const [loading, setLoading] = useState(!isNew);
  const [saving, setSaving] = useState(false);
  const [toast, setToast] = useState(null);
  const [mediaOpen, setMediaOpen] = useState(false);

  const showToast = (type, message) => setToast({ type, message });

  const [form, setForm] = useState({
    title: '',
    slug: '',
    category: 'RESEARCH & FORMULATION',
    excerpt: '',
    content: '',
    featured_image_url: '',
    status: 'published',
    read_time: '4 min read',
  });

  const set = (key) => (e) => setForm((prev) => ({ ...prev, [key]: e.target.value }));

  // Auto-generate slug from title
  const handleTitleChange = (e) => {
    const title = e.target.value;
    const slug = title
      .toLowerCase()
      .replace(/[^a-z0-9\s-]/g, '')
      .replace(/\s+/g, '-')
      .replace(/-+/g, '-')
      .slice(0, 80);
    setForm((prev) => ({ ...prev, title, ...(isNew ? { slug } : {}) }));
  };

  useEffect(() => {
    document.title = isNew ? 'New Article | Onecore Admin' : 'Edit Article | Onecore Admin';
    if (isNew) return;

    setLoading(true);
    fetch(`/api/news/${id}`, {
      headers: { Authorization: `Bearer ${token}` },
    })
      .then((r) => r.json())
      .then((d) => {
        if (d.success && d.data) {
          const a = d.data;
          setForm({
            title: a.title || '',
            slug: a.slug || '',
            category: a.category || 'RESEARCH & FORMULATION',
            excerpt: a.excerpt || '',
            content: a.content || a.excerpt || '',
            featured_image_url: a.featured_image_url || '',
            status: a.status || 'published',
            read_time: a.read_time || '4 min read',
          });
        } else {
          // Check static news
          const found = newsArticles.find((n) => String(n.id) === id || n.slug === id);
          if (found) {
            setForm({
              title: found.title,
              slug: found.slug || id,
              category: found.category || 'RESEARCH & FORMULATION',
              excerpt: found.excerpt,
              content: found.excerpt,
              featured_image_url: found.image || '',
              status: 'published',
              read_time: '4 min read',
            });
          }
        }
      })
      .catch(() => showToast('error', 'Failed to load article.'))
      .finally(() => setLoading(false));
  }, [id, isNew, token]);

  const handleSave = async () => {
    if (!form.title.trim()) {
      showToast('error', 'Title is required.');
      return;
    }
    if (!form.excerpt.trim()) {
      showToast('error', 'Excerpt is required.');
      return;
    }

    setSaving(true);
    const method = isNew ? 'POST' : 'PUT';
    const endpoint = isNew ? '/api/news' : `/api/news/${id}`;

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
        showToast('success', isNew ? 'Article published.' : 'Article updated.');
        if (isNew && data.data?.id) {
          navigate(`/admin/news/${data.data.id}`, { replace: true });
        }
      } else {
        showToast('error', data.message || 'Failed to save article.');
      }
    } catch (err) {
      showToast('error', err.message);
    } finally {
      setSaving(false);
    }
  };

  return (
    <AdminLayout
      title={isNew ? 'New News Article' : `Edit: ${form.title || id}`}
      subtitle="Publish corporate releases, research insights, and perspectives"
    >
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
        <Link
          to="/admin/news"
          className="flex items-center gap-1 text-xs font-semibold text-slate-500 hover:text-slate-800 transition-colors"
        >
          <ChevronLeft size={16} />
          <span>Back to News & Releases</span>
        </Link>

        <div className="flex items-center gap-2.5">
          <a
            href="/news"
            target="_blank"
            rel="noopener noreferrer"
            className="flex items-center gap-1.5 px-3 py-2 bg-white border border-slate-200 hover:bg-slate-50 text-slate-700 text-xs font-semibold rounded-lg transition-all shadow-xs"
          >
            <span>View News Section</span>
            <ExternalLink size={13} />
          </a>
          <button
            type="button"
            onClick={handleSave}
            disabled={saving}
            className="flex items-center gap-1.5 px-4 py-2 bg-[#1B365D] hover:bg-[#152a48] text-white text-xs font-semibold rounded-lg transition-all shadow-xs disabled:opacity-50"
          >
            <Save size={14} />
            <span>{saving ? 'Saving...' : 'Save Article'}</span>
          </button>
        </div>
      </div>

      {loading ? (
        <div className="py-12 text-center text-slate-400 text-xs">
          Loading article data from MySQL...
        </div>
      ) : (
        <AdminCard
          title="Article Content & Metadata"
          subtitle="Headline, excerpt, editorial body, category, and featured image"
        >
          <div className="space-y-4">
            <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
              <div className="md:col-span-2">
                <FieldLabel required>Article Headline / Title</FieldLabel>
                <input
                  type="text"
                  required
                  value={form.title}
                  onChange={handleTitleChange}
                  placeholder="e.g. Aligning formulation chemistry with real-world patient adherence"
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] font-medium"
                />
              </div>

              <div>
                <FieldLabel required>Category</FieldLabel>
                <select
                  value={form.category}
                  onChange={set('category')}
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                >
                  {CATEGORIES.map((c) => (
                    <option key={c} value={c}>
                      {c}
                    </option>
                  ))}
                </select>
              </div>

              <div className="md:col-span-2">
                <FieldLabel required>URL Slug</FieldLabel>
                <input
                  type="text"
                  required
                  value={form.slug}
                  onChange={set('slug')}
                  placeholder="e.g. aligning-formulation-chemistry-with-patient-adherence"
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 font-mono focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                />
              </div>

              <div>
                <FieldLabel>Status</FieldLabel>
                <select
                  value={form.status}
                  onChange={set('status')}
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                >
                  <option value="published">Published</option>
                  <option value="draft">Draft</option>
                </select>
              </div>
            </div>

            {/* Excerpt */}
            <div>
              <FieldLabel required>Article Excerpt / Summary</FieldLabel>
              <textarea
                rows={3}
                required
                value={form.excerpt}
                onChange={set('excerpt')}
                placeholder="Short 2-3 sentence overview displayed on news cards..."
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] resize-y leading-relaxed"
              />
            </div>

            {/* Editorial Body */}
            <div>
              <FieldLabel>Full Editorial Body Content</FieldLabel>
              <textarea
                rows={8}
                value={form.content}
                onChange={set('content')}
                placeholder="Full article body paragraphs, clinical dialogue, references..."
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] resize-y leading-relaxed"
              />
            </div>

            {/* Featured Image */}
            <div>
              <FieldLabel>Featured Image URL</FieldLabel>
              <div className="flex gap-2">
                <input
                  type="text"
                  value={form.featured_image_url}
                  onChange={set('featured_image_url')}
                  placeholder="/assets/news-1.jpg"
                  className="flex-1 bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
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
              {form.featured_image_url && (
                <div className="mt-3 flex items-center gap-3 p-3 bg-slate-50 border border-slate-200 rounded-lg">
                  <img
                    src={form.featured_image_url}
                    alt="Article Featured"
                    className="w-20 h-12 object-cover rounded border border-slate-200 bg-white"
                    onError={(e) => {
                      e.target.style.display = 'none';
                    }}
                  />
                  <span className="text-xs text-slate-600 font-mono truncate">{form.featured_image_url}</span>
                </div>
              )}
            </div>
          </div>
        </AdminCard>
      )}

      {/* Media Selector Modal */}
      <MediaSelectorModal
        isOpen={mediaOpen}
        onClose={() => setMediaOpen(false)}
        onSelect={(url) => {
          setForm((p) => ({ ...p, featured_image_url: url }));
          setMediaOpen(false);
        }}
      />

      <ToastNotification toast={toast} onDismiss={() => setToast(null)} />
    </AdminLayout>
  );
}
