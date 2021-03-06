# Generated by Django 3.1.3 on 2021-01-04 13:20

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='city',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('places', models.CharField(max_length=30, null=True)),
                ('da', models.DateTimeField(default=django.utils.timezone.now)),
            ],
            options={
                'db_table': 'source',
            },
        ),
        migrations.CreateModel(
            name='ImPfle',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('im', models.ImageField(default='blank-profile-picture.png', null=True, upload_to='Profile/')),
                ('Address', models.CharField(choices=[('Amaravathi', 'Amaravathi'), ('Bantumilli', 'Bantumilli'), ('Bhimavaram', 'Bhimavaram'), ('Eluru', 'Eluru'), ('Gudivada', 'Gudivada'), ('Gudlavalleru', 'Gudlavalleru'), ('Machilipatnam', 'Machilipatnam'), ('Kakinada', 'Kakinada'), ('Kurnool', 'Kurnool'), ('Kadapa', 'Kadapa'), ('Rajahumandry', 'Rajahumandry'), ('Sriharikota', 'Sriharikota'), ('Vijayawada', 'Vijayawada'), ('Vizag', 'Vizag')], max_length=15, null=True)),
                ('date_of_birth', models.DateField(null=True)),
                ('mb', models.CharField(max_length=10)),
                ('gender', models.CharField(choices=[('Male', 'Male'), ('Female', 'Female')], max_length=10)),
                ('u', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Data',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('source', models.CharField(max_length=30)),
                ('destination', models.CharField(max_length=30)),
                ('busid', models.CharField(max_length=10)),
                ('busim', models.ImageField(default='bus.jpg', null=True, upload_to='Bus_Image/')),
                ('distance', models.CharField(max_length=10, null=True)),
                ('cost', models.CharField(max_length=15, null=True)),
                ('timmings', models.CharField(max_length=30)),
                ('busclass', models.CharField(choices=[('Pallevellugu', 'Pallevellugu'), ('Express', 'Express'), ('Ultra Deluxe', 'Ultra Deluxe')], max_length=15)),
                ('da', models.DateTimeField(default=django.utils.timezone.now)),
                ('d', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
