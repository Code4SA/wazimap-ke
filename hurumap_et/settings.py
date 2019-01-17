import os
from collections import OrderedDict

import dj_database_url

from hurumap.settings import *  # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['hurumap_et'] + INSTALLED_APPS

MIDDLEWARE_CLASSES = (
        'whitenoise.middleware.WhiteNoiseMiddleware',
    ) + MIDDLEWARE_CLASSES

DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://hurumap_et:hurumap_et@localhost/hurumap_et')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True

# Localise this instance of HURUmap
HURUMAP['name'] = 'HURUmap Ethiopia'
HURUMAP['url'] = 'https://ethiopia.hurumap.org'
HURUMAP['twitter'] = '@Code4Africa'

HURUMAP['ga_tracking_id'] = 'UA-44795600-21'

HURUMAP['country_code'] = 'ET'
HURUMAP['country_name'] = 'Ethiopia'
HURUMAP['country_profile'] = 'country-ET-Ethiopia'
HURUMAP['profile_builder'] = 'hurumap_et.profiles.get_census_profile'
HURUMAP['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2010')
HURUMAP['legacy_embed_geo_version'] = '2010'
HURUMAP['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['province'],
    },
    'province': {
        'plural': 'provinces',
    }
}
HURUMAP['comparative_levels'] = ['country', 'province']
HURUMAP['geometry_data'] = {
    '2010': {
        'country': 'geo/country.topojson',
        'province': 'geo/province.topojson',
    }
}

HURUMAP['map_centre'] = [9.005401, 38.763611]
HURUMAP['map_zoom'] = 5

# TODO: Move these

HURUMAP['topics'] = OrderedDict()

HURUMAP['topics']['census'] = {
    'topic': 'census',
    'name': 'census 2010',
    'icon': '/static/img/census.png',
    'order': 1,
    'desc': 'Census data collected in 2010',
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

    ]
}

HURUMAP['topics']['health'] = {
    'topic': 'health',
    'name': 'health',
    'icon': '/static/img/health.png',
    'order': 2,
    'desc': 'Health data collected in 2014 by the Kenya National Bureau of Statistics ',
    'profiles': [

    ]
}
HURUMAP['topics']['agriculture'] = {
    'topic': 'agriculture',
    'name': 'agriculture',
    'icon': '/static/img/development.png',
    'order': 3,
    'desc': 'Crop production and Livestock population for the year 2014 provided by the Ministry of Agriculture, Livestock and Fisheries.',
    'profiles': [

    ],
}

LOGGING['loggers']['hurumap_et'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Making sure they are the same
WAZIMAP = HURUMAP
