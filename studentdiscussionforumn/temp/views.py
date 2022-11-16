from django.shortcuts import render

def admin(request):
    return render(request, 'temp/adminhome.html')

def facultyhome(request):
    return render(request, 'temp/Facultyhome.html')
def home(request):
    return render(request, 'temp/home.html')
def student(request):
    return render(request, 'temp/student home.html')