from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

app_name = "portfolio_app"

urlpatterns = [
    path('', views.index, name='index'),
    path('worksTemplate/<int:pk>/', views.worksTemplate, name = 'worksTemplate'),
]

urlpatterns += static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)