# Generated by Django 4.2.3 on 2023-08-03 06:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('authentication', '0007_alter_addcyberuser_computeruse_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='addcyberuser',
            name='fees',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='addcyberuser',
            name='remark',
            field=models.CharField(default=0, max_length=200),
        ),
        migrations.AddField(
            model_name='addcyberuser',
            name='status',
            field=models.CharField(default=0, max_length=200),
        ),
    ]
