from . import views
from django.urls import path

urlpatterns = [
    path('get_nodes', views.get_nodes, name = 'get_nodes')
]