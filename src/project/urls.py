"""project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin

from rest_framework import routers
from rest_framework.documentation import include_docs_urls
from api import views as apiviews
from rest_framework_swagger.views import get_swagger_view

from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from rest_framework.authtoken import views as authviews
from rest_auth.views import PasswordChangeView
from django.views.generic.base import RedirectView


router = routers.DefaultRouter(trailing_slash=False)
router.register(r'corporations', apiviews.CorporationViewSet)
router.register(r'api_groups', apiviews.ApiGroupViewSet)
router.register(r'apis', apiviews.ApiViewSet)
router.register(r'api_versions', apiviews.ApiVersionViewSet)


schema_view = get_swagger_view(title='Hotfix API')
favicon_view = RedirectView.as_view(url='/static/favicon.ico', permanent=True)


urlpatterns = [
    url(r'^favicon\.ico$', favicon_view),
    url(r'^admin/', admin.site.urls),
    url(r'^', include(router.urls)),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    url(r'^docs/', include_docs_urls(title='Hotfix API')),
    url(r'^swagger/$', schema_view),
    url(r'^password/change$', PasswordChangeView.as_view(), name='rest_password_change'),
]

urlpatterns += staticfiles_urlpatterns()

urlpatterns += [
    url(r'^api-token-auth/', authviews.obtain_auth_token)
]
