from django.shortcuts import render
from feedback.models import Feedback
# Create your views here.
def feedback(request):
    if request.method == "POST":
        obj = Feedback()

        obj.sid=request.POST.get('sid')
        obj.feedback = request.POST.get('feedback')
        obj.save()
    return render(request,'feedback/Postfeedback.html')
def view_feedback(request):
    obj=Feedback.objects.all()
    context = {
        'x': obj
    }
    return render(request, 'feedback/view_feedback.html',context)