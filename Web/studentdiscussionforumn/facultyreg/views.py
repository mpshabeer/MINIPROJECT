from django.shortcuts import render
from facultyreg.models import Facultyreg
# Create your views here.
def facultyreg(request):
    if request.method=="POST":
        obj=Facultyreg()
        obj.name=request.POST.get('name')
        obj.mobileno=request.POST.get('mobno')
        obj.address=request.POST.get('adr')
        obj.mail=request.POST.get('mail')
        obj.gender=request.POST.get('gndr')
        obj.department=request.POST.get('dept')
        obj.username=request.POST.get('username')
        obj.password=request.POST.get('Password')
        obj.save()

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
        ob.name=request.POST.get('name')
        ob.mobileno=request.POST.get('mobno')
        ob.address=request.POST.get('adr')
        ob.mail=request.POST.get('mail')
        ob.gender=request.POST.get('gndr')
        ob.department=request.POST.get('dept')
        ob.username=request.POST.get('username')
        ob.password=request.POST.get('Password')
        ob.save()
        return view_fac(request)

    return render(request,'facultyreg/updatefaculty.html',context)

def dele(request,idd):
    obj=Facultyreg.objects.get(fid=idd)
    obj.delete()
    return view_fac(request)