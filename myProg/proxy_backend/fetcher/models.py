'''
Author: Leo
Date: 2023-11-15 00:14:36
LastEditTime: 2023-11-24 16:55:20
FilePath: \myProg\proxy_backend\fetcher\models.py
Description: Leo的一些没用的代码
'''
from django.db import models
import datetime
import random

# Create your models here.

class Fetcher(models.Model):
    name = models.CharField(max_length=255)
    enable = models.BooleanField(default=True)
    sum_proxies_cnt = models.IntegerField(default=0)
    last_proxies_cnt = models.IntegerField(default=0)
    last_fetch_date = models.TextField(blank=True, null=True)  # This field type is a guess.
    # last_fetch_date = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed =  True
        db_table = 'fetchers'

    def to_dict(self):
        """
        返回一个dict，包含自身的全部属性
        """
        return {
            'name': self.name,
            'enable': self.enable,
            'sum_proxies_cnt': self.sum_proxies_cnt,
            'last_proxies_cnt': self.last_proxies_cnt,
            'last_fetch_date': str(self.last_fetch_date) if self.last_fetch_date is not None else None
        }


class Proxy(models.Model):
    # 爬取记录必要字段
    fetcher_name = models.CharField(max_length=255)
    protocol = models.CharField(max_length=255)
    ip = models.CharField(max_length=255)
    port = models.IntegerField()
    
    validated = models.BooleanField(default=False)
    latency = models.IntegerField(blank=True, null=True)
    validate_date = models.TextField(blank=True, null=True)  # This field type is a guess.
    to_validate_date = models.TextField(default=datetime.datetime.now())  # This field type is a guess.
    # validate_date = models.DateTimeField(blank=True, null=True) 
    # to_validate_date = models.DateTimeField(default=datetime.datetime.now()) 
    validate_failed_cnt = models.IntegerField(default=0)

    class Meta:
        managed = True
        db_table = 'proxy'

    def validate(self, success, latency):
        """
        传入一次验证结果，根据验证结果调整自身属性，并返回是否删除这个代理
        success : True/False，表示本次验证是否成功
        返回 : True/False，True表示这个代理太差了，应该从数据库中删除
        """
        self.latency = latency
        if success: # 验证成功
            self.validated = True
            self.validate_date = datetime.datetime.now()
            self.validate_failed_cnt = 0
            #self.to_validate_date = datetime.datetime.now() + datetime.timedelta(minutes=30)  # 30分钟之后继续验证
            self.to_validate_date = datetime.datetime.now() + datetime.timedelta(minutes=random.randint(10, 60))  # 10·60分钟之后继续验证
            return False
        else:
            self.validated = False
            self.validate_date = datetime.datetime.now()
            self.validate_failed_cnt = self.validate_failed_cnt + 1

            # 验证失败的次数越多，距离下次验证的时间越长
            delay_minutes = self.validate_failed_cnt * 10
            self.to_validate_date = datetime.datetime.now() + datetime.timedelta(minutes=delay_minutes)

            if self.validate_failed_cnt >= 6:
                return True
            else:
                return False
            
    def to_dict(self):
        """
        返回一个dict，包含自身的全部属性
        """
        return {
            'fetcher_name': self.fetcher_name,
            'protocol': self.protocol,
            'ip': self.ip,
            'port': self.port,
            'validated': self.validated,
            'latency': self.latency,
            'validate_date': str(self.validate_date) if self.validate_date is not None else None,
            'to_validate_date': str(self.to_validate_date) if self.to_validate_date is not None else None,
            'validate_failed_cnt': self.validate_failed_cnt
        }