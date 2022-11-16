from django.conf.urls import url
from studentreg import views

urlpatterns = [
     url('post/',views.studentreg),
     url('view/',views.view_student),
     url('update/(?P<idd>\w+)',views.updatestudent,name="ups"),
     url('delete/(?P<idd>\w+)',views.deletestudent,name="delete"),
     url('status/(?P<idd>\w+)',views.status,name="approve"),
     url('suspend/(?P<idd>\w+)',views.suspend,name="suspend")
]