import React from 'react';

export function AdminCard({ title, subtitle, action, children, className = '' }) {
  return (
    <div className={`bg-white border border-slate-200 rounded-xl p-6 shadow-xs ${className}`}>
      {(title || subtitle || action) && (
        <div className="flex items-start justify-between mb-5 border-b border-slate-100 pb-4">
          <div>
            {title && <h3 className="text-base font-semibold text-slate-900 tracking-tight">{title}</h3>}
            {subtitle && <p className="text-xs text-slate-500 font-normal mt-0.5">{subtitle}</p>}
          </div>
          {action && <div>{action}</div>}
        </div>
      )}
      {children}
    </div>
  );
}

export function AdminStatCard({ title, value, change, icon: Icon, color = 'teal' }) {
  const colorMap = {
    teal: 'bg-[#0D5C75]/10 text-[#0D5C75] border-[#0D5C75]/20',
    navy: 'bg-[#1B365D]/10 text-[#1B365D] border-[#1B365D]/20',
    amber: 'bg-amber-50 text-amber-700 border-amber-200',
    blue: 'bg-sky-50 text-sky-700 border-sky-200',
    emerald: 'bg-emerald-50 text-emerald-700 border-emerald-200',
    purple: 'bg-purple-50 text-purple-700 border-purple-200',
  };

  return (
    <div className="bg-white border border-slate-200 rounded-xl p-5 flex items-start justify-between shadow-xs">
      <div className="space-y-1">
        <span className="text-xs font-mono uppercase tracking-wider text-slate-500 font-medium block">
          {title}
        </span>
        <div className="text-2xl font-bold text-slate-900 tracking-tight">
          {value}
        </div>
        {change && (
          <span className="text-[11px] text-slate-500 block">
            {change}
          </span>
        )}
      </div>
      {Icon && (
        <div className={`p-2.5 rounded-lg border ${colorMap[color] || colorMap.teal}`}>
          <Icon size={18} />
        </div>
      )}
    </div>
  );
}
