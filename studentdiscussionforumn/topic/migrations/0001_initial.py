# Generated by Django 3.1.6 on 2022-11-05 07:47

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Topic',
            fields=[
                ('tid', models.AutoField(primary_key=True, serialize=False)),
                ('topic', models.CharField(max_length=100)),
                ('semester', models.IntegerField()),
                ('description', models.CharField(max_length=100)),
                ('image', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'topic',
                'managed': False,
            },
        ),
    ]
