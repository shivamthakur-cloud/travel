from django.shortcuts import render, HttpResponse, redirect
from backend_app.models import UserRole, RoleDetails
from backend_app.forms import RoleDetailsForm
from django.contrib.auth.hashers import make_password
from misc_files.gen_func import token_generate
from misc_files.emailSending import verify_link_mail


def admin_register(request):
    if request.method == "POST":
        data = UserRole.objects.get(role_name="admin")
        role_form = RoleDetailsForm(request.POST)
        if role_form.is_valid():
            form = role_form.save(commit=False)
            form.role_id_id = data.role_id
            form.name = request.POST['name']
            form.mobile = request.POST['mobile']
            form.email = request.POST['email']
            form.password = make_password(request.POST['password'])
            form.gender = request.POST['gender']
            token = make_password(token_generate())
            link = '127.0.0.1:8000/verify/?token={}'.format(token)
            form.verify_link = token
            form.save()
            try:
                verify_link_mail(request.POST['email'], link, request.POST['name'])
            except:
                return HttpResponse('<h1>Mail Not Sent</h1>')
            return HttpResponse('<h1>Data Saved/Sent Successfully</h1>')
        else:
            return HttpResponse("form not valid")
    return render(request, 'admin_register.html')


def verify_link_redirect(request):
    get_url = request.GET['token']
    try:
        data = RoleDetails.objects.get(verify_link=get_url)
        update = RoleDetails(email=data.email, verify_link="", is_active=1)
        update.save(update_fields=['verify_link', 'is_active'])
        return redirect("/login_page/")
    except:
        return HttpResponse("invalid url")
