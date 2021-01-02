# Generated by Django 3.1.3 on 2020-12-31 13:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Travelling', '0002_auto_20201230_1439'),
    ]

    operations = [
        migrations.CreateModel(
            name='city',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('places', models.CharField(max_length=30)),
                ('DOB', models.DateField()),
            ],
            options={
                'db_table': 'sourc',
            },
        ),
        migrations.RemoveField(
            model_name='impfle',
            name='collegename',
        ),
        migrations.RemoveField(
            model_name='impfle',
            name='rollno',
        ),
        migrations.AddField(
            model_name='impfle',
            name='Address',
            field=models.CharField(choices=[('Amaravathi', 'Amaravathi'), ('Bantumilli', 'Bantumilli'), ('Bhimavaram', 'Bhimavaram'), ('Eluru', 'Eluru'), ('Gudivada', 'Gudivada'), ('Gudlavalleru', 'Gudlavalleru'), ('Machilipatnam', 'Machilipatnam'), ('Kakinada', 'Kakinada'), ('Kurnool', 'Kurnool'), ('Kadapa', 'Kadapa'), ('Rajahumandry', 'Rajahumandry'), ('Sriharikota', 'Sriharikota'), ('Vijayawada', 'Vijayawada'), ('Vizag', 'Vizag')], max_length=15, null=True),
        ),
        migrations.AlterField(
            model_name='impfle',
            name='gender',
            field=models.CharField(choices=[('Male', 'Male'), ('Female', 'Female')], max_length=10),
        ),
    ]
