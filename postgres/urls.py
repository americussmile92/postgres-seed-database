from django.urls import path
from . import views


app_name = 'postgres'

urlpatterns = [
    path('', views.post_list, name='post data'),
]