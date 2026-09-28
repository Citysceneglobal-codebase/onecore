import React, { useState, useEffect } from 'react';
import {
  Settings,
  Mail,
  Phone,
  MapPin,
  Clock,
  ShieldCheck,
  Save,
  CheckCircle2,
  X,
  Globe,
  Image as ImageIcon,
  FileText,
} from 'lucide-react';
import AdminLayout from '../../components/admin/AdminLayout';
import { AdminCard } from '../../components/admin/AdminCard';
import MediaSelectorModal from '../../components/admin/MediaSelectorModal';
import { useAdminAuth } from '../../context/AdminAuthContext';

export default function AdminSettings() {
  const { token, isAdmin } = useAdminAuth();
  const [formData, setFormData] = useState({
    site_name: 'Onecore Pharma',
    company_name: 'Onecore Pharma Pvt. Ltd.',
    logo_url: '/assets/onecore-logo.png',
    favicon_url: '/assets/favicon.png',
    footer_tagline: 'Healthcare centered on people.',
    copyright_text: '© 2026 Onecore Pharma Pvt. Ltd.',
    general_email: 'info@onecorepharma.in',
    product_email: 'info@onecorepharma.in',
    business_email: 'info@onecorepharma.in',
    careers_email: 'info@onecorepharma.in',
    safety_email: 'info@onecorepharma.in',
    phone: '8169255034',
    address: 'Onecore Pharma Corporate Headquarters, Mumbai, Maharashtra 400051, India',
    office_hours: '10 AM - 7 PM',
    default_seo_title: 'Onecore Pharma — Purposeful Formulations, Dependable Quality',
    default_seo_desc: 'Onecore Pharma is a modern pharmaceutical company developing purposeful formulations and healthcare solutions centered on patients and healthcare professionals.',
  });

  const [isSaving, setIsSaving] = useState(false);
  const [notification, setNotification] = useState(null);
  const [mediaCb, setMediaCb] = useState(null);

  useEffect(() => {
    document.title = 'Site & Contact Settings | Onecore Admin';
    const fetchSettings = async () => {
      try {
        const res = await fetch('/api/settings');
        if (res.ok) {
          const data = await res.json();
          if (data.success && data.data) {
            const map = data.data.settingsMap || {};
            if (Array.isArray(data.data.siteSettings)) {
              data.data.siteSettings.forEach((s) => {
                map[s.setting_key] = s.setting_value;
              });
            }
            const apiContact = data.data.contactSettings || {};

            setFormData((prev) => ({
              ...prev,
              ...map,
              general_email: map.general_email || map.contact_email || apiContact.email || prev.general_email,
              phone: map.phone || map.contact_phone || apiContact.phone || prev.phone,
              office_hours: map.office_hours || map.contact_hours || apiContact.business_hours || prev.office_hours,
            }));
          }
        }
      } catch {
        // Keep defaults
      }
    };
    fetchSettings();
  }, []);

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!isAdmin) {
      setNotification({ type: 'error', message: 'Only Admin or Super Admin can modify site settings.' });
      return;
    }

    setIsSaving(true);
    try {
      const res = await fetch('/api/settings/bulk', {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(formData),
      });

      if (res.ok) {
        setNotification({ type: 'success', message: 'Site and Contact settings saved to MySQL database successfully.' });
      } else {
        const errData = await res.json();
        setNotification({ type: 'error', message: errData.message || 'Failed to update settings.' });
      }
    } catch (err) {
      setNotification({ type: 'error', message: err.message });
    } finally {
      setIsSaving(false);
      setTimeout(() => setNotification(null), 4000);
    }
  };

  const set = (key) => (e) => setFormData((prev) => ({ ...prev, [key]: e.target.value }));

  return (
    <AdminLayout
      title="Site Settings & Contact Configuration"
      subtitle="Corporate identity, global email routing, corporate phone numbers, and footer information"
    >
      {notification && (
        <div
          className={`p-4 rounded-xl border flex items-center justify-between text-xs ${
            notification.type === 'success'
              ? 'bg-emerald-50 border-emerald-200 text-emerald-800'
              : 'bg-rose-50 border-rose-200 text-rose-800'
          }`}
        >
          <span>{notification.message}</span>
          <button onClick={() => setNotification(null)}>
            <X size={14} />
          </button>
        </div>
      )}

      <form onSubmit={handleSubmit} className="space-y-6">
        {/* Section 1: General Corporate Details */}
        <AdminCard
          title="Corporate Identity & Global Brand"
          subtitle="Legal company name, website brand name, logo and favicon"
        >
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Site Name / Brand
              </label>
              <input
                type="text"
                value={formData.site_name}
                onChange={set('site_name')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Full Legal Entity Name
              </label>
              <input
                type="text"
                value={formData.company_name}
                onChange={set('company_name')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Logo Image URL
              </label>
              <div className="flex gap-2">
                <input
                  type="text"
                  value={formData.logo_url}
                  onChange={set('logo_url')}
                  className="flex-1 bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                />
                <button
                  type="button"
                  onClick={() => setMediaCb(() => (url) => setFormData((p) => ({ ...p, logo_url: url })))}
                  className="px-3 py-2 bg-slate-50 border border-slate-200 hover:bg-slate-100 rounded-lg text-xs font-semibold text-slate-700"
                >
                  <ImageIcon size={13} />
                </button>
              </div>
            </div>
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Footer Tagline
              </label>
              <input
                type="text"
                value={formData.footer_tagline}
                onChange={set('footer_tagline')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div className="md:col-span-2">
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Copyright Notice
              </label>
              <input
                type="text"
                value={formData.copyright_text}
                onChange={set('copyright_text')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
          </div>
        </AdminCard>

        {/* Section 2: Contact Numbers & Office Hours */}
        <AdminCard
          title="Direct Contact Channels & Headquarters"
          subtitle="Customer desk, telephone, office hours, and physical corporate address"
        >
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                General Information Email
              </label>
              <input
                type="email"
                value={formData.general_email}
                onChange={set('general_email')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Corporate Telephone
              </label>
              <input
                type="text"
                value={formData.phone}
                onChange={set('phone')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Operating Business Hours
              </label>
              <input
                type="text"
                value={formData.office_hours}
                onChange={set('office_hours')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div className="md:col-span-3">
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Registered Corporate Address
              </label>
              <textarea
                rows={2}
                value={formData.address}
                onChange={set('address')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75] resize-y"
              />
            </div>
          </div>
        </AdminCard>

        {/* Section 3: Departmental Email Inboxes */}
        <AdminCard
          title="Departmental Inboxes & Medical Affairs"
          subtitle="Specific email addresses for commercial, careers, and pharmacovigilance"
        >
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Product Information Inbox
              </label>
              <input
                type="email"
                value={formData.product_email}
                onChange={set('product_email')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Business & Distribution Inbox
              </label>
              <input
                type="email"
                value={formData.business_email}
                onChange={set('business_email')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Careers & HR Inbox
              </label>
              <input
                type="email"
                value={formData.careers_email}
                onChange={set('careers_email')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
            <div>
              <label className="block text-[11px] font-mono uppercase tracking-wider text-slate-600 font-medium mb-1.5">
                Pharmacovigilance & Safety Inbox
              </label>
              <input
                type="email"
                value={formData.safety_email}
                onChange={set('safety_email')}
                className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
              />
            </div>
          </div>
        </AdminCard>

        {/* Submit Bar */}
        <div className="flex items-center justify-end">
          <button
            type="submit"
            disabled={isSaving}
            className="flex items-center gap-2 px-6 py-2.5 bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg text-xs font-semibold tracking-wide transition-all shadow-xs disabled:opacity-50"
          >
            <Save size={14} />
            <span>{isSaving ? 'Saving to Database...' : 'Save Site Settings'}</span>
          </button>
        </div>
      </form>

      <MediaSelectorModal
        isOpen={!!mediaCb}
        onClose={() => setMediaCb(null)}
        onSelect={(url) => {
          if (mediaCb) mediaCb(url);
          setMediaCb(null);
        }}
      />
    </AdminLayout>
  );
}
