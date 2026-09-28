import React, { useState, useEffect } from 'react';
import { Menu, Database, Shield, Bell } from 'lucide-react';
import { useAdminAuth } from '../../context/AdminAuthContext';

export default function AdminHeader({ title, subtitle, onToggleSidebar }) {
  const { user } = useAdminAuth();
  const [dbStatus, setDbStatus] = useState('checking'); // 'connected', 'offline', 'checking'

  useEffect(() => {
    const checkDb = async () => {
      try {
        const res = await fetch('/api/health');
        if (res.ok) {
          setDbStatus('connected');
        } else {
          setDbStatus('offline');
        }
      } catch {
        setDbStatus('offline');
      }
    };
    checkDb();
  }, []);

  return (
    <header className="h-20 bg-white border-b border-slate-200 px-6 lg:px-8 flex items-center justify-between sticky top-0 z-30">
      <div className="flex items-center gap-4">
        <button
          onClick={onToggleSidebar}
          className="lg:hidden p-2 text-slate-600 hover:text-slate-900 rounded-lg hover:bg-slate-100"
        >
          <Menu size={20} />
        </button>

        <div>
          <h1 className="text-lg font-semibold text-slate-900 tracking-tight">
            {title || 'Dashboard'}
          </h1>
          {subtitle && (
            <p className="text-xs text-slate-500 font-normal mt-0.5">
              {subtitle}
            </p>
          )}
        </div>
      </div>

      <div className="flex items-center gap-3.5">
        {/* MySQL Database Status Indicator */}
        <div
          className={`hidden sm:flex items-center gap-2 px-3 py-1.5 rounded-full border text-xs font-mono transition-colors ${
            dbStatus === 'connected'
              ? 'bg-emerald-50 border-emerald-200 text-emerald-700'
              : dbStatus === 'checking'
              ? 'bg-amber-50 border-amber-200 text-amber-700'
              : 'bg-rose-50 border-rose-200 text-rose-700'
          }`}
          title={
            dbStatus === 'connected'
              ? 'MySQL Database Active & Connected'
              : 'MySQL Connection Status'
          }
        >
          <Database size={13} className="shrink-0" />
          <span className="capitalize font-medium">MySQL: {dbStatus === 'connected' ? 'Connected' : dbStatus}</span>
          <span
            className={`w-2 h-2 rounded-full ${
              dbStatus === 'connected'
                ? 'bg-emerald-500'
                : dbStatus === 'checking'
                ? 'bg-amber-500'
                : 'bg-rose-500'
            }`}
          />
        </div>

        {/* Current User Role Pill */}
        <div className="flex items-center gap-2 px-3 py-1.5 rounded-full bg-slate-50 border border-slate-200 text-xs text-slate-700 font-medium">
          <Shield size={13} className="text-[#0D5C75]" />
          <span className="hidden sm:inline font-semibold">{user?.name}</span>
          <span className="text-[10px] uppercase font-mono px-1.5 py-0.5 rounded bg-slate-200 text-slate-700 font-semibold">
            {user?.role_name}
          </span>
        </div>
      </div>
    </header>
  );
}
