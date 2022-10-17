from django.conf.urls import url
from feedback import views
urlpatterns=[
    url('feed/',views.feedback),
    url('view/',views.view_feedback)
]