import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import {
  Package,
  ExternalLink,
  Plus,
  Edit2,
  Trash2,
  Search,
  CheckCircle2,
  Clock,
} from 'lucide-react';
import AdminLayout from '../../components/admin/AdminLayout';
import { AdminCard } from '../../components/admin/AdminCard';
import AdminTable from '../../components/admin/AdminTable';
import ToastNotification from '../../components/admin/ToastNotification';
import ConfirmModal from '../../components/admin/ConfirmModal';
import { useAdminAuth } from '../../context/AdminAuthContext';
import { allProducts } from '../../data/allProducts';

export default function AdminProducts() {
  const { token } = useAdminAuth();
  const [products, setProducts] = useState([]);
  const [search, setSearch] = useState('');
  const [toast, setToast] = useState(null);
  const [deleteTarget, setDeleteTarget] = useState(null);
  const [loading, setLoading] = useState(true);

  const showToast = (type, message) => setToast({ type, message });

  const fetchProducts = async () => {
    setLoading(true);
    try {
      const res = await fetch('/api/products', {
        headers: { Authorization: `Bearer ${token}` },
      });
      if (res.ok) {
        const data = await res.json();
        if (data.success && Array.isArray(data.data) && data.data.length > 0) {
          setProducts(data.data);
        } else {
          // Fallback to allProducts
          setProducts(allProducts.map((p, idx) => ({
            id: p.id || idx + 1,
            brand_name: p.name,
            name: p.name,
            slug: p.slug,
            therapeutic_area_name: p.category || p.division,
            therapeutic_area_slug: p.division?.toLowerCase() || 'orthopaedics',
            status: 'published',
            short_description: p.composition || p.description,
            packshot_url: p.image,
          })));
        }
      }
    } catch {
      setProducts(allProducts.map((p, idx) => ({
        id: p.id || idx + 1,
        brand_name: p.name,
        name: p.name,
        slug: p.slug,
        therapeutic_area_name: p.category || p.division,
        therapeutic_area_slug: p.division?.toLowerCase() || 'orthopaedics',
        status: 'published',
        short_description: p.composition || p.description,
        packshot_url: p.image,
      })));
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    document.title = 'Product Portfolio | Onecore Admin';
    fetchProducts();
  }, []);

  const handleDelete = async () => {
    if (!deleteTarget) return;
    try {
      const res = await fetch(`/api/products/${deleteTarget}`, {
        method: 'DELETE',
        headers: { Authorization: `Bearer ${token}` },
      });
      const data = await res.json();
      if (data.success) {
        setProducts((prev) => prev.filter((p) => p.id !== deleteTarget));
        showToast('success', 'Product deleted successfully.');
      } else {
        showToast('error', data.message || 'Delete failed.');
      }
    } catch {
      showToast('error', 'Network error.');
    } finally {
      setDeleteTarget(null);
    }
  };

  const filtered = products.filter((p) => {
    const q = search.toLowerCase();
    return (
      (p.brand_name || p.name || '').toLowerCase().includes(q) ||
      (p.therapeutic_area_name || '').toLowerCase().includes(q) ||
      (p.short_description || '').toLowerCase().includes(q)
    );
  });

  return (
    <AdminLayout
      title="Product Portfolio"
      subtitle="Pharmaceutical formulations, active compositions, and clinical monographs"
    >
      <AdminCard
        title={`Active Products (${filtered.length})`}
        subtitle="Catalog of clinical formulations and prescription monographs"
        action={
          <div className="flex items-center gap-3">
            <div className="relative">
              <input
                type="text"
                placeholder="Search formulations..."
                value={search}
                onChange={(e) => setSearch(e.target.value)}
                className="bg-white border border-slate-200 rounded-lg px-3 py-1.5 pl-8 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
              <Search size={13} className="absolute left-2.5 top-2.5 text-slate-400 pointer-events-none" />
            </div>
            <Link
              to="/admin/products/new"
              className="flex items-center gap-1.5 px-3 py-1.5 text-xs font-semibold bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg transition-all shadow-xs"
            >
              <Plus size={13} />
              <span>Add Product</span>
            </Link>
          </div>
        }
      >
        <AdminTable
          headers={['Product Name', 'Therapeutic Area / Division', 'Active Composition', 'Status', 'Actions']}
        >
          {filtered.map((p) => (
            <tr key={p.id} className="hover:bg-slate-50 transition-colors">
              <td className="py-3 px-4 font-semibold text-slate-900">
                <div className="flex items-center gap-2.5">
                  <div className="p-1.5 rounded-md bg-slate-100 text-[#1B365D]">
                    <Package size={14} />
                  </div>
                  <span>{p.brand_name || p.name}</span>
                </div>
              </td>
              <td className="py-3 px-4 text-slate-700 text-xs font-medium">
                {p.therapeutic_area_name || 'Orthopaedics'}
              </td>
              <td className="py-3 px-4 text-slate-600 text-xs max-w-xs truncate">
                {p.short_description || p.full_description || '—'}
              </td>
              <td className="py-3 px-4">
                <span
                  className={`px-2 py-0.5 rounded-full text-[10px] font-mono uppercase font-semibold border ${
                    p.status === 'published'
                      ? 'bg-emerald-50 text-emerald-700 border-emerald-200'
                      : 'bg-amber-50 text-amber-700 border-amber-200'
                  }`}
                >
                  {p.status || 'published'}
                </span>
              </td>
              <td className="py-3 px-4">
                <div className="flex items-center gap-2">
                  <Link
                    to={`/admin/products/${p.id || p.slug}`}
                    className="flex items-center gap-1 px-2.5 py-1.5 text-xs font-semibold bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg transition-all shadow-xs"
                  >
                    <Edit2 size={12} />
                    <span>Edit</span>
                  </Link>
                  <a
                    href={`/areas-of-care/${p.therapeutic_area_slug || 'orthopaedics'}/${p.slug || 'oneflexo'}`}
                    target="_blank"
                    rel="noopener noreferrer"
                    className="p-1.5 text-slate-400 hover:text-slate-700 hover:bg-slate-100 rounded-lg transition-colors"
                    title="View Live Product"
                  >
                    <ExternalLink size={13} />
                  </a>
                  <button
                    onClick={() => setDeleteTarget(p.id)}
                    className="p-1.5 text-slate-400 hover:text-rose-600 hover:bg-rose-50 rounded-lg transition-colors"
                    title="Delete Product"
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
        title="Delete Product"
        message="This product and all its compositions, benefits, dosage, and safety data will be permanently deleted from MySQL."
        confirmLabel="Delete Product"
        onConfirm={handleDelete}
        onCancel={() => setDeleteTarget(null)}
        dangerous
      />

      <ToastNotification toast={toast} onDismiss={() => setToast(null)} />
    </AdminLayout>
  );
}
