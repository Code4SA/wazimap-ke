import os
from collections import OrderedDict

from hurumap.settings import *  # noqa

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# insert our overrides before both census and HURUmap
INSTALLED_APPS = ['elimu_yangu', 'elimu_yangu.careerguide', 'elimu_yangu.leaguetable', 'elimu_yangu.universityfinder'] + INSTALLED_APPS

# League Table URLS
ROOT_URLCONF = 'elimu_yangu.urls'

DATABASE_URL = os.environ.get(
    'DATABASE_URL',
    'postgresql://elimu_yangu:elimu_yangu@localhost/elimu_yangu')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


# Localise this instance of HURUmap
HURUMAP['name'] = 'Elimu Yangu'
HURUMAP['description'] = 'it shows ranking of different secondary schools\
                            bassed on their performance in each year.'
HURUMAP['url'] = 'https://elimu_yangu.codefortanzania.org'
HURUMAP['country_code'] = 'TZ'
HURUMAP['country_name'] = 'Tanzania'
HURUMAP['country_profile'] = 'country-TZ-Tanzania'
#HURUMAP['profile_builder'] = 'elimu_yangu.profiles.get_census_profile'

 # Define the profile to load

hurumap_profile = os.environ.get('HURUMAP_PROFILE', 'census')

HURUMAP['default_profile'] = hurumap_profile


HURUMAP['profile_builder'] = 'elimu_yangu.profiles.{}.get_profile'.format(hurumap_profile)
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
HURUMAP['legacy_embed_geo_version'] = '2009'

HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['region', 'district'],
    },
    'region': {
        'plural': 'regions',
        'children': ['district'],
    },
    'district': {
        'plural': 'districts',
        'children': [],
    }
}

HURUMAP['comparative_levels'] = ["district", "region", "country"]
HURUMAP['geometry_data'] = {
    '2009': {
                'country': 'geo/country.topojson',
                'region': 'geo/region.topojson',
                'district': 'geo/district.topojson'
            }
}

HURUMAP['ga_tracking_ids'] = [
    'UA-91133100-4',
    'UA-44795600-27',
    'UA-92541368-2']
HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['map_centre'] = [-6.1523563, 35.6754813]
HURUMAP['map_zoom'] = 6

HURUMAP['topics'] = OrderedDict()

HURUMAP['topics']['census'] = {
    'topic': 'census',
    'name': 'census',
    'icon': '/static/img/census.png',
    'order': 1,
    'desc': 'Census data collected in 2009',
    'profiles': [
        'Demographics'
    ]
}

HURUMAP['topics']['education'] = {
    'topic': 'education',
    'name': 'education',
    'icon': '/static/img/education.png',
    'desc': 'Education data from Twaweza',
    'profiles': [
        'literacy and numeracy tests',
        'school attendance',
    ]
}

HURUMAP['topics']['health'] = {
    'topic': 'health',
    'name': 'health',
    'icon': '/static/img/health.png',
    'desc': 'Health data',
    'profiles': [
        'pepfar',
        'causes of death',
        'health centers distribution',
        'health workers distribution',
        'family planning clients',
        'place of delivery',
        'tetanus vaccine',
    ]
}

HURUMAP['topics']['development'] = {
    'topic': 'development',
    'name': 'development',
    'icon': '/static/img/development.png',
    'desc': '',
    'profiles': [
        'traffic and crimes'
    ]
}

STATIC_ROOT = 'elimu_yangu/static/'

LOGGING['loggers']['elimu_yangu'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HURUMAP
