from .models import Corporation
from .models import ApiGroup, Api, ApiVersion
from rest_framework import serializers


class CorporationSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Corporation
        fields = ('id', 'name', 'desc', 'domain', 'auth_url', 'auth_lambda', 'access_domain', 'created_at', 'updated_at', 'is_deleted')


class ApiGroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = ApiGroup
        fields = ('id', 'name', 'desc', 'corporation', 'created_at', 'updated_at', 'is_deleted')


class ApiSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Api
        fields = ('id', 'name', 'desc', 'api_group', 'created_at', 'updated_at', 'is_deleted')


class ApiVersionSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = ApiVersion
        fields = (
                'id', 'api', 'desc', 'outer_url', 'inner_url',
                'is_method_get', 'is_method_post', 'is_method_put', 'is_method_patch', 'is_method_delete',
                'is_preserve_host', 'is_strip_uri', 'retries',
                'upstream_connect_timeout', 'upstream_send_timeout', 'upstream_read_timeout',
                'is_https_only', 'is_audit',
                'created_at', 'updated_at', 'is_deleted'
        )
