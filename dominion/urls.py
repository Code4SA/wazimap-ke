from django.conf.urls import include, url
from django.conf.urls.static import static
from django.views.decorators.cache import cache_page
from django.views.generic import RedirectView

from dominion import settings
from hurumap.urls import urlpatterns as hurumap_urlpatterns
from hurumap.dashboard.urls import urlpatterns as hurumap_dashboard_urlpatterns

from dominion.views import GeographyCompareAPIView

STANDARD_CACHE_TIME = settings.HURUMAP['cache_secs']

urlpatterns = [
    url(
        regex   = '^api/compare/(?P<geo_id1>\w+-\w+)/vs/(?P<geo_id2>\w+-\w+)/$',
        view    = cache_page(STANDARD_CACHE_TIME)(GeographyCompareAPIView.as_view()),
        kwargs  = {},
        name    = 'api_geography_compare',
    ),] + \
    static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) + \
    static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) + \
    hurumap_urlpatterns + hurumap_dashboard_urlpatterns
