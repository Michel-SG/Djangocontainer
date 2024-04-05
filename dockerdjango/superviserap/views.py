from django.shortcuts import render
from django.http import HttpResponse
import datetime
from .models import Author

def index (request):
    author = Author.objects.all()
    now = datetime.datetime.now()
    html = "<html><body>It is now %s.</body></html>" % now
    # return HttpResponse(html)
    return render(request, 'users/index.html',{"author": author})