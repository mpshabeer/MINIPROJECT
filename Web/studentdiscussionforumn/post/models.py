from django.db import models

# Create your models here.
class Post(models.Model):
    pid = models.AutoField(primary_key=True)
    tid = models.IntegerField()
    uid = models.IntegerField()
    post = models.CharField(max_length=200)

    class Meta:
        managed = False
        db_table = 'post'
