from django.conf.urls import url
from facultyreg import views
urlpatterns=[
    url('post/',views.facultyreg),
    url('view/',views.view_fac),
    url('update/(?P<idd>\w+)', views.updatefaculty, name="up"),
    url('delete/(?P<idd>\w+)',views.dele,name="del")
]