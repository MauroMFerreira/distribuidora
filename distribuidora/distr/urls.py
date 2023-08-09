from django.urls import path
from . import views

app_name = 'distr'

urlpatterns = [
    path('', views.CustomLoginView.as_view(), name='login'),
    path('login/', views.CustomLoginView.as_view(), name='login'),
    path('logout/', views.CustomLogoutView.as_view(), name='logout'),
    path('home/', views.HomeView.as_view(), name='home'),
]
