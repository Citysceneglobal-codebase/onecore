import React, { useState, useEffect } from 'react';
import { useNavigate, useLocation } from 'react-router-dom';
import { ShieldCheck, Mail, Lock, ArrowRight, AlertCircle } from 'lucide-react';
import { useAdminAuth } from '../../context/AdminAuthContext';

export default function AdminLogin() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [isLoading, setIsLoading] = useState(false);

  const { login, user } = useAdminAuth();
  const navigate = useNavigate();
  const location = useLocation();

  const from = location.state?.from?.pathname || '/admin';

  useEffect(() => {
    document.title = 'Admin Portal Login | Onecore Pharma';
    if (user) {
      navigate(from, { replace: true });
    }
  }, [user, navigate, from]);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError('');

    if (!email || !password) {
      setError('Please provide both email and password.');
      return;
    }

    setIsLoading(true);
    const result = await login(email, password);
    setIsLoading(false);

    if (result.success) {
      navigate(from, { replace: true });
    } else {
      setError(result.message || 'Invalid email or password.');
    }
  };

  return (
    <div className="min-h-screen bg-[#F4F6F8] flex items-center justify-center p-6 relative font-sans">
      <div className="w-full max-w-md relative z-10">
        {/* Brand Header */}
        <div className="text-center mb-7 flex flex-col items-center">
          <img
            src="/assets/onecore-logo.png"
            alt="Onecore Pharma"
            className="h-9 w-auto object-contain mb-2"
          />
          <span className="text-[10px] font-mono tracking-widest uppercase text-[#0D5C75] font-semibold">
            Database-Driven CMS & Admin Portal
          </span>
        </div>

        {/* Login Card */}
        <div className="bg-white border border-slate-200 rounded-xl p-8 shadow-sm">
          <div className="mb-6">
            <h2 className="text-xl font-bold text-slate-900 tracking-tight">Admin Sign In</h2>
            <p className="text-xs text-slate-500 font-normal mt-1">
              Enter your authorized credentials to manage website content and specifications.
            </p>
          </div>

          {error && (
            <div className="mb-6 p-3.5 rounded-lg bg-rose-50 border border-rose-200 flex items-start gap-2.5 text-xs text-rose-700">
              <AlertCircle size={15} className="shrink-0 text-rose-600 mt-0.5" />
              <span>{error}</span>
            </div>
          )}

          <form onSubmit={handleSubmit} className="space-y-4">
            <div>
              <label className="block text-xs font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Email Address
              </label>
              <div className="relative">
                <input
                  id="admin-email"
                  name="email"
                  type="email"
                  autoComplete="email"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  placeholder="admin@onecorepharma.in"
                  required
                  className="w-full bg-white border border-slate-200 rounded-lg px-3.5 py-2.5 pl-10 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] transition-all shadow-xs"
                />
                <Mail size={15} className="absolute left-3.5 top-3 text-slate-400 pointer-events-none" />
              </div>
            </div>

            <div>
              <label className="block text-xs font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Password
              </label>
              <div className="relative">
                <input
                  id="admin-password"
                  name="password"
                  type="password"
                  autoComplete="current-password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  placeholder="••••••••••••"
                  required
                  className="w-full bg-white border border-slate-200 rounded-lg px-3.5 py-2.5 pl-10 text-xs text-slate-900 placeholder:text-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] transition-all shadow-xs"
                />
                <Lock size={15} className="absolute left-3.5 top-3 text-slate-400 pointer-events-none" />
              </div>
            </div>

            <button
              type="submit"
              disabled={isLoading}
              className="w-full mt-2 py-2.5 px-4 bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg text-xs font-semibold tracking-wide flex items-center justify-center gap-2 transition-all shadow-xs disabled:opacity-50 disabled:cursor-not-allowed"
            >
              {isLoading ? (
                <>
                  <div className="w-3.5 h-3.5 border-2 border-white border-t-transparent rounded-full animate-spin" />
                  <span>Authenticating...</span>
                </>
              ) : (
                <>
                  <span>Sign In to Admin Portal</span>
                  <ArrowRight size={13} />
                </>
              )}
            </button>
          </form>

          {/* Super Admin Bootstrap Note */}
          <div className="mt-6 pt-5 border-t border-slate-100 text-[11px] text-slate-500 text-center font-normal">
            <p>
              Secured with bcrypt password hashing and JWT authentication on MySQL 8+.
            </p>
          </div>
        </div>

        {/* Back link */}
        <div className="text-center mt-5">
          <a
            href="/"
            className="text-xs text-slate-500 hover:text-slate-800 transition-colors"
          >
            ← Return to public website
          </a>
        </div>
      </div>
    </div>
  );
}
