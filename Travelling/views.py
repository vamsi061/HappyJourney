from django.shortcuts import render,redirect
from django.http import HttpResponse
from Travelling.forms import UsReg,Updf,Imp,usdate
from HappyJourney import settings
from django.core.mail import send_mail
from django.contrib import messages
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from Travelling.models import ImPfle,city

# Create your views here.

def home(request):
	return render(request,'ta/home.html')

def flights(request):
	return render(request,'ta/flights.html')

def register(request):
	if request.method == "POST":
		t = UsReg(request.POST)
		if t.is_valid():
			user=t.save()
			messages.success(request,"User registered Successfully")
			#return redirect('/lg')
			adml = user.email
			pas = user.password
			msg = "Hi {} {}, your registeration is completed successfully your username is {} and password is {}. Don't share your passwords to any annoymous persons".format(user.first_name,user.last_name,user.username,user.password)
			sub = "Mail from Indian Travels"
			sd = settings.EMAIL_HOST_USER
			to = send_mail(sub,msg,sd,[adml])
			if to == 1:
				return redirect('/login')
				messages.primary("A mail sent to your account don't share your password to anyone")
			messages.warning(request,'mail not sent')
		messages.error(request,'Registation failed')
	t = UsReg()
	return render(request,'ta/register.html',{'y':t})

@login_required
def pfle(request):
	return render(request,'ta/profile.html')

@login_required
def updf(request):
	if request.method == "POST":
		p = Updf(request.POST,instance=request.user)
		k = Imp(request.POST,request.FILES,instance=request.user.impfle)
		if p.is_valid() and k.is_valid():
			p.save()
			k.save()
			messages.info(request,'{} profile updated successfully'.format(request.user.username))
			return redirect('/profile')
	p = Updf(instance=request.user)
	y =Imp(instance=request.user.impfle)
	return render(request,'ta/upfle.html',{'h':p,'u':y})

@login_required
def bus_search(request):
	return render(request,'ta/bus_search.html')

@login_required
def bus(request):
	results = city.objects.all()
	if request.method == "POST":
		c = usdate(request.POST,instance=request.user)
		if c.is_valid():
			so = request.POST.get('sou')
			de = request.POST.get('des')
			busobj = city.objects.raw('select * from sourc where sou="'+so+'" and des="'+de+'"')
			c.save()
			return render(request,'ta/bus_search.html',{'city':busobj})
	c = usdate(instance=request.user)
	return render(request,'ta/bus.html',{'places':results,'e':c})

@login_required


def dashbord(request):
	return render(request,'ta/dashboard.html')