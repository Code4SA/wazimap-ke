import json
from django.conf import settings
from django.core.serializers.json import DjangoJSONEncoder
from django.http import Http404
from django.utils.http import urlencode
from django.utils.safestring import SafeString
from django.utils.text import slugify
from django.utils.module_loading import import_string
from django.views.generic import TemplateView
from django.shortcuts import redirect
from wazimap.geo import geo_data, LocationNotFound
from wazimap.profiles import enhance_api_data
from wazimap.data.utils import dataset_context, get_page_releases
from wazimap.views import GeographyDetailView as BaseGeographyDetailView
from .data.utils import get_page_releases_per_country, \
    get_primary_release_year_per_geography

COUNTRIES = settings.HURUMAP.get('countries', {})


class CountryPageView(TemplateView):
    template_name = 'country_page.html'
    default_geo_version = None

    def get_context_data(self, **kwargs):
        context = super(CountryPageView, self).get_context_data(**kwargs)
        country_slug = self.kwargs['country']

        country = COUNTRIES[country_slug]
        country['slug'] = country_slug

        geo = geo_data.get_geography(
            country['code'], 'country', self.default_geo_version)
        context['country'] = country
        context['geography'] = geo.as_dict_deep()
        return context


class GeographyDetailView(BaseGeographyDetailView):
    adjust_slugs = True
    default_geo_version = None

    def dispatch(self, request, *args, **kwargs):
        version = request.GET.get('geo_version', self.default_geo_version)
        self.geo_id = self.kwargs.get('geography_id', None)

        try:
            self.geo_level, self.geo_code = self.geo_id.split('-', 1)
            self.geo = geo_data.get_geography(
                self.geo_code, self.geo_level, version)
        except (ValueError, LocationNotFound):
            raise Http404

        # check slug
        if self.adjust_slugs and (kwargs.get('slug') or self.geo.slug):
            if kwargs['slug'] != self.geo.slug:
                kwargs['slug'] = self.geo.slug
                url = '/profiles/%s-%s-%s?%s' % (
                    self.geo_level, self.geo_code, self.geo.slug, urlencode(request.GET))
                return redirect(url, permanent=True)

        # Skip the parent class's logic completely and go back to basics
        return TemplateView.dispatch(self, request, *args, **kwargs)

    def get_context_data(self, **kwargs):
        page_context = {}

        # load the profile
        profile_method = settings.HURUMAP.get('profile_builder', None)
        self.profile_name = settings.HURUMAP.get('default_profile', 'default')

        if not profile_method:
            raise ValueError(
                "You must define WAZIMAP.profile_builder in settings.py")
        profile_method = import_string(profile_method)

        year = self.request.GET.get(
            'release', get_primary_release_year_per_geography(self.geo))
        if settings.HURUMAP['latest_release_year'] == year:
            year = 'latest'

        with dataset_context(year=year):
            profile_data = profile_method(
                self.geo, self.profile_name, self.request)

        profile_data['geography'] = self.geo.as_dict_deep()
        profile_data['primary_releases'] = get_page_releases_per_country(
            settings.HURUMAP['primary_dataset_name'], self.geo, year)

        profile_data = enhance_api_data(profile_data)
        page_context.update(profile_data)

        profile_data_json = SafeString(
            json.dumps(profile_data, cls=DjangoJSONEncoder))

        page_context.update({
            'profile_data_json': profile_data_json
        })

        # is this a head-to-head view?
        page_context['head2head'] = 'h2h' in self.request.GET

        return page_context

    def get_geography(self, geo_id):
        # stub this out to prevent the subclass for calling out to CR
        pass

    def get_template_names(self):
        return ['profile/profile_detail_%s.html' % self.profile_name, 'profile/profile_detail.html']


class GeographyCompareView(TemplateView):
    template_name = 'profile/head2head.html'
    default_geo_version = None

    def get_context_data(self, **kwargs):
        page_context = {}
        version = self.request.GET.get('geo_version', self.default_geo_version)
        self.geo_id1 = self.kwargs.get('geo_id1', None)
        self.geo_id2 = self.kwargs.get('geo_id2', None)

        self.geo_level1, self.geo_code1 = self.geo_id1.split('-', 1)
        self.geo_level2, self.geo_code2 = self.geo_id2.split('-', 1)
        self.geo1 = geo_data.get_geography(
            self.geo_code1, self.geo_level1, version)
        self.geo2 = geo_data.get_geography(
            self.geo_code2, self.geo_level2, version)

        # load the profile
        profile_method = settings.HURUMAP.get('profile_builder', None)
        self.profile_name = settings.HURUMAP.get('default_profile', 'default')

        if not profile_method:
            raise ValueError(
                "You must define WAZIMAP.profile_builder in settings.py")
        profile_method = import_string(profile_method)

        year = self.request.GET.get('release')
        if settings.HURUMAP['latest_release_year'] == year:
            year = 'latest'

        with dataset_context(year=year):
            profile_data1 = profile_method(
                self.geo1, self.profile_name, self.request)
            profile_data2 = profile_method(
                self.geo2, self.profile_name, self.request)

        profile_data1['geography'] = self.geo1.as_dict_deep()
        profile_data2['geography'] = self.geo2.as_dict_deep()
        profile_data1['primary_releases'] = get_page_releases_per_country(
            settings.HURUMAP['primary_dataset_name'], self.geo1, year)
        profile_data2['primary_releases'] = get_page_releases_per_country(
            settings.HURUMAP['primary_dataset_name'], self.geo2, year)

        profile_data1 = enhance_api_data(profile_data1)
        page_context.update(profile_data1)

        profile_data2 = enhance_api_data(profile_data2)
        page_context.update(profile_data2)

        profile_data_json_one = SafeString(
            json.dumps(profile_data1, cls=DjangoJSONEncoder))

        profile_data_json_two = SafeString(
            json.dumps(profile_data2, cls=DjangoJSONEncoder))

        primary_releases = get_page_releases_per_country(
            settings.HURUMAP['primary_dataset_name'], self.geo1, year)

        page_context.update({
            'profile_data_json_one': profile_data_json_one,
            'profile_data_json_two':profile_data_json_two,
            'compare_primary_releases': primary_releases,
            'geo_id1': self.geo_id1,
            'geo_id2': self.geo_id2,
        })

        # is this a head-to-head view?
        page_context['head2head'] = True

        return page_context
