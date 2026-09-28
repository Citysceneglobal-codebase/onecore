import React, { useState, useEffect } from 'react';
import { Search, Upload, X, Check, Image as ImageIcon, File } from 'lucide-react';
import { useAdminAuth } from '../../context/AdminAuthContext';

/**
 * MediaSelectorModal — browse/upload and pick a media asset.
 */
export default function MediaSelectorModal({ isOpen, onSelect, onClose }) {
  const { token } = useAdminAuth();
  const [mediaList, setMediaList] = useState([]);
  const [search, setSearch] = useState('');
  const [uploading, setUploading] = useState(false);
  const [selected, setSelected] = useState(null);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (!isOpen) return;
    setSelected(null);
    setSearch('');
    fetchMedia();
  }, [isOpen]);

  const fetchMedia = async () => {
    setLoading(true);
    try {
      const res = await fetch('/api/admin/media', {
        headers: { Authorization: `Bearer ${token}` },
      });
      const data = await res.json();
      if (data.success) setMediaList(data.data || []);
    } catch {
      // silent
    } finally {
      setLoading(false);
    }
  };

  const handleUpload = async (e) => {
    const file = e.target.files[0];
    if (!file) return;
    setUploading(true);
    const formData = new FormData();
    formData.append('file', file);
    try {
      const res = await fetch('/api/admin/media/upload', {
        method: 'POST',
        headers: { Authorization: `Bearer ${token}` },
        body: formData,
      });
      const data = await res.json();
      if (data.success && data.data) {
        setMediaList((prev) => [data.data, ...prev]);
        setSelected(data.data.file_path);
      }
    } catch {
      // silent
    } finally {
      setUploading(false);
    }
  };

  const filtered = mediaList.filter(
    (m) =>
      !search ||
      (m.original_name || m.original_filename || '')?.toLowerCase().includes(search.toLowerCase()) ||
      (m.filename || '')?.toLowerCase().includes(search.toLowerCase()) ||
      (m.alt_text || '')?.toLowerCase().includes(search.toLowerCase())
  );

  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-[250] flex items-center justify-center p-4">
      {/* Backdrop */}
      <div className="absolute inset-0 bg-slate-900/50 backdrop-blur-xs" onClick={onClose} />

      {/* Dialog */}
      <div className="relative z-10 w-full max-w-2xl bg-white border border-slate-200 rounded-2xl shadow-2xl flex flex-col max-h-[85vh] overflow-hidden">
        {/* Header */}
        <div className="flex items-center justify-between px-6 py-4 border-b border-slate-100 bg-[#FAFAFC]">
          <div>
            <h3 className="text-base font-bold text-slate-900 tracking-tight">Select from Media Library</h3>
            <p className="text-xs text-slate-500 font-normal mt-0.5">
              Choose an image from uploaded catalog or upload a new asset
            </p>
          </div>
          <button
            onClick={onClose}
            className="p-1.5 text-slate-400 hover:text-slate-700 hover:bg-slate-100 rounded-lg transition-colors"
          >
            <X size={18} />
          </button>
        </div>

        {/* Toolbar: Search + Direct Upload */}
        <div className="flex items-center gap-3 px-6 py-3.5 border-b border-slate-100 bg-white">
          <div className="relative flex-1">
            <input
              type="text"
              placeholder="Search media files by name..."
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              className="w-full bg-slate-50 border border-slate-200 rounded-lg px-3 py-1.5 pl-8 text-xs text-slate-900 placeholder-slate-400 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
            />
            <Search size={13} className="absolute left-2.5 top-2.5 text-slate-400 pointer-events-none" />
          </div>

          <label className="flex items-center gap-1.5 px-3 py-1.5 bg-[#1B365D] hover:bg-[#152a48] text-white text-xs font-semibold rounded-lg cursor-pointer transition-all shrink-0 shadow-xs">
            <Upload size={13} />
            <span>{uploading ? 'Uploading...' : 'Upload New'}</span>
            <input
              type="file"
              accept="image/*,video/*"
              className="hidden"
              onChange={handleUpload}
              disabled={uploading}
            />
          </label>
        </div>

        {/* Grid of images */}
        <div className="flex-1 overflow-y-auto p-6 scrollbar-thin">
          {loading ? (
            <div className="py-16 text-center text-slate-400 text-xs font-medium">
              Loading media library...
            </div>
          ) : filtered.length === 0 ? (
            <div className="py-16 text-center text-slate-400 text-xs">
              <ImageIcon size={32} className="mx-auto mb-2 text-slate-300" />
              <p className="font-medium text-slate-600">No media assets found matching query.</p>
              <p className="text-[11px] text-slate-400 mt-1">Upload an image to add it to the media catalog.</p>
            </div>
          ) : (
            <div className="grid grid-cols-3 sm:grid-cols-4 gap-3.5">
              {filtered.map((item) => {
                const filePath = item.file_path || `/uploads/${item.filename}`;
                const isImg = item.mime_type ? item.mime_type.startsWith('image/') : true;
                const isSelected = selected === filePath;

                return (
                  <button
                    key={item.id}
                    type="button"
                    onClick={() => setSelected(filePath)}
                    className={`relative group rounded-xl border-2 overflow-hidden aspect-square flex flex-col items-center justify-center p-1.5 transition-all text-left bg-slate-50 ${
                      isSelected
                        ? 'border-[#1B365D] ring-2 ring-[#1B365D]/20 bg-blue-50/20'
                        : 'border-slate-200 hover:border-slate-400 hover:shadow-xs'
                    }`}
                  >
                    {isImg ? (
                      <img
                        src={filePath}
                        alt={item.alt_text || item.filename}
                        className="w-full h-full object-cover rounded-lg"
                        onError={(e) => {
                          e.target.style.display = 'none';
                        }}
                      />
                    ) : (
                      <div className="flex flex-col items-center justify-center p-2 text-slate-400">
                        <File size={28} />
                        <span className="text-[10px] font-mono text-center truncate mt-1 max-w-full">
                          {item.filename}
                        </span>
                      </div>
                    )}

                    {/* Selected badge */}
                    {isSelected && (
                      <div className="absolute top-2 right-2 w-5 h-5 bg-[#1B365D] text-white rounded-full flex items-center justify-center shadow-md">
                        <Check size={12} strokeWidth={3} />
                      </div>
                    )}

                    {/* File name tooltip on hover */}
                    <div className="absolute inset-x-0 bottom-0 bg-slate-900/80 px-1.5 py-1 text-[9px] text-white font-mono truncate opacity-0 group-hover:opacity-100 transition-opacity">
                      {item.original_name || item.filename}
                    </div>
                  </button>
                );
              })}
            </div>
          )}
        </div>

        {/* Footer */}
        <div className="flex items-center justify-between px-6 py-4 border-t border-slate-200 bg-[#FAFAFC]">
          <div className="text-xs font-mono text-slate-500 truncate max-w-xs">
            {selected ? (
              <span className="text-slate-800 font-semibold">{selected}</span>
            ) : (
              'Click an asset above to select'
            )}
          </div>
          <div className="flex items-center gap-2.5">
            <button
              type="button"
              onClick={onClose}
              className="px-4 py-2 text-xs font-semibold text-slate-600 hover:text-slate-900 bg-slate-100 hover:bg-slate-200 rounded-lg transition-colors"
            >
              Cancel
            </button>
            <button
              type="button"
              disabled={!selected}
              onClick={() => {
                if (selected) {
                  onSelect(selected);
                  onClose();
                }
              }}
              className="px-4 py-2 text-xs font-semibold bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg transition-colors shadow-xs disabled:opacity-40 disabled:cursor-not-allowed"
            >
              Apply Image
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
