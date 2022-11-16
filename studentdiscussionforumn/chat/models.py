from django.db import models


# Create your models here.

class Chat(models.Model):
    cid = models.AutoField(primary_key=True)
    sender = models.CharField(max_length=20)
    receiver = models.CharField(max_length=20)
    chat = models.CharField(max_length=200)
    topic = models.CharField(max_length=20)
    tid = models.IntegerField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'chat'


class Notes(models.Model):
    file_id = models.AutoField(primary_key=True)
    tid = models.IntegerField()
    description = models.CharField(max_length=200)
    file = models.CharField(max_length=200)
    date = models.DateField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'notes'
