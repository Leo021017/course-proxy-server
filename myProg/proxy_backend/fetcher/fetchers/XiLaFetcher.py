'''
Description: 
version: 
Author: Zhang Lingxin
Date: 2023-11-08 20:27:23
LastEditors: Zhang Lingxin
LastEditTime: 2023-11-10 19:27:41
'''
import re
import time
import random

import requests
from pyquery import PyQuery as pq

from .BaseFetcher import BaseFetcher

class XiLaFetcher(BaseFetcher):
    """
    http://www.xiladaili.com/gaoni/
    代码由 [Zealot666](https://github.com/Zealot666) 提供
    """
    def __init__(self):
        super().__init__()
        self.index = 0

    def fetch(self):
        """
        执行一次爬取，返回一个数组，每个元素是(protocol, ip, port)，portocol是协议名称，目前主要为http
        返回示例：[('http', '127.0.0.1', 8080), ('http', '127.0.0.1', 1234)]
        """
        self.index += 1
        new_index = self.index % 30

        urls = []
        urls = urls + [f'http://www.xiladaili.com/gaoni/{page}/' for page in range(new_index, new_index + 11)]
        urls = urls + [f'http://www.xiladaili.com/http/{page}/' for page in range(new_index, new_index + 11)]

        proxies = []
        ip_regex = re.compile(r'^\d+\.\d+\.\d+\.\d+$')
        port_regex = re.compile(r'^\d+$')

        for url in urls:
            time.sleep(1)
            html = requests.get(url, timeout=10).text
            doc = pq(html)
            for line in doc('tr').items():
                tds = list(line('td').items())
                if len(tds) >= 2:
                    ip = tds[0].text().strip().split(":")[0]
                    port = tds[0].text().strip().split(":")[1]
                    try:
                        port = int(port)
                    except ValueError:
                        print(f"Invalid value for port: {port}")
                        port = 80
                    if re.match(ip_regex, ip) is not None and re.match(port_regex, port) is not None:
                        proxies.append(('http', ip, int(port)))

        proxies = list(set(proxies))

        # 这个代理源数据太多了，验证器跑不过来
        # 所以只取一部分，一般来说也够用了
        if len(proxies) > 200:
            proxies = random.sample(proxies, 200)
        
        return proxies
