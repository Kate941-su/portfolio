from django.conf import settings
from django.db import models
from django.utils import timezone



class Post(models.Model):
    def getPrimarykey(self):
        return self.objects.pk
    author = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    title = models.CharField(max_length=200)
    image1 = models.ImageField(upload_to='media/', null=True)
    image2 = models.ImageField(upload_to='media/', null=True)
    image3 = models.ImageField(upload_to='media/', null=True)
    image4 = models.ImageField(upload_to='media/', null=True)
    urlField = models.CharField(max_length=200,default='')
    aboutField =  models.TextField(default='')
    skillField = models.TextField(default='')
    created_date = models.DateTimeField(default=timezone.now)
    published_date = models.DateTimeField(blank=True, null=True)
    def publish(self):
        self.published_date = timezone.now()
        self.save()
    def __str__(self):
        return self.title