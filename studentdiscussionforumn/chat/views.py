from django.core.files.storage import FileSystemStorage
from django.shortcuts import render
import datetime
from chat.models import Chat
from chat.models import Notes
from topic.models import Topic
# # Create your views here.
from login.models import Login
#
#
# def user(request):
#     ob= Facultyreg.objects.all()
#     context={
#         'u':ob
#     }
#     return render(request,'chat/view user.html',context)
#
def userchat(request,idd):
    obb=Topic.objects.get(tid=idd)
    obj =Chat.objects.filter(tid=idd)
    context = {
        'uu': obj,
        'kk':obb
    }
    # ss=request.session["user_id"]
    if request.method == 'POST':
        obk = Chat()
        obk.chat = request.POST.get('mssg')
        obk.topic="a"
        obk.tid=idd
        obk.sender="facuality"
        obk.receiver="student"
        obk.time=datetime.datetime.now()
        obk.save()
    return render(request, 'chat/chatuser1.html',context)




def stdchat(request,idd):
    obb=Topic.objects.get(tid=idd)
    obj =Chat.objects.filter(tid=idd)
    context = {
        'uu': obj,
        'kk':obb
    }
    # ss=request.session["user_id"]
    if request.method == 'POST':
        obk = Chat()
        obk.chat = request.POST.get('mssg')
        obk.topic="a"
        obk.tid=idd
        obk.sender="student"
        obk.receiver="facuality"
        obk.time=datetime.datetime.now()
        obk.save()
    return render(request, 'chat/chatuser2.html',context)


def postfile(request,idd):
    if request.method == 'POST':
        obj=Notes()
        obj.description=request.POST.get('desc')
        myfile =request.FILES["file"]
        fs = FileSystemStorage()
        filename=fs.save(myfile.name,myfile)
        obj.file=myfile.name
        obj.tid=idd
        obj.date=datetime.datetime.today()
        obj.time=datetime.datetime.now()
        obj.save()
    return render(request,'chat/postfile.html')
def viewfile(request,idd):
    ob=Notes.objects.filter(tid=idd)
    context={
        'ok':ob
    }
    return render(request,'chat/viewfile.html',context)