from django.db import models

# Create your models here.
class Topic(models.Model):
    tid = models.AutoField(primary_key=True)
    topic = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'topic'
