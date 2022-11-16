from django.conf.urls import url
from chat import views

urlpatterns=[
#     url('sec/',views.doctor),
#     url('rec/',views.user),
    url('fac/(?P<idd>\w+)',views.userchat),
    url('std/(?P<idd>\w+)',views.stdchat),
    url('files/(?P<idd>\w+)',views.postfile),
    url('dwn/(?P<idd>\w+)',views.viewfile)

]