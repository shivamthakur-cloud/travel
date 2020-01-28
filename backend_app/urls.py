from django.conf.urls import url
from backend_app import views

app_name = "backend_app"

urlpatterns =[
    url(r'^admin_register/$', views.admin_register)
]
