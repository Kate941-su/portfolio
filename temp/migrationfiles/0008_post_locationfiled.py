# Generated by Django 4.2 on 2023-04-25 05:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio_app', '0007_remove_post_dummyfiled'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='locationFiled',
            field=models.URLField(default=''),
        ),
    ]
