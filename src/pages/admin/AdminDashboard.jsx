import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import {
  FileText,
  Activity,
  Package,
  Newspaper,
  Image as ImageIcon,
  Inbox,
  ArrowRight,
  ShieldCheck,
  Clock,
  CheckCircle2,
  ExternalLink,
  Edit3,
} from 'lucide-react';
import AdminLayout from '../../components/admin/AdminLayout';
import { AdminCard, AdminStatCard } from '../../components/admin/AdminCard';
import AdminTable from '../../components/admin/AdminTable';
import { useAdminAuth } from '../../context/AdminAuthContext';

export default function AdminDashboard() {
  const { user, token } = useAdminAuth();
  const [stats, setStats] = useState({
    totalPages: 0,
    totalTherapeuticAreas: 0,
    totalProducts: 0,
    publishedNews: 0,
    totalMedia: 0,
    totalEnquiries: 0,
    newEnquiries: 0,
    recentEnquiries: [],
    recentlyModified: [],
  });
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    document.title = 'Dashboard | Onecore Admin Portal';

    const fetchStats = async () => {
      try {
        const res = await fetch('/api/admin/dashboard', {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        });
        if (res.ok) {
          const data = await res.json();
          if (data.success && data.data) {
            const s = data.data.stats || {};
            setStats({
              totalPages: s.totalPages ?? 8,
              totalTherapeuticAreas: s.therapeuticAreas ?? 9,
              totalProducts: s.products ?? 1,
              publishedNews: s.publishedNews ?? 3,
              totalMedia: s.totalMedia ?? 0,
              totalEnquiries: s.totalEnquiries ?? 0,
              newEnquiries: s.newEnquiries ?? 0,
              recentEnquiries: data.data.recentEnquiries || [],
              recentlyModified: data.data.recentlyModified || [],
            });
          }
        }
      } catch (err) {
        console.warn('Could not fetch live dashboard stats:', err);
      } finally {
        setIsLoading(false);
      }
    };

    fetchStats();
  }, [token]);

  const getStatusBadge = (status) => {
    switch (status) {
      case 'new':
        return (
          <span className="px-2 py-0.5 rounded-full text-[10px] font-mono uppercase font-semibold bg-emerald-50 text-emerald-700 border border-emerald-200">
            New
          </span>
        );
      case 'in_progress':
        return (
          <span className="px-2 py-0.5 rounded-full text-[10px] font-mono uppercase font-semibold bg-amber-50 text-amber-700 border border-amber-200">
            In Progress
          </span>
        );
      case 'resolved':
        return (
          <span className="px-2 py-0.5 rounded-full text-[10px] font-mono uppercase font-semibold bg-sky-50 text-sky-700 border border-sky-200">
            Resolved
          </span>
        );
      case 'archived':
      default:
        return (
          <span className="px-2 py-0.5 rounded-full text-[10px] font-mono uppercase font-semibold bg-slate-100 text-slate-600 border border-slate-200">
            {status}
          </span>
        );
    }
  };

  return (
    <AdminLayout
      title="System Overview"
      subtitle="Onecore Pharma Database-Driven CMS & Administrative Portal"
    >
      {/* Welcome Banner */}
      <div className="bg-white p-6 sm:p-7 rounded-xl border border-slate-200 shadow-xs relative overflow-hidden">
        <div className="flex flex-col md:flex-row md:items-center justify-between gap-5">
          <div className="space-y-1.5 max-w-2xl">
            <div className="flex items-center gap-2">
              <span className="text-[11px] font-mono uppercase tracking-wider text-[#0D5C75] font-semibold bg-[#0D5C75]/10 px-2 py-0.5 rounded">
                Authorized Session
              </span>
              <span className="text-slate-300">•</span>
              <span className="text-xs font-mono text-slate-500 font-medium">
                {user?.role_name || 'Admin'}
              </span>
            </div>
            <h2 className="text-2xl font-bold text-slate-900 tracking-tight">
              Welcome back, {user?.name || 'Administrator'}
            </h2>
            <p className="text-xs text-slate-600 font-normal leading-relaxed">
              Manage website pages, section copy, therapeutic areas, product monographs, news releases, media assets, and incoming commercial enquiries directly from MySQL.
            </p>
          </div>

          <div className="flex items-center gap-2.5 shrink-0">
            <Link
              to="/admin/pages"
              className="px-4 py-2.5 bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg text-xs font-semibold transition-colors flex items-center gap-2 shadow-xs"
            >
              <FileText size={14} />
              <span>Edit Pages</span>
            </Link>
            <a
              href="/"
              target="_blank"
              rel="noopener noreferrer"
              className="px-4 py-2.5 bg-white border border-slate-200 hover:bg-slate-50 text-slate-700 rounded-lg text-xs font-semibold transition-colors flex items-center gap-1.5 shadow-xs"
            >
              <span>Live Site</span>
              <ExternalLink size={13} />
            </a>
          </div>
        </div>
      </div>

      {/* Metric Stat Cards - 6 Core Metrics */}
      <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3.5">
        <AdminStatCard
          title="Pages"
          value={stats.totalPages || 8}
          change="CMS Routes"
          icon={FileText}
          color="navy"
        />
        <AdminStatCard
          title="Areas of Care"
          value={stats.totalTherapeuticAreas || 9}
          change="Clinical Portfolios"
          icon={Activity}
          color="teal"
        />
        <AdminStatCard
          title="Products"
          value={stats.totalProducts || 1}
          change="Monographs"
          icon={Package}
          color="blue"
        />
        <AdminStatCard
          title="News"
          value={stats.publishedNews || 3}
          change="Published Articles"
          icon={Newspaper}
          color="purple"
        />
        <AdminStatCard
          title="Media Files"
          value={stats.totalMedia || 0}
          change="Uploads & Assets"
          icon={ImageIcon}
          color="amber"
        />
        <AdminStatCard
          title="Enquiries"
          value={stats.totalEnquiries || 0}
          change={stats.newEnquiries ? `${stats.newEnquiries} new unread` : 'All resolved'}
          icon={Inbox}
          color="emerald"
        />
      </div>

      {/* Main Grid: Recent Enquiries (2 cols) + Recently Modified & Quick Actions (1 col) */}
      <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
        {/* Recent Enquiries (2 cols) */}
        <div className="lg:col-span-2">
          <AdminCard
            title="Recent Contact Enquiries"
            subtitle="Submissions received through the public Contact & Enquiry channels"
            action={
              <Link
                to="/admin/enquiries"
                className="text-xs text-[#0D5C75] hover:underline flex items-center gap-1 font-semibold"
              >
                <span>View all ({stats.totalEnquiries})</span>
                <ArrowRight size={12} />
              </Link>
            }
          >
            {stats.recentEnquiries && stats.recentEnquiries.length > 0 ? (
              <AdminTable
                headers={['Contact Details', 'Enquiry Type', 'Date Received', 'Status', 'Action']}
              >
                {stats.recentEnquiries.map((enquiry) => (
                  <tr key={enquiry.id} className="hover:bg-slate-50 transition-colors">
                    <td className="py-3 px-4">
                      <div className="font-semibold text-slate-900">{enquiry.full_name}</div>
                      <div className="text-[11px] text-slate-500">{enquiry.email}</div>
                    </td>
                    <td className="py-3 px-4 text-slate-700 font-medium">
                      {enquiry.enquiry_type || enquiry.nature_of_enquiry || 'General'}
                    </td>
                    <td className="py-3 px-4 font-mono text-[11px] text-slate-500">
                      {new Date(enquiry.submitted_at || enquiry.created_at).toLocaleDateString()}
                    </td>
                    <td className="py-3 px-4">
                      {getStatusBadge(enquiry.status)}
                    </td>
                    <td className="py-3 px-4">
                      <Link
                        to="/admin/enquiries"
                        className="text-[#0D5C75] hover:underline font-semibold text-xs"
                      >
                        Review
                      </Link>
                    </td>
                  </tr>
                ))}
              </AdminTable>
            ) : (
              <div className="py-12 text-center text-slate-400 text-xs">
                <Inbox size={32} className="mx-auto mb-2 text-slate-300" />
                <p className="font-medium text-slate-600">No contact enquiries received yet.</p>
                <p className="text-[11px] text-slate-400 mt-1">
                  Public enquiries submitted from the website Contact page will be stored in MySQL and appear here.
                </p>
              </div>
            )}
          </AdminCard>
        </div>

        {/* Recently Modified Content & Quick Actions (1 col) */}
        <div className="space-y-6">
          {/* Recently Modified Content */}
          <AdminCard
            title="Recently Modified Content"
            subtitle="Latest content updates in database"
          >
            {stats.recentlyModified && stats.recentlyModified.length > 0 ? (
              <div className="divide-y divide-slate-100">
                {stats.recentlyModified.map((item, idx) => (
                  <div key={idx} className="py-2.5 first:pt-0 last:pb-0 flex items-start justify-between gap-3">
                    <div className="min-w-0">
                      <p className="text-xs font-medium text-slate-800 truncate">{item.title}</p>
                      <span className="text-[10px] font-mono text-[#0D5C75] block mt-0.5">{item.meta}</span>
                    </div>
                    <span className="text-[10px] text-slate-400 font-mono shrink-0">
                      {item.updated_at ? new Date(item.updated_at).toLocaleDateString() : 'Recent'}
                    </span>
                  </div>
                ))}
              </div>
            ) : (
              <div className="py-4 text-center text-xs text-slate-400">
                <Clock size={20} className="mx-auto mb-1 text-slate-300" />
                <p>Database content ready to edit.</p>
              </div>
            )}
          </AdminCard>

          {/* Quick Management Shortcuts */}
          <AdminCard
            title="Quick Shortcuts"
            subtitle="Direct access to CMS sections"
          >
            <div className="space-y-2">
              <Link
                to="/admin/pages/home"
                className="flex items-center justify-between p-2.5 rounded-lg border border-slate-200 hover:border-[#1B365D]/30 hover:bg-slate-50 transition-all text-xs group"
              >
                <div className="flex items-center gap-2.5">
                  <div className="p-1.5 rounded bg-slate-100 text-[#1B365D]">
                    <Edit3 size={14} />
                  </div>
                  <div>
                    <span className="font-semibold text-slate-800 block">Edit Homepage</span>
                    <span className="text-[11px] text-slate-500">Hero, Who We Are, Purpose, CTAs</span>
                  </div>
                </div>
                <ArrowRight size={13} className="text-slate-400 group-hover:text-[#1B365D] group-hover:translate-x-0.5 transition-all" />
              </Link>

              <Link
                to="/admin/therapeutic-areas"
                className="flex items-center justify-between p-2.5 rounded-lg border border-slate-200 hover:border-[#0D5C75]/30 hover:bg-slate-50 transition-all text-xs group"
              >
                <div className="flex items-center gap-2.5">
                  <div className="p-1.5 rounded bg-[#0D5C75]/10 text-[#0D5C75]">
                    <Activity size={14} />
                  </div>
                  <div>
                    <span className="font-semibold text-slate-800 block">Areas of Care</span>
                    <span className="text-[11px] text-slate-500">9 Specialities & Divisions</span>
                  </div>
                </div>
                <ArrowRight size={13} className="text-slate-400 group-hover:text-[#0D5C75] group-hover:translate-x-0.5 transition-all" />
              </Link>

              <Link
                to="/admin/products"
                className="flex items-center justify-between p-2.5 rounded-lg border border-slate-200 hover:border-blue-300 hover:bg-slate-50 transition-all text-xs group"
              >
                <div className="flex items-center gap-2.5">
                  <div className="p-1.5 rounded bg-blue-50 text-blue-700">
                    <Package size={14} />
                  </div>
                  <div>
                    <span className="font-semibold text-slate-800 block">Product Monographs</span>
                    <span className="text-[11px] text-slate-500">Compositions, Benefits, Safety</span>
                  </div>
                </div>
                <ArrowRight size={13} className="text-slate-400 group-hover:text-blue-700 group-hover:translate-x-0.5 transition-all" />
              </Link>

              <Link
                to="/admin/media"
                className="flex items-center justify-between p-2.5 rounded-lg border border-slate-200 hover:border-amber-300 hover:bg-slate-50 transition-all text-xs group"
              >
                <div className="flex items-center gap-2.5">
                  <div className="p-1.5 rounded bg-amber-50 text-amber-700">
                    <ImageIcon size={14} />
                  </div>
                  <div>
                    <span className="font-semibold text-slate-800 block">Media Library</span>
                    <span className="text-[11px] text-slate-500">Upload packshots, images & assets</span>
                  </div>
                </div>
                <ArrowRight size={13} className="text-slate-400 group-hover:text-amber-700 group-hover:translate-x-0.5 transition-all" />
              </Link>
            </div>
          </AdminCard>
        </div>
      </div>
    </AdminLayout>
  );
}
