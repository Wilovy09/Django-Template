from django.shortcuts import render
from django.http import HttpResponse
from django_web_components import component
# Create your views here.

def hello(request):
  return render(request, 'index.html')

# Register components
# More info on https://github.com/Xzya/django-web-components
@component.register("card")
class Card(component.Component):
  template_name = "components/card.html"