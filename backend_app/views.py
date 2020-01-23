from django.shortcuts import render
from backend_app.models import UserRole


def index_page(request):
    return render(request, "index.html")


def backend_index(request):
    return render(request, "backend_index.html")


def login_page(request):
    return render(request, "backend_login.html")


def registration_page(request):
    return render(request, 'creating_new_account.html')


def show_page(request):
    user_role_data = UserRole.objects.all()
    return render(request, 'show.html', {'role_data': user_role_data})
