from django.conf.urls import url, patterns, include
from elimu_yangu.careerguide.views import school, alevel_subjects, olevel_subjects, index
from django.conf.urls.i18n import i18n_patterns
#from wazimap.urls import *

urlpatterns = patterns('',
    url(regex = r'^$', view = index, name='index'),
    url(regex = 'school/(?P<schoolcode>[\w.-]+)/$', view = school, name='school'),
    url(regex = 'subjects/a-level', view = alevel_subjects, name='subjects/a-level'),
    url(regex = 'subjects/o-level', view = olevel_subjects, name='subjects/o-level'),
    #(r'^i18n/', include('django.conf.urls.i18n')),
    )

# urlpatterns += i18n_patterns(
#     url(r'^i18n/', include('django.conf.urls.i18n'))
# )
