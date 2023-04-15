from django.shortcuts import render, get_object_or_404
from .models import Post
from django.utils import timezone

def post_list(request):
    posts = Post.objects.all()#posts変数でクエリセットにアクセスできる
    return render(request, 'portfolio_app/post_list.html', {'posts':posts})#データを詰め込んでtemplateに返す

def index(request):
    works = Post.objects.all()
    return render(request, 'portfolio_app/index.html', {'works' : works})

def worksTemplate(request, pk):
    works = get_object_or_404(Post, pk=pk)
    return render(request, 'portfolio_app/worksTemplate.html', {'works' : works})