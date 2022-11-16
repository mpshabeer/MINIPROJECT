from django.conf.urls import url
from facultyreg import views
urlpatterns=[
    url('post/',views.facultyreg),
    url('view/',views.view_fac),
    url('update/(?P<idd>\w+)', views.updatefaculty, name="upf"),
    url('delete/(?P<idd>\w+)',views.dele,name="delf"),
    url('status/(?P<idd>\w+)', views.status, name="approves"),
    url('suspend/(?P<idd>\w+)', views.suspend, name="suspends")
]