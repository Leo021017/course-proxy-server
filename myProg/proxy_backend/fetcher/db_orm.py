'''
Author: Leo
Date: 2023-11-15 11:05:46
LastEditTime: 2023-11-16 17:35:20
FilePath: \proxy_backend\fetcher\db_orm.py
Description: Leo的一些没用的代码
'''
from .models import Proxy, Fetcher
from django.db import transaction
import datetime
import dateutil.parser
from django.utils import timezone
import pytz
utc=pytz.UTC

# 这里定义的是数据库的事务操作，旨在将view.py中对数据库的一系列操作封装成数据库事务
class DB_operation:
    def pushNewFetch(self, fetcher_name, protocol, ip, port):
        """
        爬取器新抓到了一个代理，调用本函数将代理放入数据库
        fetcher_name : 爬取器名称
        protocol : 代理协议
        ip : 代理IP地址
        port : 代理端口
        """
        with transaction.atomic():
            existing_proxy = Proxy.objects.select_for_update().filter(protocol=protocol, ip=ip, port=port).first()

            if existing_proxy is not None:
                # 如果代理已经存在，则更新fetcher_name和to_validate_date
                existing_proxy.fetcher_name = fetcher_name
                
                existing_proxy.to_validate_date = dateutil.parser.parse(existing_proxy.to_validate_date)
                now = timezone.now() if timezone.is_aware(existing_proxy.to_validate_date) else datetime.datetime.now()
                existing_proxy.to_validate_date = min(now, existing_proxy.to_validate_date) 
                # existing_proxy.to_validate_date = min(utc.localize(datetime.datetime.now()), existing_proxy.to_validate_date)
                
                existing_proxy.save()
            else:
                # 如果代理不存在，则创建新的代理对象
                new_proxy = Proxy(
                    fetcher_name=fetcher_name,
                    protocol=protocol,
                    ip=ip,
                    port=port
                    # to_validate_date在models.py中已经设置默认值为当前时间
                )
                new_proxy.save()

    def getToValidate(self, max_count=1):
        """
        从数据库中获取待验证的代理，根据to_validate_date字段
        优先选取已经通过了验证的代理，其次是没有通过验证的代理
        max_count : 返回数量限制
        返回 : list[Proxy]
        """
        validated_proxies = Proxy.objects.filter(to_validate_date__lte=datetime.datetime.now(), validated=True).order_by('to_validate_date')[:max_count]

        remaining_count = max_count - validated_proxies.count()
        if remaining_count > 0:
            # 其次是没有通过验证的代理
            un_validated_proxies = Proxy.objects.filter(to_validate_date__lte=datetime.datetime.now(), validated=False).order_by('to_validate_date')[:remaining_count]
            proxies = list(validated_proxies) + list(un_validated_proxies)
        else:
            proxies = list(validated_proxies)

        return proxies

    def pushValidateResult(self, proxy, success, latency):
        """
        将验证器的一个结果(即一个Proxy)添加进数据库中
        proxy : 代理
        success : True/False，验证是否成功
        latency : 本次验证所用的时间(单位毫秒)
        """
        with transaction.atomic():
            p = proxy
            should_remove = p.validate(success, latency)

            # 判断是否删除代理
            if should_remove:
                Proxy.objects.filter(protocol=p.protocol, ip=p.ip, port=p.port).delete()
            else:
                proxie = Proxy.objects.select_for_update().get(protocol=p.protocol, ip=p.ip, port=p.port)
                proxie.fetcher_name = p.fetcher_name
                proxie.validated = p.validated
                proxie.latency = p.latency
                proxie.validate_date = p.validate_date
                proxie.to_validate_date = p.to_validate_date
                proxie.validate_failed_cnt = p.validate_failed_cnt
                proxie.save()
        
    def getValidatedRandom(self, max_count):
        """
        从通过了验证的代理中，随机选择max_count个代理返回
        max_count<=0表示不做数量限制
        返回 : list[Proxy]
        """
        # 对数据库只读不需要设置事务锁，参考数据库系统课程，可以画图判断事务是否可串行化
        if max_count > 0:
            proxies = Proxy.objects.filter(validated=True).order_by('?')[:max_count]
        else:
            proxies = Proxy.objects.filter(validated=True).order_by('?')

        return list(proxies)
    
    def get_by_protocol(self, protocol, max_count):
        """
        查询 protocol 字段为指定值的代理服务器记录
        max_count 表示返回记录的最大数量，如果为 0 或负数则返回所有记录
        返回 : list[Proxy]
        """
        # 对数据库只读不需要设置事务锁，参考数据库系统课程，可以画图判断事务是否可串行化
        if max_count > 0:
            proxies = Proxy.objects.filter(protocol=protocol, validated=True).order_by('?')[:max_count]
        else:
            proxies = Proxy.objects.filter(protocol=protocol, validated=True).order_by('?')

        return list(proxies)
    
    def pushFetcherResult(self, name, proxies_cnt):
        """
        更新爬取器的状态，每次在完成一个网站的爬取之后，调用本函数
        name : 爬取器的名称
        proxies_cnt : 本次爬取到的代理数量
        """
        with transaction.atomic():
            fetcher = Fetcher.objects.select_for_update().get(name=name)
            fetcher.last_proxies_cnt = proxies_cnt
            fetcher.sum_proxies_cnt += proxies_cnt
            fetcher.last_fetch_date = datetime.datetime.now()
            fetcher.save()

    def pushFetcherEnable(self, name, enable):
        """
        设置是否起用对应爬取器，被禁用的爬取器将不会被运行
        name : 爬取器的名称
        enable : True/False, 是否启用
        """
        with transaction.atomic():
            try:
                fetcher = Fetcher.objects.get(name=name)
                fetcher.enable = enable
                fetcher.save()
            except Fetcher.DoesNotExist:
                raise ValueError(f'ERROR: can not find fetcher {name}')
            
    def getAllFetchers(self):
        """
        获取所有的爬取器以及状态
        返回 : list[Fetcher]
        """
        return Fetcher.objects.all()
    
    def getFetcher(self, name):
        """
        根据名字获取指定爬取器以及状态
        返回 : Fetcher or None
        """
        try:
            return Fetcher.objects.get(name=name)
        except Fetcher.DoesNotExist:
            return None
        
    def getProxyCount(self, fetcher_name):
        """
        查询在数据库中有多少个由指定爬取器爬取到的代理
        fetcher_name : 爬取器名称
        返回 : int
        """
        return Proxy.objects.filter(fetcher_name=fetcher_name).count()
    
    def getProxiesStatus(self):
        """
        获取代理状态，包括`全部代理数量`，`当前可用代理数量`，`等待验证代理数量`
        返回 : dict
        """
        sum_proxies_cnt = Proxy.objects.count()
        validated_proxies_cnt = Proxy.objects.filter(validated=True).count()
        # "lte"是"less than or equal to"的缩写，表示"小于或等于"
        # 这是Django框架中的查询表达式用法
        pending_proxies_cnt = Proxy.objects.filter(to_validate_date__lte=datetime.datetime.now()).count()

        return {
            'sum_proxies_cnt': sum_proxies_cnt,
            'validated_proxies_cnt': validated_proxies_cnt,
            'pending_proxies_cnt': pending_proxies_cnt
        }
    
    def pushClearFetchersStatus(self):
        """
        清空爬取器的统计信息，包括sum_proxies_cnt,last_proxies_cnt,last_fetch_date
        """
        fetchers = Fetcher.objects.all()
        for fetcher in fetchers:
            fetcher.sum_proxies_cnt = 0
            fetcher.last_proxies_cnt = 0
            fetcher.last_fetch_date = None
            fetcher.save()

    def clear_all_proxies(self):
        """
        删除爬取器的所有条目
        """
        Proxy.objects.all().delete()
        return


