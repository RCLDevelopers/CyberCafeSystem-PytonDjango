# Generated by Django 4.2.3 on 2023-08-02 06:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('authentication', '0002_addcomputer'),
    ]

    operations = [
        migrations.CreateModel(
            name='AddCyberUser',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
                ('address', models.CharField(max_length=200)),
                ('mobilenumber', models.IntegerField(max_length=10)),
                ('email', models.EmailField(max_length=200)),
                ('computeruse', models.CharField(max_length=200)),
                ('idproof', models.CharField(max_length=200)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateField(auto_now=True)),
            ],
        ),
    ]
