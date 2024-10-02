'''
Description: 
version: 
Author: Zhang Lingxin
Date: 2023-11-02 16:49:27
LastEditors: Please set LastEditors
LastEditTime: 2023-11-18 21:22:38
'''
from flask import Flask
from flask_caching import Cache
import msgpack

class Ccache:
    def __init__(self):
        pass
    
    def msgpack_serializer(self, obj):
        return msgpack.packb(obj, use_bin_type=True)

    def msgpack_deserializer(self, obj):
        return msgpack.unpackb(obj, raw=False)

    def create_cache(self):
        config = {
            "CACHE_TYPE": "redis",
            "CACHE_REDIS_URL": "redis://localhost:6379/1",
            "CACHE_KEY_PREFIX": "cache-for-proxy-server:",
            "CACHE_DEFAULT_TIMEOUT": 300,
            # 好像可以不加? 还是可以缓存图片
            # "CACHE_REDIS_SERIALIZER": self.msgpack_serializer,
            # "CACHE_REDIS_DESERIALIZER": self.msgpack_deserializer
        }

        app = Flask(__name__)
        cache = Cache(app=app, config=config)
        return cache
    
def create_cache():
    config = {
            "CACHE_TYPE": "redis",
            "CACHE_REDIS_URL": "redis://localhost:6379/1",
            "CACHE_KEY_PREFIX": "cache-for-proxy-server:",
            "CACHE_DEFAULT_TIMEOUT": 300
            # 好像可以不加? 还是可以缓存图片
            # "CACHE_REDIS_SERIALIZER": self.msgpack_serializer,
            # "CACHE_REDIS_DESERIALIZER": self.msgpack_deserializer
        }
    app = Flask(__name__)
    cache = Cache(app=app, config=config)
    return cache

