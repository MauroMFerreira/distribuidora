After create a project_name project in Pycharm, open the builtin terminal (to start inside a venv) and type:

pip install --upgrade pip
pip install django
django-admin startproject project_name
cd project_name

------------------------------------------------------------------------------------------------------------------------
* To automate runserver/makemigrations/migrate/shell:
Run/Edit Configurations/+ [Python]  Name:<runserver/makemigrations/migrate/shell>
                                    Select path: <path to anage.py>
                                    Parameters:<runserver/makemigrations/migrate/shell>

------------------------------------------------------------------------------------------------------------------------
To install and configure mysql/mariadb:

    in the terminal:
    sudo apt-get install python3-dev default-libmysqlclient-dev pkg-config build-essential
    pip install mysqlclient

    in project_name/settings, change DATABASES to:
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.mysql',
            'OPTIONS': {
                'read_default_file': '/etc/mysql/my.cnf',
                'init_command': 'SET default_storage_engine=INNODB,sql_mode='STRICT_TRANS_TABLES'",
                'isolation_level': 'read committed',
            },
        }
    }

    in /etc/mysql/my.cnf, change or append:
    [client]
    database=database_name
    user=user_name
    password=user_password
    default-character-set=utf8

    in mysql terminal, create the database database_name:
    CREATE DATABASE db_name CHARACTER SET utf8 COLLATE utf8_general_ci;


    * be SURE to CREATE the database_name !

    finally, create the superuser:
    python manage.py createsuperuser

    and migrate the models:
    python manager.py migrate

------------------------------------------------------------------------------------------------------------------------
to migrate an existing database:

    generate the models:
    python manage.py inspectdb > models.py
    IMPORTANT - READ the header and edit the models.py to make any necessary
                correction BEFORE the next steps !

    generate the initial migrations:
    python manage.py makemigrations

    update the migration setup:
    python manage.py migrate --fake-initial

------------------------------------------------------------------------------------------------------------------------
* To create the admin superuser:

python manage.py createsuperuser

------------------------------------------------------------------------------------------------------------------------
* To create apps inside the project:

python manage.py startapp app_name


------------------------------------------------------------------------------------------------------------------------
* To declare an app inside the project:

    in project_name/urls.py:
    from django.contrib import admin
    from django.urls import include, path
    urlpatterns = [
        path('', include('app_name.urls')),
        path('admin/', admin.site.urls),
    ]

    inside app_name/urls.py:
    from django.urls import path
    from . import views
    urlpatterns = [
        path('', views.main, name='main'),
        path('members/', views.members, name='members'),
        path('members/details/<int:id>', views.details, name='details'),
        path('testing/', views.testing, name='testing'),
    ]

    inside ap_pname/views.py:
    from django.http import HttpResponse
    from django.template import loader
    from .models import Member
    def members(request):
        members = Member.objects.all().values()
        template = loader.get_template('members/list.html')
        context = {
            'members': members
        }
        return HttpResponse(template.render(context, request))
    def details(request, id):
        member = Member.objects.get(id=id)
        template = loader.get_template('members/details.html')
        context = {
            'member': member
        }
        return HttpResponse(template.render(context, request))
    def main(request):
        template = loader.get_template('main.html')
        return HttpResponse(template.render())
    def testing(request):
      template = loader.get_template('template.html')
      context = {
        'fruits': ['Apple', 'Banana', 'Cherry'],
      }
      return HttpResponse(template.render(context, request))

    inside app_name/models.py:
    from django.db import models
    class Member(models.Model):
        firstname = models.CharField(max_length=255)
        lastname = models.CharField(max_length=255)
        phone = models.IntegerField(null=True)
        joined_date = models.DateField(null=True)
        def __str__(self):
            return f"{self.firstname} {self.lastname}"


------------------------------------------------------------------------------------------------------------------------
To add a model to the admin interface:
    inside app_name/admin.py:
    from django.contrib import admin
    from .models import <ModelName>
    admin.site.register(<ModelName>)

------------------------------------------------------------------------------------------------------------------------
To add a model <ModelName> to the admin interface and declare list fields:
    inside app_name/admin.py:
    from django.contrib import admin
    from .models import <ModelName>
    class <ModelName>Admin(admin.<ModelName>Admin):
        list_display = ('firstname', 'lastname', 'joined_date',)
    admin.site.register(<ModelName>, <ModelName>Admin)

------------------------------------------------------------------------------------------------------------------------
To use a static folder (folder with static files, like pics and css) in production:
    pip install whitenoise

    in project_name/settings.py, change:
    DEBUG = False
    ALLOWED_HOSTS = ['*']

    then append in MIDDLEWARE[]:
        'whitenoise.middleware.WhiteNoiseMiddleware',

    then before STATIC_URL = 'static/', insert:
    STATIC_ROOT = BASE_DIR / 'productionfiles'
    STATICFILES_DIRS = [
        BASE_DIR / 'staticfiles'
    ]

    finally run:
    py manage.py collectstatic

------------------------------------------------------------------------------------------------------------------------
Template tags references:
https://www.w3schools.com/django/django_template_tags.php

Field lookup reference:
https://www.w3schools.com/django/django_queryset_filter.php

Django Debug Toolbar:
https://django-debug-toolbar.readthedocs.io/en/latest/
------------------------------------------------------------------------------------------------------------------------
