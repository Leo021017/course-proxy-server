'''
Author: Leo
Date: 2023-11-15 10:10:38
LastEditTime: 2023-11-15 21:30:15
FilePath: \proxy_backend\proxy_backend\celery.py
Description: Leo的一些没用的代码
'''
import os
import django
from celery import Celery
from django.conf import settings

# 本文件是和settings.py文件同目录，一定不能建立在项目根目录，不然会引起 celery 这个模块名的命名冲突
# 设置系统环境变量，安装django，必须设置，否则在启动celery时会报错
# celery_study 是当前项目名
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'proxy_backend.settings')
django.setup()
 
celery_app = Celery('proxy_backend')
celery_app.config_from_object('django.conf:settings')
celery_app.autodiscover_tasks(lambda: settings.INSTALLED_APPS)
print('=================Create celery_app successfully!=================')

# celery  -A proxy_backend worker  -l debug -P eventlet