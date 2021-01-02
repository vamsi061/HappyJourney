from django.urls import path
from django.contrib.auth import views as v
from Travelling import views

urlpatterns = [
	
	path('',views.home,name="hm"),
    path('register/',views.register,name="rg"),
    path('login/',v.LoginView.as_view(template_name="ta/login.html"),name="log"),
    path('profile/',views.pfle,name="pf"),
    path('update/',views.updf,name="upfe"),
    path('dashbord/',views.dashbord,name="dsh"),
    path('bus_search/',views.bus_search),
    path('bus/',views.bus,name="bus"),
    path('flights/',views.flights,name="ft"),
    path('logout/',v.LogoutView.as_view(template_name="ta/logout.html"),name="lgg"),

]