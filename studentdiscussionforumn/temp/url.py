from django.conf.urls import url
from temp import views
urlpatterns=[
    url('home/', views.home),
    url('faculty/', views.facultyhome),
    url('admin/', views.admin),
    url('student/', views.student)
]