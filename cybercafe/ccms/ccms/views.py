from django.shortcuts import render,redirect,HttpResponse
from authentication.EmailBackEnd import EmailBackEnd
from django.contrib.auth import  logout,login
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from authentication.models import CustomUser, AddComputer,AddCyberUser
from django.contrib.auth import get_user_model
import random


User = get_user_model()
def BASE(request):
    return render(request,'base.html')


def LOGIN(request):
    return render(request,'login.html')

def doLogin(request):
    if request.method == 'POST':
        user = EmailBackEnd.authenticate(request,
                                         username=request.POST.get('email'),
                                         password=request.POST.get('password')
                                         )
        if user!=None:
            login(request,user)
            return redirect('index')
            
        else:
                messages.error(request,'Email or Password is not valid')
                return redirect('login')
    else:
            messages.error(request,'Email or Password is not valid')
            return redirect('login')


def doLogout(request):
    logout(request)
    return redirect('login')

@login_required(login_url='/')
def INDEX(request):
    computer_count = AddComputer.objects.all().count()
    user_count = AddCyberUser.objects.filter().count()
    
   
    context ={
        'computer_count':computer_count,
        'user_count':user_count,
        
    }
    return render(request,'index.html',context)


login_required(login_url='/')
def PROFILE(request):
    user = CustomUser.objects.get(id = request.user.id)
    context = {
        "user":user,
    }
    return render(request,'profile.html',context)


@login_required(login_url = '/')
def PROFILE_UPDATE(request):
    if request.method == "POST":
        profile_pic = request.FILES.get('profile_pic')
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        email = request.POST.get('email')
        username = request.POST.get('username')
        

        try:
            customuser = CustomUser.objects.get(id = request.user.id)
            customuser.first_name = first_name
            customuser.last_name = last_name
            

            
            customuser.save()
            messages.success(request,"Your profile has been updated successfully")
            return redirect('profile')

        except:
            messages.error(request,"Your profile updation has been failed")
    return render(request, 'profile.html')


def CHANGE_PASSWORD(request):
     context ={}
     ch = User.objects.filter(id = request.user.id)
     
     if len(ch)>0:
            data = User.objects.get(id = request.user.id)
            context["data"]:data            
     if request.method == "POST":        
        current = request.POST["cpwd"]
        new_pas = request.POST['npwd']
        user = User.objects.get(id = request.user.id)
        un = user.username
        check = user.check_password(current)
        if check == True:
          user.set_password(new_pas)
          user.save()
          messages.success(request,'Password Change  Succeesfully!!!')
          user = User.objects.get(username=un)
          login(request,user)
        else:
          messages.success(request,'Current Password wrong!!!')
          return redirect("change_password")
     return render(request,'change-password.html')



@login_required(login_url = '/')
def Add_Computer(request):
     if request.method == "POST":
            compname = request.POST.get('compname')
            comploc = request.POST.get('comploc')
            idadd = request.POST.get('idadd')
            computer = AddComputer(compname = compname,
            comploc = comploc,            
            idadd = idadd)
            computer.save() 
            messages.success(request,"computer details has been saved")
            return redirect('add_computer')
     return render(request, 'add-computer.html')


login_required(login_url='/')
def MANAGE_Computer(request):
    computer = AddComputer.objects.all()
    
    context = {
         'computer':computer,
    }

    return render(request,'manage-computer.html',context)


def DELETE_Computer(request,id):
    computer = AddComputer.objects.get(id=id)
    computer.delete()
    messages.success(request,'Record Delete Succeesfully!!!')
    
    return redirect('manage_computer')


login_required(login_url='/')
def UPDATE_Computer(request,id):
    computer = AddComputer.objects.get(id=id)
    
    context = {
         'computer':computer,
    }

    return render(request,'update-computer.html',context)


def UPDATE_COMPUTER_DETAILS(request):
        if request.method == 'POST':
          computer_id = request.POST.get('computer_id')
          compname = request.POST['compname']
          comploc = request.POST['comploc']
          idadd = request.POST['idadd']
          computer =AddComputer.objects.get(id=computer_id) 
          computer.compname = compname
          computer.comploc = comploc
          computer.idadd = idadd
           
          computer.save()   
          messages.success(request,"Your computer detail has been updated successfully")
          return redirect('manage_computer')
    
        return render(request, 'update_computer.html')


@login_required(login_url = '/')
def Add_User(request):
    computer = AddComputer.objects.all()
    if request.method == "POST":
       
            name = request.POST.get('name')
            address = request.POST.get('address')
            mobilenumber = request.POST.get('mobilenumber')
            email = request.POST.get('email')
            idproof = request.POST.get('idproof')
            computeruse_id = request.POST.get('computeruse_id')
            entryid = request.POST.get('entryid')
            
             
            if  AddCyberUser.objects.filter(entryid=entryid).exists():
                
                messages.success(request,"This entry id is already exist")
                return redirect('add_user')
                
            else:
                computer =AddComputer.objects.get(id=computeruse_id)
                userdetail = AddCyberUser(name = name,
            address = address,            
            mobilenumber = mobilenumber,
            email=email,
            idproof=idproof,
            
            entryid=entryid,
            computeruse_id=computer
            )
            
                           
            userdetail.save()
            

            messages.success(request,"User details has been saved")
            return redirect('add_user')

    context = {'computer':computer}
     
    return render(request, 'add-cyber-user.html',context)


login_required(login_url='/')
def MANAGE_User(request):
    cyber_user = AddCyberUser.objects.all()
    
    context = {
         'cyber_user':cyber_user,
    }

    return render(request,'manage-cyber-user.html',context)

def DELETE_User(request,id):
    user = AddCyberUser.objects.get(id=id)
    user.delete()
    messages.success(request,'Record Delete Succeesfully!!!')
    
    return redirect('manage_user')

login_required(login_url='/')
def UPDATE_USER(request,id):
    user = AddCyberUser.objects.filter(id=id)
    
    context = {
         'user':user,
    }

    return render(request,'update-cyber-user.html',context)


def UPDATE_REMARK(request):
    if request.method == 'POST':
        user_id= request.POST.get('user_id')
        remark = request.POST['remark']
        status = request.POST['status']
        fees = request.POST['fees']
        cyberuser= AddCyberUser.objects.get(id=user_id)
        cyberuser.remark = remark
        cyberuser.status = status
        cyberuser.fees = fees
        cyberuser.save()
        messages.success(request,"Remark has been updated successfully")
        return redirect('manage_user')
    
    
    return render(request,'update-visitor.html')

login_required(login_url='/')
def Manage_Old_USER(request):
    cyber_user = AddCyberUser.objects.all()

    context = {
         'cyber_user':cyber_user,
    }

    return render(request,'manage-cyber-old_user.html',context)




login_required(login_url='/')
def VIEW_Old_USER(request,id):
    user = AddCyberUser.objects.filter(id=id)
    
    context = {
         'user':user,
    }

    return render(request,'view-user_details.html',context)



def Search(request):
    if request.method == "GET":
     query = request.GET.get('query','')
     if query:
        cyberuser = AddCyberUser.objects.filter(entryid__icontains = query)
        messages.success(request,   "Search against this " + query)      
        return render(request,'search.html',{'cyberuser':cyberuser})
     else:
            print("No Record Found")
            return render(request,'search.html',{})



def Between_Date_Report(request):
    if request.method == "POST":
        fdate = request.POST.get('fdate')
        todate = request.POST.get('todate')
        searchresult = AddCyberUser.objects.filter(created_at__gte=fdate,created_at__lte=todate)
        messages.success(request,   "Search data from " + fdate + "to" + todate)
        return render(request,'between-date.html',{"data":searchresult})
    else:
        
        print("No Record Found")
        return render(request,'between-date.html',{})


def TotalUser(request):
    cyber_user = AddCyberUser.objects.all()

    context = {
        'cyber_user': cyber_user,
    }

    return render(request, 'total-users.html', context)