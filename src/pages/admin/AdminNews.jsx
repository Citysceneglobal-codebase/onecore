import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import {
  Newspaper,
  Plus,
  ExternalLink,
  Edit2,
  Trash2,
  Calendar,
  CheckCircle2,
  Clock,
} from 'lucide-react';
import AdminLayout from '../../components/admin/AdminLayout';
import { AdminCard } from '../../components/admin/AdminCard';
import AdminTable from '../../components/admin/AdminTable';
import ToastNotification from '../../components/admin/ToastNotification';
import ConfirmModal from '../../components/admin/ConfirmModal';
import { useAdminAuth } from '../../context/AdminAuthContext';
import { newsArticles } from '../../data/news';

export default function AdminNews() {
  const { token } = useAdminAuth();
  const [news, setNews] = useState([]);
  const [toast, setToast] = useState(null);
  const [deleteTarget, setDeleteTarget] = useState(null);

  const showToast = (type, message) => setToast({ type, message });

  const fetchNews = async () => {
    try {
      const res = await fetch('/api/news', {
        headers: { Authorization: `Bearer ${token}` },
      });
      if (res.ok) {
        const data = await res.json();
        if (data.success && Array.isArray(data.data) && data.data.length > 0) {
          setNews(data.data);
        } else {
          setNews(newsArticles);
        }
      }
    } catch {
      setNews(newsArticles);
    }
  };

  useEffect(() => {
    document.title = 'News & Press Releases | Onecore Admin';
    fetchNews();
  }, []);

  const handleDelete = async () => {
    if (!deleteTarget) return;
    try {
      const res = await fetch(`/api/news/${deleteTarget}`, {
        method: 'DELETE',
        headers: { Authorization: `Bearer ${token}` },
      });
      const data = await res.json();
      if (data.success) {
        setNews((prev) => prev.filter((n) => n.id !== deleteTarget));
        showToast('success', 'Article deleted successfully.');
      } else {
        showToast('error', data.message || 'Delete failed.');
      }
    } catch {
      showToast('error', 'Network error.');
    } finally {
      setDeleteTarget(null);
    }
  };

  return (
    <AdminLayout
      title="News & Press Releases"
      subtitle="Manage corporate updates, research releases, and announcements"
    >
      <AdminCard
        title="Published News & Media Articles"
        subtitle="Articles displayed on the public /news section"
        action={
          <Link
            to="/admin/news/new"
            className="flex items-center gap-1.5 px-3 py-1.5 text-xs font-semibold bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg transition-all shadow-xs"
          >
            <Plus size={13} />
            <span>New Article</span>
          </Link>
        }
      >
        <AdminTable
          headers={['Article Title', 'Category', 'Publication Date', 'Status', 'Actions']}
        >
          {news.map((item) => (
            <tr key={item.id} className="hover:bg-slate-50 transition-colors">
              <td className="py-3 px-4 font-semibold text-slate-900 max-w-sm">
                <div className="flex items-center gap-2">
                  <div className="p-1 rounded bg-slate-100 text-[#1B365D]">
                    <Newspaper size={14} />
                  </div>
                  <span className="truncate">{item.title}</span>
                </div>
              </td>
              <td className="py-3 px-4 text-[#0D5C75] font-mono text-[11px] font-semibold">
                {item.category}
              </td>
              <td className="py-3 px-4 font-mono text-[11px] text-slate-500">
                {item.published_date || (item.published_at ? new Date(item.published_at).toLocaleDateString() : 'Recent')}
              </td>
              <td className="py-3 px-4">
                <span
                  className={`px-2 py-0.5 rounded-full text-[10px] font-mono uppercase font-semibold border ${
                    item.status === 'published'
                      ? 'bg-emerald-50 text-emerald-700 border-emerald-200'
                      : 'bg-amber-50 text-amber-700 border-amber-200'
                  }`}
                >
                  {item.status || 'published'}
                </span>
              </td>
              <td className="py-3 px-4">
                <div className="flex items-center gap-2">
                  <Link
                    to={`/admin/news/${item.id}`}
                    className="flex items-center gap-1 px-2.5 py-1.5 text-xs font-semibold bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg transition-all shadow-xs"
                  >
                    <Edit2 size={12} />
                    <span>Edit</span>
                  </Link>
                  <a
                    href="/news"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="p-1.5 text-slate-400 hover:text-slate-800 hover:bg-slate-100 rounded-lg transition-colors"
                    title="View News Page"
                  >
                    <ExternalLink size={13} />
                  </a>
                  <button
                    onClick={() => setDeleteTarget(item.id)}
                    className="p-1.5 text-slate-400 hover:text-rose-600 hover:bg-rose-50 rounded-lg transition-colors"
                    title="Delete Article"
                  >
                    <Trash2 size={13} />
                  </button>
                </div>
              </td>
            </tr>
          ))}
        </AdminTable>
      </AdminCard>

      <ConfirmModal
        isOpen={!!deleteTarget}
        title="Delete Article"
        message="This article will be permanently removed from MySQL and the public news section."
        confirmLabel="Delete Article"
        onConfirm={handleDelete}
        onCancel={() => setDeleteTarget(null)}
        dangerous
      />

      <ToastNotification toast={toast} onDismiss={() => setToast(null)} />
    </AdminLayout>
  );
}
