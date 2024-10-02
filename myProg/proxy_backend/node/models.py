'''
Author: Leo
Date: 2023-11-24 16:50:33
LastEditTime: 2023-12-18 17:17:40
FilePath: \myProg\proxy_backend\node\models.py
Description: Leo的一些没用的代码
'''
'''
Author: Leo
Date: 2023-11-24 16:50:33
LastEditTime: 2023-12-18 15:51:04
FilePath: \myProg\proxy_backend\node\models.py
Description: Leo的一些没用的代码
'''
from django.db import models

# Create your models here.

class Node(models.Model):
    # 爬取记录必要字段
    protocol = models.CharField(max_length=255)
    ip = models.CharField(max_length=255)
    port = models.IntegerField()
    
    class Meta:
        managed = True
        db_table = 'node'

    def to_dict(self):
        """
        返回一个dict，包含自身的全部属性
        """
        return {
            'protocol': self.protocol,
            'ip': self.ip,
            'port': self.port
        }