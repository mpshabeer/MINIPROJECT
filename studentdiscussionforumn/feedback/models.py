from django.db import models

# Create your models here.
class Feedback(models.Model):
    feid = models.AutoField(primary_key=True)
    feedback = models.CharField(max_length=1000)
    sid = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'feedback'
