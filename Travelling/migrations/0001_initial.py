# Generated by Django 3.1.3 on 2020-12-30 07:01

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='ImPfle',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('im', models.ImageField(default='avatar.jpg', null=True, upload_to='Profile/')),
                ('rollno', models.CharField(max_length=10)),
                ('collegename', models.CharField(choices=[('AANM', 'A.A.N.M & V.V.R.S.R POLYTECHNIC - GVL'), ('SVGP', 'S.V Gvot Polytechnic'), ('AANMR', 'A.A.N.M & V.V.R.S.R POLYTECHNIC - RJHYD')], max_length=10)),
                ('date_of_birth', models.DateField(null=True)),
                ('mb', models.CharField(max_length=10)),
                ('gender', models.CharField(choices=[('M', 'Male'), ('F', 'Female')], max_length=10)),
                ('u', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]