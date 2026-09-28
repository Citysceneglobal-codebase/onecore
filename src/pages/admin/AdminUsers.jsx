import React, { useState, useEffect } from 'react';
import {
  Users,
  UserPlus,
  Shield,
  CheckCircle2,
  XCircle,
  Trash2,
  Edit2,
  X,
  AlertCircle,
  Lock,
} from 'lucide-react';
import AdminLayout from '../../components/admin/AdminLayout';
import { AdminCard } from '../../components/admin/AdminCard';
import AdminTable from '../../components/admin/AdminTable';
import ConfirmModal from '../../components/admin/ConfirmModal';
import ToastNotification from '../../components/admin/ToastNotification';
import { useAdminAuth } from '../../context/AdminAuthContext';

export default function AdminUsers() {
  const { token, user: currentUser } = useAdminAuth();
  const [users, setUsers] = useState([]);
  const [roles, setRoles] = useState([]);
  const [loading, setLoading] = useState(true);
  const [showCreateModal, setShowCreateModal] = useState(false);
  const [editingUser, setEditingUser] = useState(null);
  const [deleteTarget, setDeleteTarget] = useState(null);
  const [toast, setToast] = useState(null);

  const [formData, setFormData] = useState({
    name: '',
    email: '',
    password: '',
    roleId: 2, // 1: Super Admin, 2: Admin, 3: Editor
  });
  const [isSubmitting, setIsSubmitting] = useState(false);

  const showToast = (type, message) => setToast({ type, message });

  const fetchUsers = async () => {
    setLoading(true);
    try {
      const res = await fetch('/api/admin/users', {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      if (res.ok) {
        const data = await res.json();
        if (data.success && data.data) {
          const userList = Array.isArray(data.data) ? data.data : (data.data.users || []);
          setUsers(userList);
          if (data.data.roles) setRoles(data.data.roles);
        }
      }
    } catch {
      // Keep state
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    document.title = 'Admin Users | Onecore Admin';
    fetchUsers();
  }, [token]);

  const handleCreateUser = async (e) => {
    e.preventDefault();
    setIsSubmitting(true);

    try {
      const res = await fetch('/api/admin/users', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(formData),
      });

      const data = await res.json();
      if (res.ok && data.success) {
        showToast('success', 'Admin user created successfully.');
        setShowCreateModal(false);
        setFormData({ name: '', email: '', password: '', roleId: 2 });
        fetchUsers();
      } else {
        showToast('error', data.message || 'Failed to create user.');
      }
    } catch (err) {
      showToast('error', err.message);
    } finally {
      setIsSubmitting(false);
    }
  };

  const handleUpdateUser = async (e) => {
    e.preventDefault();
    if (!editingUser) return;
    setIsSubmitting(true);

    try {
      const res = await fetch(`/api/admin/users/${editingUser.id}`, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify({
          name: editingUser.name,
          roleId: editingUser.role_id,
          isActive: editingUser.is_active,
          password: editingUser.new_password || undefined,
        }),
      });

      const data = await res.json();
      if (res.ok && data.success) {
        showToast('success', 'User updated successfully.');
        setEditingUser(null);
        fetchUsers();
      } else {
        showToast('error', data.message || 'Failed to update user.');
      }
    } catch (err) {
      showToast('error', err.message);
    } finally {
      setIsSubmitting(false);
    }
  };

  const handleDeleteUser = async () => {
    if (!deleteTarget) return;
    try {
      const res = await fetch(`/api/admin/users/${deleteTarget}`, {
        method: 'DELETE',
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });

      const data = await res.json();
      if (res.ok && data.success) {
        showToast('success', 'Administrator removed.');
        setUsers((prev) => prev.filter((u) => u.id !== deleteTarget));
      } else {
        showToast('error', data.message || 'Delete failed.');
      }
    } catch (err) {
      showToast('error', err.message);
    } finally {
      setDeleteTarget(null);
    }
  };

  const getRoleBadge = (roleName) => {
    switch (roleName) {
      case 'Super Admin':
        return (
          <span className="px-2 py-0.5 rounded-full text-[10px] font-mono uppercase font-bold bg-[#1B365D]/10 text-[#1B365D] border border-[#1B365D]/20">
            Super Admin
          </span>
        );
      case 'Admin':
        return (
          <span className="px-2 py-0.5 rounded-full text-[10px] font-mono uppercase font-bold bg-[#0D5C75]/10 text-[#0D5C75] border border-[#0D5C75]/20">
            Admin
          </span>
        );
      case 'Editor':
      default:
        return (
          <span className="px-2 py-0.5 rounded-full text-[10px] font-mono uppercase font-semibold bg-slate-100 text-slate-700 border border-slate-200">
            Editor
          </span>
        );
    }
  };

  return (
    <AdminLayout
      title="Admin Users & Role Permissions"
      subtitle="Manage authorized staff access, administrative credentials, and role-based permissions (Super Admin Only)"
    >
      <AdminCard
        title={`Administrators (${users.length})`}
        subtitle="Accounts provisioned with access to the Onecore Pharma CMS"
        action={
          <button
            type="button"
            onClick={() => setShowCreateModal(true)}
            className="flex items-center gap-1.5 px-3 py-1.5 text-xs font-semibold bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg transition-all shadow-xs"
          >
            <UserPlus size={13} />
            <span>Add Admin User</span>
          </button>
        }
      >
        {loading ? (
          <div className="py-12 text-center text-slate-400 text-xs">
            Loading administrator accounts...
          </div>
        ) : (
          <AdminTable
            headers={['Administrator', 'Email Address', 'Role Permission', 'Account Status', 'Last Login', 'Actions']}
          >
            {users.map((u) => (
              <tr key={u.id} className="hover:bg-slate-50 transition-colors">
                <td className="py-3 px-4 font-semibold text-slate-900">
                  <div className="flex items-center gap-2.5">
                    <div className="w-7 h-7 rounded-full bg-slate-100 border border-slate-200 text-slate-700 font-bold text-xs flex items-center justify-center">
                      {u.name?.charAt(0).toUpperCase()}
                    </div>
                    <span>{u.name}</span>
                  </div>
                </td>
                <td className="py-3 px-4 text-xs text-slate-600 font-mono">
                  {u.email}
                </td>
                <td className="py-3 px-4">
                  {getRoleBadge(u.role_name)}
                </td>
                <td className="py-3 px-4">
                  <span
                    className={`inline-flex items-center gap-1 text-xs font-semibold ${
                      u.is_active === 1 ? 'text-emerald-700' : 'text-slate-400'
                    }`}
                  >
                    {u.is_active === 1 ? <CheckCircle2 size={13} /> : <XCircle size={13} />}
                    <span>{u.is_active === 1 ? 'Active' : 'Disabled'}</span>
                  </span>
                </td>
                <td className="py-3 px-4 font-mono text-[11px] text-slate-500">
                  {u.last_login_at ? new Date(u.last_login_at).toLocaleDateString() : 'Never'}
                </td>
                <td className="py-3 px-4">
                  <div className="flex items-center gap-2">
                    <button
                      type="button"
                      onClick={() => setEditingUser({ ...u, new_password: '' })}
                      className="px-2.5 py-1 text-xs font-semibold bg-slate-100 hover:bg-slate-200 text-slate-800 rounded-lg transition-all"
                    >
                      <Edit2 size={12} className="inline mr-1" />
                      Edit
                    </button>
                    {u.id !== currentUser?.id && (
                      <button
                        type="button"
                        onClick={() => setDeleteTarget(u.id)}
                        className="p-1 text-slate-400 hover:text-rose-600 rounded"
                        title="Delete User"
                      >
                        <Trash2 size={13} />
                      </button>
                    )}
                  </div>
                </td>
              </tr>
            ))}
          </AdminTable>
        )}
      </AdminCard>

      {/* Create User Modal */}
      {showCreateModal && (
        <div className="fixed inset-0 z-[200] flex items-center justify-center p-4">
          <div className="absolute inset-0 bg-slate-900/50 backdrop-blur-xs" onClick={() => setShowCreateModal(false)} />
          <div className="relative z-10 w-full max-w-md bg-white border border-slate-200 rounded-2xl p-6 shadow-2xl space-y-4">
            <div className="flex items-center justify-between pb-3 border-b border-slate-100">
              <h3 className="text-base font-bold text-slate-900">Add Administrator User</h3>
              <button onClick={() => setShowCreateModal(false)} className="text-slate-400 hover:text-slate-700">
                <X size={18} />
              </button>
            </div>

            <form onSubmit={handleCreateUser} className="space-y-3.5">
              <div>
                <label className="block text-xs font-mono uppercase text-slate-600 font-medium mb-1">Full Name *</label>
                <input
                  type="text"
                  required
                  value={formData.name}
                  onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                  placeholder="e.g. Dr. Rajesh Sharma"
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                />
              </div>

              <div>
                <label className="block text-xs font-mono uppercase text-slate-600 font-medium mb-1">Email Address *</label>
                <input
                  type="email"
                  required
                  value={formData.email}
                  onChange={(e) => setFormData({ ...formData, email: e.target.value })}
                  placeholder="name@onecorepharma.in"
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                />
              </div>

              <div>
                <label className="block text-xs font-mono uppercase text-slate-600 font-medium mb-1">Initial Password *</label>
                <input
                  type="password"
                  required
                  value={formData.password}
                  onChange={(e) => setFormData({ ...formData, password: e.target.value })}
                  placeholder="Minimum 8 characters"
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                />
              </div>

              <div>
                <label className="block text-xs font-mono uppercase text-slate-600 font-medium mb-1">Role Permission *</label>
                <select
                  value={formData.roleId}
                  onChange={(e) => setFormData({ ...formData, roleId: parseInt(e.target.value, 10) })}
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                >
                  <option value={1}>Super Admin (Full system control, users & security)</option>
                  <option value={2}>Admin (Content, media, products, enquiries)</option>
                  <option value={3}>Editor (Content & products editing only)</option>
                </select>
              </div>

              <div className="flex items-center justify-end gap-2.5 pt-3 border-t border-slate-100">
                <button
                  type="button"
                  onClick={() => setShowCreateModal(false)}
                  className="px-4 py-2 text-xs font-semibold text-slate-600 hover:text-slate-900 bg-slate-100 rounded-lg"
                >
                  Cancel
                </button>
                <button
                  type="submit"
                  disabled={isSubmitting}
                  className="px-4 py-2 text-xs font-semibold bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg shadow-xs disabled:opacity-50"
                >
                  {isSubmitting ? 'Creating...' : 'Create Account'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}

      {/* Edit User Modal */}
      {editingUser && (
        <div className="fixed inset-0 z-[200] flex items-center justify-center p-4">
          <div className="absolute inset-0 bg-slate-900/50 backdrop-blur-xs" onClick={() => setEditingUser(null)} />
          <div className="relative z-10 w-full max-w-md bg-white border border-slate-200 rounded-2xl p-6 shadow-2xl space-y-4">
            <div className="flex items-center justify-between pb-3 border-b border-slate-100">
              <h3 className="text-base font-bold text-slate-900">Edit Administrator: {editingUser.name}</h3>
              <button onClick={() => setEditingUser(null)} className="text-slate-400 hover:text-slate-700">
                <X size={18} />
              </button>
            </div>

            <form onSubmit={handleUpdateUser} className="space-y-3.5">
              <div>
                <label className="block text-xs font-mono uppercase text-slate-600 font-medium mb-1">Full Name</label>
                <input
                  type="text"
                  required
                  value={editingUser.name}
                  onChange={(e) => setEditingUser({ ...editingUser, name: e.target.value })}
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                />
              </div>

              <div>
                <label className="block text-xs font-mono uppercase text-slate-600 font-medium mb-1">Role Permission</label>
                <select
                  value={editingUser.role_id}
                  onChange={(e) => setEditingUser({ ...editingUser, role_id: parseInt(e.target.value, 10) })}
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                >
                  <option value={1}>Super Admin</option>
                  <option value={2}>Admin</option>
                  <option value={3}>Editor</option>
                </select>
              </div>

              <div>
                <label className="block text-xs font-mono uppercase text-slate-600 font-medium mb-1">Account Active Status</label>
                <select
                  value={editingUser.is_active}
                  onChange={(e) => setEditingUser({ ...editingUser, is_active: parseInt(e.target.value, 10) })}
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                >
                  <option value={1}>Active</option>
                  <option value={0}>Disabled</option>
                </select>
              </div>

              <div>
                <label className="block text-xs font-mono uppercase text-slate-600 font-medium mb-1">Reset Password (Optional)</label>
                <input
                  type="password"
                  value={editingUser.new_password || ''}
                  onChange={(e) => setEditingUser({ ...editingUser, new_password: e.target.value })}
                  placeholder="Leave blank to keep existing password"
                  className="w-full bg-white border border-slate-200 rounded-lg px-3 py-2 text-xs text-slate-900 focus:outline-none focus:border-[#0D5C75] focus:ring-1 focus:ring-[#0D5C75]"
                />
              </div>

              <div className="flex items-center justify-end gap-2.5 pt-3 border-t border-slate-100">
                <button
                  type="button"
                  onClick={() => setEditingUser(null)}
                  className="px-4 py-2 text-xs font-semibold text-slate-600 hover:text-slate-900 bg-slate-100 rounded-lg"
                >
                  Cancel
                </button>
                <button
                  type="submit"
                  disabled={isSubmitting}
                  className="px-4 py-2 text-xs font-semibold bg-[#1B365D] hover:bg-[#152a48] text-white rounded-lg shadow-xs disabled:opacity-50"
                >
                  {isSubmitting ? 'Saving...' : 'Save Changes'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}

      {/* Delete Modal */}
      <ConfirmModal
        isOpen={!!deleteTarget}
        title="Delete Administrator"
        message="Are you sure you want to permanently delete this administrator account?"
        confirmLabel="Delete User"
        onConfirm={handleDeleteUser}
        onCancel={() => setDeleteTarget(null)}
        dangerous
      />

      <ToastNotification toast={toast} onDismiss={() => setToast(null)} />
    </AdminLayout>
  );
}
