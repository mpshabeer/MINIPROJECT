from django.shortcuts import render
from studentreg.models import Studentreg
from login.models import Login
# Create your views here.
def studentreg(request):
    if request.method == "POST":
        obj = Studentreg()
        obj.name = request.POST.get('name')
        obj.regno=request.POST.get('reg')
        obj.mobileno = request.POST.get('mobno')
        obj.address = request.POST.get('adr')
        obj.mail = request.POST.get('mail')
        obj.gender = request.POST.get('gndr')
        obj.department = "MCA"
        obj.semester = request.POST.get('sem')
        obj.username = request.POST.get('username')
        obj.password = request.POST.get('Password')
        obj.save()

        ob=Login()
        ob.username=obj.username
        ob.password=obj.password
        ob.type="student"
        ob.u_id=obj.sid
        ob.save()


    return render(request,'studentreg/StudentReg.html')


def view_student(request):
    obj=Studentreg.objects.all()
    context={
        'x':obj
    }
    return render(request, 'studentreg/students_view.html', context)
def updatestudent(request,idd):
        ob = Studentreg.objects.get(sid=idd)
        context={
        'objval':ob
    }
        if request.method == "POST":
            ob = Studentreg.objects.get(sid=idd)
            ob.regno = request.POST.get('reg')
            ob.name = request.POST.get('name')
            ob.regno=request.POST.get('reg')
            ob.mobileno = request.POST.get('mobno')
            ob.address = request.POST.get('adr')
            ob.mail = request.POST.get('mail')
            ob.gender = request.POST.get('gndr')
            ob.department = "MCA"
            ob.semester=request.POST.get('sem')
            ob.username = request.POST.get('username')
            ob.password = request.POST.get('Password')
            ob.save()

            obj = Login.objects.get(u_id=idd)
            obj.username = ob.username
            obj.password = ob.password
            obj.type = "student"
            obj.u_id = ob.sid
            obj.save()
            return view_student(request)
        return render(request, 'studentreg/Updatestudent.html',context)
def deletestudent(request,idd):
    obj=Studentreg.objects.get(sid=idd)
    obj.delete()
    ob = Login.objects.get(u_id=idd)
    ob.delete()
    return view_student(request)

def status(request,idd):
    obj=Studentreg.objects.get(sid=idd)
    obj.status='approved'
    obj.save()

    ob=Login.objects.get(u_id=idd)
    ob.status=obj.status
    ob.save()

    return view_student(request)
def suspend(request,idd):
    obj=Studentreg.objects.get(sid=idd)
    obj.status='suspended'
    obj.save()

    ob = Login.objects.get(u_id=idd)
    ob.status = obj.status
    ob.save()
    return view_student(request)