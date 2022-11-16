from django.http import HttpResponseRedirect
from django.shortcuts import render
from login.models import Login
# Create your views here.
def login(request):
    if request.method=="POST":
        name=request.POST.get("username")
        password=request.POST.get("password")
        obj=Login.objects.filter(username=name,password=password,status="approved")
        print(len(obj))
        tp=""
        for ob in obj:
            tp=ob.type
            uid=ob.u_id
            if tp=="admin" :
                request.session["uid"]=uid
                return HttpResponseRedirect('/temp/admin/')
            elif tp=="faculty":
                request.session["uid"]=uid
                return HttpResponseRedirect('/temp/faculty/')
            elif tp=="student" :
                request.session["uid"]=uid
                return HttpResponseRedirect('/temp/student/')
        else:
            objilist="username or password incorrect .... please try again .......!"
            context={
                'msg' :objilist
            }

        return render(request,'login/login.html',context)
    return render(request, 'login/login.html')

