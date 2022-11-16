from django.conf.urls import url
from feedback import views
urlpatterns=[
    url('feed/',views.feedback),
    url('view/',views.view_feedback),
    url('delete/(?P<idd>\w+)', views.dele, name="delfeed"),
]