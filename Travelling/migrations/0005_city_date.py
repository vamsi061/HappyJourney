# Generated by Django 3.1.3 on 2020-12-31 15:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Travelling', '0004_remove_city_dob'),
    ]

    operations = [
        migrations.AddField(
            model_name='city',
            name='date',
            field=models.DateField(null=True),
        ),
    ]