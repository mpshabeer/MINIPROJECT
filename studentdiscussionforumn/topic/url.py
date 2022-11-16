from django.conf.urls import url
from topic import views

urlpatterns=[
    url('post/', views.createtopic),
    url('manage/',views.view_topics),
    url('edit/(?P<idd>\w+)', views.edit, name="up"),
    url('delete/(?P<idd>\w+)', views.dele, name="del")
]