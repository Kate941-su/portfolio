# Generated by Django 4.2 on 2023-04-17 05:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio_app', '0003_alter_post_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='urlFiled',
            field=models.CharField(max_length=200),
        ),
    ]
