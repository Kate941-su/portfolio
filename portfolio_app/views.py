from django.shortcuts import render, get_object_or_404
from .models import Post
from django.utils import timezone
import datetime

def post_list(request):
    posts = Post.objects.all()#posts変数でクエリセットにアクセスできる
    return render(request, 'portfolio_app/post_list.html', {'posts':posts})#データを詰め込んでtemplateに返す

def index(request):
    works = Post.objects.all()
    latestPublish = works[0].published_date
    for work in works:
        if (latestPublish < work.published_date):
            latestPublish = work.published_date
    context = {
        'works' : works,
        'latestPublish' : str(latestPublish.year) + "/" + str(latestPublish.month)\
                          + "/" + str(latestPublish.day)
    }
    return render(request, 'portfolio_app/index.html', context)

def worksTemplate(request, pk):
    work = get_object_or_404(Post, pk=pk)
    return render(request, 'portfolio_app/worksTemplate.html', {'work' : work})