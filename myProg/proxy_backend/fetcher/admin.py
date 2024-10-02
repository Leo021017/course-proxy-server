'''
Author: Leo
Date: 2023-11-15 00:14:36
LastEditTime: 2023-11-17 18:06:03
FilePath: \myProg\proxy_backend\fetcher\admin.py
Description: Leo的一些没用的代码
'''
from django.contrib import admin
from .models import Proxy, Fetcher

# Register your models here.
admin.site.register(Proxy)
admin.site.register(Fetcher)
