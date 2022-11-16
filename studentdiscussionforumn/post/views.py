from django.shortcuts import render
from studentreg.models import Studentreg
from topic.models import Topic
def viewtopic(request):
    obj=Topic.objects.all()
    context={
        'x':obj
    }
    return render(request, 'post/topic.html', context)

def viewtopics(request):
    obj=Topic.objects.all()
    context={
        'x':obj
    }
    return render(request, 'post/topicsfac.html', context)




def std(request):
    ss=request.session["uid"]
    obk=Studentreg.objects.get(sid=ss)
    obj=Topic.objects.filter(semester=obk.semester)
    context={
        'kk':obk,
        'x':obj
    }
    return render(request,'post/TOPICSTUDENT.html',context)
