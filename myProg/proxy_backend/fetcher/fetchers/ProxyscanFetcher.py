from .BaseFetcher import BaseFetcher
import requests
import time

class ProxyscanFetcher(BaseFetcher):
    """
    https://www.proxyscan.io/api/proxy?last_check=9800&uptime=50&limit=20&_t={{ timestamp }}
    """

    def fetch(self):
        """
        执行一次爬取，返回一个数组，每个元素是(protocol, ip, port)，portocol是协议名称，目前主要为http
        返回示例：[('http', '127.0.0.1', 8080), ('http', '127.0.0.1', 1234)]
        """
        proxies = []
        # 此API为随机获取接口，获取策略为：重复取十次后去重
        for _ in range(10):
            url = "https://www.proxyscan.io/api/proxy?last_check=9800&uptime=50&limit=20&_t=" + str(time.time())
            resp = requests.get(url).json()
            for data in resp:
                protocol = str.lower(data['Type'][0])
                port = data['Port']
                try:
                    port = int(port)
                except ValueError:
                    print(f"Invalid value for port: {port}")
                    port = 80
                proxies.append((protocol, data['Ip'], port))
        
        return list(set(proxies))