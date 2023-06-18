from django.shortcuts import render

from postgres.models import Post


# Create your views here.
def post_list(request):
    data = Post.objects.all()
    return render(request, 'output.html' ,{'posts': data})
