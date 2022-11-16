from django.conf.urls import url
from post import views
urlpatterns = [
    url('view/', views.viewtopic),
    url('topic/', views.viewtopics),
    url('vstd/',views.std)
]