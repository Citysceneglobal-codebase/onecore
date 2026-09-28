import React from 'react';

export default function AdminTable({ headers, children, emptyMessage = 'No records found.' }) {
  return (
    <div className="overflow-x-auto rounded-lg border border-slate-200 bg-white">
      <table className="w-full text-left border-collapse">
        <thead>
          <tr className="border-b border-slate-200 bg-[#FAFAFC]">
            {headers.map((header, idx) => (
              <th
                key={idx}
                className="py-3 px-4 text-[11px] font-mono uppercase tracking-wider text-slate-600 font-semibold"
              >
                {header}
              </th>
            ))}
          </tr>
        </thead>
        <tbody className="divide-y divide-slate-100 text-xs text-slate-700">
          {children}
        </tbody>
      </table>
    </div>
  );
}
