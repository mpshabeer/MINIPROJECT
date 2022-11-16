from django.db import models

class Topic(models.Model):
    tid = models.AutoField(primary_key=True)
    topic = models.CharField(max_length=100)
    semester = models.IntegerField()
    description = models.CharField(max_length=100)
    image = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'topic'

