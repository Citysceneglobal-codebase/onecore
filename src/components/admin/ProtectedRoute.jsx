import React from 'react';
import { Navigate, useLocation } from 'react-router-dom';
import { useAdminAuth } from '../../context/AdminAuthContext';

export default function ProtectedRoute({ children, allowedRoles }) {
  const { user, token, loading, hasRole } = useAdminAuth();
  const location = useLocation();

  if (loading) {
    return (
      <div className="min-h-screen bg-[#F8F9FA] flex items-center justify-center font-sans">
        <div className="flex flex-col items-center gap-3">
          <div className="w-8 h-8 border-2 border-[#1B365D] border-t-transparent rounded-full animate-spin"></div>
          <p className="text-slate-500 text-xs font-medium tracking-wide">
            Authenticating Onecore Admin Session...
          </p>
        </div>
      </div>
    );
  }

  if (!token || !user) {
    return <Navigate to="/admin/login" state={{ from: location }} replace />;
  }

  if (allowedRoles && !hasRole(allowedRoles)) {
    return (
      <div className="min-h-screen bg-[#F8F9FA] flex items-center justify-center p-6 font-sans">
        <div className="bg-white border border-rose-200 rounded-2xl p-8 max-w-md text-center shadow-lg">
          <h2 className="text-lg font-bold text-slate-900 mb-2">Access Restricted</h2>
          <p className="text-slate-600 text-xs mb-6 font-normal">
            Your role (<strong className="font-semibold">{user.role_name}</strong>) does not have permission to view or manage this system section.
          </p>
          <a
            href="/admin"
            className="inline-block px-5 py-2.5 bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg text-xs font-semibold transition-colors shadow-xs"
          >
            Return to Dashboard
          </a>
        </div>
      </div>
    );
  }

  return children;
}
