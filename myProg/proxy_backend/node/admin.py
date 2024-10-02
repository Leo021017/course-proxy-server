'''
Author: Leo
Date: 2023-11-24 16:50:33
LastEditTime: 2023-11-24 16:58:46
FilePath: \myProg\proxy_backend\node\admin.py
Description: Leo的一些没用的代码
'''
from django.contrib import admin
from .models import Node

# Register your models here.
admin.site.register(Node)