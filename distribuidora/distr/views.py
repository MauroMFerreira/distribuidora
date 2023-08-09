from django.contrib.auth.views import LoginView, LogoutView, TemplateView
from django.shortcuts import redirect

class CustomLoginView(LoginView):
    template_name = 'distr/login.html'  # Use the login template

    def get_success_url(self):
        return '/distr/home/'  # Replace with your actual URL path for the home page

class CustomLogoutView(LogoutView):
    def dispatch(self, request, *args, **kwargs):
        response = super().dispatch(request, *args, **kwargs)
        return redirect('distr:login')  # Redirect to the login page after logout

class HomeView(TemplateView):
    template_name = 'distr/home.html'  # Use the login template
