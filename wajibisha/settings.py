# coding=utf-8
from hurumap.settings import *  # noqa

# insert our overrides before both census and hurumap
INSTALLED_APPS = ['wajibisha'] + INSTALLED_APPS

# Wajibisha URLS
ROOT_URLCONF = 'wajibisha.urls'


DATABASE_URL = os.environ.get('DATABASE_URL',
                              'postgresql://wajibisha:wajibisha@localhost/wajibisha')
DATABASES['default'] = dj_database_url.parse(DATABASE_URL)
DATABASES['default']['ATOMIC_REQUESTS'] = True


WAJIBISHA = WAZIMAP

WAJIBISHA['name'] = 'Wajibisha'
WAJIBISHA['url'] = 'https://wajibisha.hurumap.org'
WAJIBISHA['country_code'] = 'KE'
WAJIBISHA['country_name'] = 'Kenya'
WAJIBISHA['description'] = "Wajibisha (Swahili for ‘hold accountable’) is a " \
                           "platform-based promise tracker where Kenyan " \
                           "citizens can keep track of the various promises " \
                           "made by governors in the manifestos as well as " \
                           "during the campaigns leading up to the 2017 " \
                           "general election."
WAJIBISHA['title_tagline'] = 'Hold Accountable'

wajibisha_profile = os.environ.get('WAJIBISHA_PROFILE', 'promises')

PROJECT_PATH = os.path.realpath(os.path.dirname(__file__))

TEMPLATE_DIRS = (
    os.path.join(PROJECT_PATH, 'wajibisha', 'templates'),
)


WAJIBISHA['default_profile'] = wajibisha_profile

WAJIBISHA['profile_builder'] = 'wajibisha.profiles.{}.get_profile'.format(
    wajibisha_profile)
WAJIBISHA['default_geo_version'] = os.environ.get('DEFAULT_GEO_VERSION', '2009')
WAJIBISHA['legacy_embed_geo_version'] = '2009'

WAJIBISHA['map_centre'] = [0.3051933453207569, 37.908818734483155]
WAJIBISHA['map_zoom'] = 6

WAJIBISHA['levels'] = {
    'country': {
        'plural': 'countries',
        'children': ['county'],
    },
    'county': {
        'plural': 'counties',
    }
}
WAJIBISHA['comparative_levels'] = ['country']
WAJIBISHA['geometry_data'] = {
    '2009': {
        'country': 'geo/country.topojson',
        'county': 'geo/county.topojson'
    }
}

TEMPLATE_CONTEXT_PROCESSORS += (
    'wajibisha.utils.context_processors.get_homepage_promises',
)

STATIC_ROOT = 'wajibisha/static/'

LOGGING['loggers']['wajibisha'] = {'level': 'DEBUG' if DEBUG else 'INFO'}

# Trello Settings
BOARDS = {
    'Nairobi': 'https://api.trello.com/1/boards/hmtAAEVr'
}

PROMISE_STATUS = [
    'Done', 'Five years plans', 'Altered Promise', 'In Progress', 'Not done'
]

# Time when the promises were last updated
LAST_UPDATED = None

# Making sure they are the same
WAZIMAP = WAJIBISHA