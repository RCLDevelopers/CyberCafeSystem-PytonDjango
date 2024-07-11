from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class CustomUser(AbstractUser):
    profile_pic = models.ImageField(upload_to='media/profile_pic')


class AddComputer(models.Model):
    compname = models.CharField(max_length=200)
    comploc = models.CharField(max_length=200)
    idadd = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)

    def __str__(self):
        return  self.compname

class AddCyberUser(models.Model):
    name = models.CharField(max_length=200)
    address = models.CharField(max_length=200)
    mobilenumber = models.IntegerField()
    email = models.EmailField(max_length=200)
    computeruse_id = models.ForeignKey(AddComputer,on_delete=models.DO_NOTHING)
    idproof = models.CharField(max_length=200)
    entryid = models.IntegerField(default=0)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    remark = models.CharField(default=0,max_length=200)
    status = models.CharField(default=0,max_length=200)
    fees = models.IntegerField(default=0)

    def __str__(self):
        return  self.name