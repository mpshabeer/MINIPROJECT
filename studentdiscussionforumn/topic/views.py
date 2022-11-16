from django.shortcuts import render
from topic.models import Topic
from chat.models import Chat

from django.core.files.storage import FileSystemStorage
# Create your views here.
def createtopic(request):
    if request.method == "POST":
        mfile=request.FILES['img']
        fs=FileSystemStorage()
        file=fs.save(mfile.name,mfile)

        obj = Topic()
        obj.topic = request.POST.get('tname')
        obj.semester = request.POST.get('sem')
        obj.description = request.POST.get('des')

        obj.image=mfile
        obj.save()
    return render(request, 'topic/createtopic.html')


def view_topics(request):
    obj=Topic.objects.all()
    context={
        'x':obj
    }
    return render(request, 'topic/managetopic.html',context)

def edit(request,idd):
    ob = Topic.objects.get(tid=idd)
    context = {
        'x': ob
    }
    if request.method == "POST":
        mfile = request.FILES['img']
        fs = FileSystemStorage()
        file = fs.save(mfile.name, mfile)

        obj = Topic.objects.get(tid=idd)
        obj.topic = request.POST.get('tname')
        obj.semester = request.POST.get('sem')
        obj.description = request.POST.get('des')

        obj.image = mfile
        obj.save()
        return view_topics(request)

    return render(request, 'topic/edittopic.html', context)

def dele(request,idd):
    obj=Topic.objects.get(tid=idd).delete()
    return view_topics(request)
