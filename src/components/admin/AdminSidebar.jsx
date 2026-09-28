import React from 'react';
import { NavLink, useNavigate } from 'react-router-dom';
import {
  LayoutDashboard,
  Inbox,
  FileText,
  Activity,
  Package,
  Newspaper,
  Image as ImageIcon,
  Settings,
  Users,
  LogOut,
  ExternalLink,
  ShieldCheck,
  ChevronRight,
  X,
} from 'lucide-react';
import { useAdminAuth } from '../../context/AdminAuthContext';

export default function AdminSidebar({ isOpen, onClose }) {
  const { user, logout, isSuperAdmin } = useAdminAuth();
  const navigate = useNavigate();

  const handleLogout = () => {
    logout();
    navigate('/admin/login');
  };

  const navGroups = [
    {
      title: 'Overview',
      links: [
        { name: 'Dashboard', path: '/admin', icon: LayoutDashboard, exact: true },
        { name: 'Enquiries', path: '/admin/enquiries', icon: Inbox },
      ],
    },
    {
      title: 'Content Management',
      links: [
        { name: 'Pages', path: '/admin/pages', icon: FileText },
        { name: 'Areas of Care', path: '/admin/areas-of-care', icon: Activity },
        { name: 'Products', path: '/admin/products', icon: Package },
        { name: 'News', path: '/admin/news', icon: Newspaper },
        { name: 'Media Library', path: '/admin/media', icon: ImageIcon },
      ],
    },
    {
      title: 'System & Security',
      links: [
        { name: 'Site Settings', path: '/admin/settings', icon: Settings },
        ...(isSuperAdmin
          ? [{ name: 'Admin Users', path: '/admin/users', icon: Users, badge: 'Super' }]
          : []),
      ],
    },
  ];

  return (
    <>
      {/* Mobile Backdrop */}
      {isOpen && (
        <div
          className="fixed inset-0 bg-slate-900/40 z-40 lg:hidden backdrop-blur-xs"
          onClick={onClose}
        />
      )}

      <aside
        className={`fixed top-0 left-0 bottom-0 z-50 w-72 bg-white border-r border-slate-200 flex flex-col transition-transform duration-200 ease-in-out lg:translate-x-0 ${
          isOpen ? 'translate-x-0 shadow-xl' : '-translate-x-full'
        }`}
      >
        {/* Brand Header */}
        <div className="h-20 px-6 flex items-center justify-between border-b border-slate-100 bg-[#FAFAFC]">
          <div className="flex flex-col">
            <img
              src="/assets/onecore-logo.png"
              alt="Onecore Pharma"
              className="h-7 w-auto object-contain"
            />
            <span className="text-[10px] tracking-widest uppercase font-mono text-[#0D5C75] font-semibold block mt-1">
              CMS Admin Portal
            </span>
          </div>
          <button
            onClick={onClose}
            className="lg:hidden text-slate-400 hover:text-slate-700 p-1 rounded-md"
          >
            <X size={20} />
          </button>
        </div>

        {/* Navigation */}
        <div className="flex-1 overflow-y-auto px-4 py-6 space-y-7">
          {navGroups.map((group, idx) => (
            <div key={idx} className="space-y-1">
              <h3 className="px-3 text-[11px] font-mono uppercase tracking-wider text-slate-400 font-medium mb-1.5">
                {group.title}
              </h3>
              {group.links.map((link) => {
                const Icon = link.icon;
                return (
                  <NavLink
                    key={link.path}
                    to={link.path}
                    end={link.exact}
                    onClick={() => onClose && onClose()}
                    className={({ isActive }) =>
                      `flex items-center justify-between px-3.5 py-2.5 rounded-lg text-xs font-medium transition-all group ${
                        isActive
                          ? 'bg-[#1B365D]/10 text-[#1B365D] font-semibold'
                          : 'text-slate-600 hover:text-slate-900 hover:bg-slate-50'
                      }`
                    }
                  >
                    {({ isActive }) => (
                      <>
                        <div className="flex items-center gap-3">
                          <Icon
                            size={16}
                            className={
                              isActive
                                ? 'text-[#1B365D]'
                                : 'text-slate-400 group-hover:text-slate-700 transition-colors'
                            }
                          />
                          <span>{link.name}</span>
                        </div>
                        {link.badge ? (
                          <span className="text-[10px] uppercase font-mono px-1.5 py-0.5 rounded bg-slate-100 text-slate-600 font-medium border border-slate-200">
                            {link.badge}
                          </span>
                        ) : isActive ? (
                          <ChevronRight size={14} className="text-[#1B365D]" />
                        ) : null}
                      </>
                    )}
                  </NavLink>
                );
              })}
            </div>
          ))}

          {/* Quick link to live site */}
          <div className="pt-4 border-t border-slate-100">
            <a
              href="/"
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center justify-between px-3.5 py-2.5 rounded-lg text-xs text-slate-500 hover:text-slate-900 hover:bg-slate-50 transition-colors"
            >
              <div className="flex items-center gap-2.5">
                <ExternalLink size={14} className="text-slate-400" />
                <span>View Live Website</span>
              </div>
              <span className="text-[10px] text-[#0D5C75] font-mono">↗</span>
            </a>
          </div>
        </div>

        {/* User profile footer */}
        <div className="p-4 border-t border-slate-200 bg-[#FAFAFC]">
          <div className="flex items-center justify-between">
            <div className="flex items-center gap-3 overflow-hidden">
              <div className="w-9 h-9 rounded-full bg-[#1B365D] text-white flex items-center justify-center text-xs font-semibold shrink-0">
                {user?.name ? user.name.charAt(0).toUpperCase() : 'A'}
              </div>
              <div className="overflow-hidden">
                <p className="text-xs font-semibold text-slate-800 truncate">{user?.name || 'Administrator'}</p>
                <div className="flex items-center gap-1 text-[10px] text-[#0D5C75] font-medium">
                  <ShieldCheck size={11} />
                  <span>{user?.role_name || 'Admin'}</span>
                </div>
              </div>
            </div>

            <button
              onClick={handleLogout}
              title="Sign Out"
              className="p-2 text-slate-400 hover:text-rose-600 hover:bg-rose-50 rounded-lg transition-colors shrink-0"
            >
              <LogOut size={16} />
            </button>
          </div>
        </div>
      </aside>
    </>
  );
}
