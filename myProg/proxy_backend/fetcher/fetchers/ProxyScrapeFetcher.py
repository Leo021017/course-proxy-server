'''
Description: 
version: 
Author: Zhang Lingxin
Date: 2023-11-08 20:27:23
LastEditors: Zhang Lingxin
LastEditTime: 2023-11-10 19:24:07
'''
import time

import requests

from .BaseFetcher import BaseFetcher


class ProxyScrapeFetcher(BaseFetcher):
    """
    https://api.proxyscrape.com/?request=displayproxies&proxytype={{ protocol }}&_t={{ timestamp }}
    """

    def fetch(self):
        proxies = []
        type_list = ['socks4', 'socks5', 'http', 'https']
        for protocol in type_list:
            url = "https://api.proxyscrape.com/?request=displayproxies&proxytype=" + protocol + "&_t=" + str(
                time.time())
            resp = requests.get(url).text
            for data in resp.split("\n"):
                flag_idx = data.find(":")
                ip = data[:flag_idx]
                port = data[flag_idx + 1:-1]
                try:
                    port = int(port)
                except ValueError:
                    print(f"Invalid value for port: {port}")
                    port = 80
                proxies.append((protocol, ip, port))

        return list(set(proxies))
