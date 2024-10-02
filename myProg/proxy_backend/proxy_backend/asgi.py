'''
Author: Leo
Date: 2023-11-15 00:13:29
LastEditTime: 2023-11-17 17:38:11
FilePath: \myProg\proxy_backend\proxy_backend\asgi.py
Description: Leo的一些没用的代码
'''
"""
ASGI config for proxy_backend project.

It exposes the ASGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.0/howto/deployment/asgi/
"""

from django.core.asgi import get_asgi_application

import os
from channels.auth import AuthMiddlewareStack
from channels.routing import ProtocolTypeRouter, URLRouter
from django.urls import re_path
from web_ssh.consumers import WebSSHService

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'proxy_backend.settings')

# application = get_asgi_application()
application = ProtocolTypeRouter({
  "websocket": AuthMiddlewareStack(
        URLRouter(
            [re_path(r'webssh/(?P<username>[^/]+)/(?P<password>[^/]+)/(?P<host>[^/]+)', WebSSHService.as_asgi())]
        )
    ),
})
