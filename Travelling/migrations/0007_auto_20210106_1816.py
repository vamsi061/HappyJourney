# Generated by Django 3.1.3 on 2021-01-06 12:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Travelling', '0006_auto_20210106_1314'),
    ]

    operations = [
        migrations.RenameField(
            model_name='passengerdata',
            old_name='tcost',
            new_name='charge',
        ),
        migrations.RemoveField(
            model_name='passengerdata',
            name='nopass',
        ),
        migrations.AddField(
            model_name='passengerdata',
            name='bustype',
            field=models.CharField(max_length=30, null=True),
        ),
        migrations.AddField(
            model_name='passengerdata',
            name='pname',
            field=models.CharField(max_length=30, null=True),
        ),
    ]
