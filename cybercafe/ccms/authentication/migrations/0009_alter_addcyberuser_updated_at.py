# Generated by Django 4.2.3 on 2023-08-03 12:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('authentication', '0008_addcyberuser_fees_addcyberuser_remark_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='addcyberuser',
            name='updated_at',
            field=models.DateTimeField(auto_now=True),
        ),
    ]
