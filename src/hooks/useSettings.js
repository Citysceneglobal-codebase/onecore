import { useState, useEffect } from 'react';
import { siteSettings as staticSettings } from '../data/siteSettings';

export function useSettings() {
  const [contact, setContact] = useState(staticSettings.contact);
  const [siteSettings, setSiteSettings] = useState({
    company_name: staticSettings.company_name,
    footer_tagline: staticSettings.footer_tagline,
    copyright_text: staticSettings.copyright_text,
    contact_email: staticSettings.contact.general_email,
    contact_phone: staticSettings.contact.phone,
    contact_hours: staticSettings.contact.office_hours,
    primary_cta_text: staticSettings.primary_cta_text,
  });
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    let isMounted = true;

    const fetchSettings = async () => {
      try {
        const res = await fetch('/api/settings');
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const result = await res.json();

        if (isMounted && result.success && result.data) {
          const map = result.data.settingsMap || {};
          if (Array.isArray(result.data.siteSettings)) {
            result.data.siteSettings.forEach((s) => {
              map[s.setting_key] = s.setting_value;
            });
          }

          const apiContact = result.data.contactSettings || {};

          setContact({
            ...staticSettings.contact,
            general_email: map.general_email || map.contact_email || apiContact.email || staticSettings.contact.general_email,
            product_email: map.product_email || map.contact_email || apiContact.email || staticSettings.contact.product_email,
            business_email: map.business_email || map.contact_email || apiContact.email || staticSettings.contact.business_email,
            careers_email: map.careers_email || map.contact_email || apiContact.email || staticSettings.contact.careers_email,
            safety_email: map.safety_email || map.contact_email || apiContact.email || staticSettings.contact.safety_email,
            phone: map.phone || map.contact_phone || apiContact.phone || staticSettings.contact.phone,
            office_hours: map.office_hours || map.contact_hours || apiContact.business_hours || staticSettings.contact.office_hours,
            address: map.address || staticSettings.contact.address,
          });

          setSiteSettings({
            company_name: map.company_name || staticSettings.company_name,
            footer_tagline: map.footer_tagline || staticSettings.footer_tagline,
            copyright_text: map.copyright_text || staticSettings.copyright_text,
            contact_email: map.contact_email || map.general_email || apiContact.email || staticSettings.contact.general_email,
            contact_phone: map.contact_phone || map.phone || apiContact.phone || staticSettings.contact.phone,
            contact_hours: map.contact_hours || map.office_hours || apiContact.business_hours || staticSettings.contact.office_hours,
            primary_cta_text: map.primary_cta_text || staticSettings.primary_cta_text,
          });
        }
      } catch {
        // Keep static fallback
      } finally {
        if (isMounted) setLoading(false);
      }
    };

    fetchSettings();

    return () => {
      isMounted = false;
    };
  }, []);

  return { contact, siteSettings, loading };
}
