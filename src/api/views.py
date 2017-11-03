import requests
from rest_framework import filters
from rest_framework import viewsets
from rest_framework.parsers import JSONParser
from rest_framework.response import Response
from rest_framework.views import APIView
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token
from django.core.exceptions import ValidationError, ObjectDoesNotExist

from .models import Corporation
from .models import ApiGroup, Api, ApiVersion
from .serializers import CorporationSerializer
from .serializers import ApiGroupSerializer, ApiSerializer, ApiVersionSerializer


class DefaultsMixin(object):
    authentication_classes = (
        # SessionAuthentication,
        # BasicAuthentication,
        # TokenAuthentication,
    )
    permission_classes = (
        # IsAuthenticated,
    )
    http_method_names = ['get', 'post', 'put', 'patch', 'head', 'options']


class CorporationViewSet(DefaultsMixin, viewsets.ModelViewSet):
    queryset = Corporation.objects.all()
    serializer_class = CorporationSerializer
    filter_backends = (filters.DjangoFilterBackend, filters.OrderingFilter)
    filter_fields = ('id', 'name', 'is_deleted')
    ordering_fields = ('id', 'name', 'created_at', 'updated_at')
    ordering = ('name', 'created_at', 'updated_at')


class ApiGroupViewSet(DefaultsMixin, viewsets.ModelViewSet):
    queryset = ApiGroup.objects.all()
    serializer_class = ApiGroupSerializer
    filter_backends = (filters.DjangoFilterBackend, filters.OrderingFilter)
    filter_fields = ('id', 'name', 'corporation', 'is_deleted')
    ordering_fields = ('id', 'name', 'corporation', 'created_at', 'updated_at')
    ordering = ('name', 'corporation', 'created_at', 'updated_at')


class ApiViewSet(DefaultsMixin, viewsets.ModelViewSet):
    queryset = Api.objects.all()
    serializer_class = ApiSerializer
    filter_backends = (filters.DjangoFilterBackend, filters.OrderingFilter)
    filter_fields = ('id', 'name', 'api_group', 'is_deleted')
    ordering_fields = ('id', 'name', 'created_at', 'updated_at')
    ordering = ('name', 'created_at', 'updated_at')


class ApiVersionViewSet(DefaultsMixin, viewsets.ModelViewSet):
    queryset = ApiVersion.objects.all()
    serializer_class = ApiVersionSerializer
    filter_backends = (filters.DjangoFilterBackend, filters.OrderingFilter)
    filter_fields = ('id', 'api', 'outer_url', 'is_deleted')
    ordering_fields = ('id', 'outer_url', 'inner_url', 'created_at', 'updated_at')
    ordering = ('outer_url', 'inner_url', 'created_at', 'updated_at')
