from django.contrib import admin

from .models import Corporation
from .models import ApiGroup, Api, ApiVersion
from rest_framework.authtoken.admin import TokenAdmin


class CorporationAdmin(admin.ModelAdmin):
    fields = ['name', 'desc', 'domain', 'auth_url', 'auth_lambda', 'access_domain', 'is_deleted']
    list_display = ('name', 'desc', 'created_at', 'updated_at', 'is_deleted')
    list_filter = [
        'name',
        'created_at',
        'updated_at',
        'is_deleted',
    ]
    search_fields = ['name']

    def get_ordering(self, request):
        return ['name']


class ApiGroupAdmin(admin.ModelAdmin):
    fields = ['name', 'desc', 'corporation', 'is_deleted']
    list_display = ('name', 'desc', 'corporation', 'created_at', 'updated_at', 'is_deleted')
    list_filter = [
        'name',
        'corporation',
        'created_at',
        'updated_at',
        'is_deleted',
    ]
    search_fields = ['name']

    def get_ordering(self, request):
        return ['name']


class ApiAdmin(admin.ModelAdmin):
    fields = ['name', 'desc', 'api_group', 'is_deleted']
    list_display = ('name', 'desc', 'api_group', 'created_at', 'updated_at', 'is_deleted')
    list_filter = [
        'name',
        'api_group',
        'created_at',
        'updated_at',
        'is_deleted',
    ]
    search_fields = ['name', 'api_group']

    def get_ordering(self, request):
        return ['name', 'api_group']


class ApiVersionAdmin(admin.ModelAdmin):
    fields = [
            'api', 'desc', 'outer_url', 'inner_url',
            'is_method_get', 'is_method_post', 'is_method_put', 'is_method_patch', 'is_method_delete',
            'is_preserve_host', 'is_strip_uri', 'retries',
            'upstream_connect_timeout', 'upstream_send_timeout', 'upstream_read_timeout',
            'is_https_only', 'is_deleted', 'is_audit'
    ]
    list_display = ('api', 'outer_url', 'created_at', 'updated_at', 'is_deleted')
    list_filter = [
        'api',
        'outer_url',
        'created_at',
        'updated_at',
        'is_deleted',
    ]
    search_fields = ['outer_url', 'inner_url']

    def get_ordering(self, request):
        return ['id', 'outer_url']


admin.site.register(Corporation, CorporationAdmin)
admin.site.register(ApiGroup, ApiGroupAdmin)
admin.site.register(Api, ApiAdmin)
admin.site.register(ApiVersion, ApiVersionAdmin)

TokenAdmin.raw_id_fields = ('user',)
