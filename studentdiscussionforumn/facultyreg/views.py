from django.shortcuts import render
from facultyreg.models import Facultyreg
from login.models import Login
# Create your views here.
def facultyreg(request):
    if request.method=="POST":
        obj=Facultyreg()
        obj.name=request.POST.get('name')
        obj.mobileno=request.POST.get('mobno')
        obj.address=request.POST.get('adr')
        obj.mail=request.POST.get('mail')
        obj.gender=request.POST.get('gndr')
        obj.department="MCA"
        obj.username=request.POST.get('username')
        obj.password=request.POST.get('Password')
        obj.save()

        ob=Login()
        ob.username=obj.username
        ob.password=obj.password
        ob.type="faculty"
        ob.u_id=obj.fid
        ob.save()

    return render(request,'facultyreg/Facultyreg.html')

def view_fac(request):
    obj=Facultyreg.objects.all()
    context={
        'x':obj
    }
    return render(request, 'facultyreg/view_fac.html', context)


def updatefaculty(request,idd):
    ob = Facultyreg.objects.get(fid=idd)
    context = {
        'objval': ob
    }
    if request.method=="POST":
        ob=Facultyreg()
        ob = Facultyreg.objects.get(fid=idd)
        ob.name=request.POST.get('name')
        ob.mobileno=request.POST.get('mobno')
        ob.address=request.POST.get('adr')
        ob.mail=request.POST.get('mail')
        ob.gender=request.POST.get('gndr')
        ob.department="MCA"
        ob.username=request.POST.get('username')
        ob.password=request.POST.get('Password')
        ob.save()

        obj = Login.objects.get(u_id=idd)
        obj.username = ob.username
        obj.password = ob.password
        obj.type = "faculty"
        obj.status = "approved"
        obj.u_id = ob.fid
        obj.save()

        return view_fac(request)

    return render(request,'facultyreg/updatefaculty.html',context)

def dele(request,idd):
    obj=Facultyreg.objects.get(fid=idd)
    obj.delete()
    ob = Login.objects.get(u_id=idd, type='faculty')
    ob.delete()
    return view_fac(request)

def status(request,idd):
    obj=Facultyreg.objects.get(fid=idd)
    obj.status='approved'
    obj.save()

    ob = Login.objects.get(u_id=idd,type='faculty')
    ob.status=obj.status
    ob.save()


    return view_fac(request)
def suspend(request,idd):
    obj=Facultyreg.objects.get(fid=idd)
    obj.status='suspended'
    obj.save()
    ob = Login.objects.get(u_id=idd, type='faculty')
    ob.status = obj.status
    ob.save()

    return view_fac(request)