from django.shortcuts import render


def index_page(request):
    return render(request, "index.html")

def backend_index(request):
    return render(request, "backend_index.html")

def login_page(request):
    return render(request, "login_page.html")