from django.db import models


class UserRole(models.Model):
    role_id = models.AutoField(primary_key=True)
    role_name = models.CharField(max_length=255, unique=True, blank=True, default="")

    def __str__(self):
        return self.role_name


class RoleDetails(models.Model):
    role_id = models.ForeignKey(UserRole, on_delete=models.CASCADE)
    name = models.CharField(max_length=255, default="", null=True, blank=True)
    email = models.EmailField(primary_key=True, max_length=255, default="", unique=True, blank=True)
    password = models.CharField(max_length=255, default="", null=True, blank=True)
    mobile = models.BigIntegerField(default="", blank=True, null=True)
    address = models.TextField(default="", null=True, blank=True)
    gender = models.CharField(max_length=255, blank=True, null=True, default="")
    image = models.CharField(max_length=255, default="", null=True, blank=True)
    is_active = models.NullBooleanField(default=0)
    otp = models.CharField(max_length=255, default="", null=True, blank=True)
    otp_time = models.CharField(max_length=255, default="", null=True, blank=True)
    verify_link = models.CharField(max_length=255, default="", null=True, blank=True)

