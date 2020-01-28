from backend_app.models import UserRole, RoleDetails
from django import forms


class UserRoleForm(forms.ModelForm):
    class Meta:
        model = UserRole
        exclude = ['role_id', 'role_name']


class RoleDetailsForm(forms.ModelForm):
    class Meta:
        model = RoleDetails
        exclude = ['role_id', 'name', 'email', 'password', 'mobile', 'address', 'image', 'gender',
                   'verify_link', 'otp', 'otp_time', 'is_active']