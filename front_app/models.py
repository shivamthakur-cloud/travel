from django.db import models


class UserRole(models.Model):
    role_id = models.CharField(max_length=255, default="")
    role_name = models.CharField(max_length=255, unique=True, blank=True, default="")


# class RoleDetails(models.Model):
#     role_id = models.ForeignKey(UserRole, on_delete=models.CASCADE)
#     name = models.CharField(max_length=255, default="", null=True, blank=True)
#     email = models.EmailField(max_length=255, default="", unique=True, null=True, blank=True)
#     password = models.CharField(max_length=255, default="", null=True, blank=True)
#     mobile = models.BigIntegerField(max_length=255, default="", unique=True, null=True, blank=True)
#     address = models.TextField(max_length=255, unique=True, null=True, blank=True)
#     gender = models.CharField(max_length=255, blank=True, null=True, default="")
