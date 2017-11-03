from django.db import models

import uuid

# Create your models here.


class BaseObject(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    is_deleted = models.BooleanField(null=False, default=False)

    @staticmethod
    def push_event(action, object_type, object_id):
        event = Event(
            action=action,
            table_name=object_type,
            table_id=object_id,
            status=0,
        )

        event.save()

    class Meta:
        abstract = True


class Corporation(BaseObject):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=128, null=False, unique=True)
    desc = models.CharField(max_length=255, null=False, default="")
    domain = models.CharField(max_length=128, null=False, default="", unique=True)
    auth_url = models.CharField(max_length=1024, null=False, default="")
    auth_lambda = models.CharField(max_length=1024, null=True, blank=True, default="")
    access_domain = models.CharField(max_length=1024, null=False, default="")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Corporation'
        verbose_name_plural = 'Corporations'


class ApiGroup(BaseObject):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=64, null=False, unique=True)
    desc = models.CharField(max_length=128, null=False, default="")
    corporation = models.ForeignKey(Corporation)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'ApiGroup'
        verbose_name_plural = 'ApiGroups'


class Api(BaseObject):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=50, null=False, unique=True)
    desc = models.CharField(max_length=108, null=False, default="")
    api_group = models.ForeignKey(ApiGroup)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Api'
        verbose_name_plural = 'Apis'


class ApiVersionBase(BaseObject):
    api = models.ForeignKey(Api)
    desc = models.CharField(max_length=108, null=False, default="")
    outer_url = models.CharField(max_length=255, null=False, unique=True)
    inner_url = models.URLField(max_length=1024, null=False)
    is_method_get = models.BooleanField(null=False, default=False)
    is_method_post = models.BooleanField(null=False, default=False)
    is_method_put = models.BooleanField(null=False, default=False)
    is_method_patch = models.BooleanField(null=False, default=False)
    is_method_delete = models.BooleanField(null=False, default=False)
    is_strip_uri = models.BooleanField(null=False, default=True)
    retries = models.IntegerField(default=5)
    upstream_connect_timeout = models.IntegerField(default=60000)
    upstream_send_timeout = models.IntegerField(default=60000)
    upstream_read_timeout = models.IntegerField(default=60000)
    is_preserve_host = models.BooleanField(null=False, default=False)
    is_https_only = models.BooleanField(null=False, default=False)
    is_audit = models.BooleanField(null=False, default=False)

    class Meta:
        abstract = True


class ApiVersion(ApiVersionBase):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)

    def __str__(self):
        return self.outer_url

    class Meta:
        verbose_name = 'ApiVersion'
        verbose_name_plural = 'ApiVersions'


