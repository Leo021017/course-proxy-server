'''
Author: Leo
Date: 2023-11-24 16:50:33
LastEditTime: 2023-12-18 17:23:08
FilePath: \myProg\proxy_backend\node\views.py
Description: Leo的一些没用的代码
'''
from django.shortcuts import render
from .models import Node
from django.http import JsonResponse
import json

# Create your views here.

def get_nodes(request):
    nodes = Node.objects.all()
    num = Node.objects.all().count()
    nodes = [n.to_dict() for n in nodes]
    return JsonResponse(dict(
        success = True,
        nodes = nodes,
        num = num
    ))

