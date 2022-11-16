
from django.db import models
# Create your models here.
from django.shortcuts import render


class Studentreg(models.Model):
    sid = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    regno = models.IntegerField()
    mobileno = models.IntegerField()
    address = models.CharField(max_length=200)
    mail = models.CharField(max_length=100)
    gender = models.CharField(max_length=20)
    department = models.CharField(max_length=50)
    semester = models.IntegerField()
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    status = models.CharField(max_length=12)

    class Meta:
        managed = False
        db_table = 'studentreg'
