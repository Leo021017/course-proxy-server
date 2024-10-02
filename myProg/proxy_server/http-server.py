import sys
from http.server import BaseHTTPRequestHandler, HTTPServer
import urllib.request
from socketserver import ThreadingMixIn
from concurrent.futures import ThreadPoolExecutor

from sokt_control.oplist import Opblklist
from ccache import create_cache

HOST = "127.0.0.1"
PORT = 8081

class ThreadPoolMixIn(ThreadingMixIn):
    # 线程池大小
    thread_pool_size = 10

    def process_request(self, request, client_address):
        # 处理请求前提交到线程池中
        self.pool.submit(self.process_request_thread, request, client_address)

    # 从线程池中获取线程来处理请求
    def process_request_thread(self, request, client_address):
        try:
            self.finish_request(request, client_address)
            self.shutdown_request(request)
        except Exception as exc:
            self.handle_error(request, client_address, exc)
            self.shutdown_request(request)

    def server_bind(self):
        super().server_bind()
        self.pool = ThreadPoolExecutor(self.thread_pool_size)

    def server_close(self):
        super().server_close()
        self.pool.shutdown(wait=False)



class ProxyRequestHandler(BaseHTTPRequestHandler):

    def do_GET(self):

        url = self.path[0:]
        dsthost = url
        third_slash = url.find('/', url.find('/', url.find('/') + 1) + 1)
        if third_slash != -1:
            dsthost = url[:third_slash]
        # 去掉协议头
        split_url = dsthost.split("/", 2)  # 将URL按照斜杠分割成最多2个部分
        if len(split_url) > 2:
            dsthost = split_url[2]
        srchost = self.address_string()
        if(self.address_string()=='::1'):
            srchost = '127.0.0.1'   
        print("src_host:", srchost)
        print("dst_host:", dsthost)
        
        # 获取黑名单
        # bug 如果使用线程池技术会无法打开该文件, 多线程可以
        opblklist = Opblklist('./sokt_control/blklist.txt')
        blklist = opblklist.show()
        # print("blklist:", blklist)
        
        if dsthost not in blklist:
            try:
                # 创建缓存对象
                cache = create_cache()
                
                if(cache.get(url)==None): # 无缓存
                    # 发送HTTP GET请求到目标服务器
                    response = urllib.request.urlopen(url)

                    # 发送状态码和http header
                    self.send_response(response.status)
                    for header, value in response.getheaders():
                        self.send_header(header, value)
                    
                    # 获取目标服务器的content和content_type
                    content_type = response.headers['Content-Type']
                    content = response.read()
                    
                    data = {
                        "content_type": content_type,
                        "content": content
                    }
                    print("server responsed {}".format(dsthost))
                    # 缓存content和content_type
                    cache.set(key=url, value=data, timeout=120)
                else: # 有缓存
                    # 从缓存中获取内容
                    data = cache.get(url)
                    content = data["content"]
                    content_type = data["content_type"]
                      
                    # 发送状态码和content_type 即http header
                    self.send_response(200)
                    self.send_header('Content-Type', content_type)
                    print("cache responsed {}".format(dsthost))
                
                # 向客户端发送content和content_type
                self.end_headers()
                self.wfile.write(content)
                
            except Exception as e:
                # 发生异常时向客户端发送错误信息
                self.send_error(500, str(e))       
        else:
            print("dst_host:{} is in blklist, conn is not supported!".format(dsthost))
        return
    
    do_HEAD = do_GET
    do_POST = do_GET
    do_PUT = do_GET
    do_DELETE = do_GET
    do_OPTIONS = do_GET
    
    # calss ProxyRequestHandler ended


class ThreadedHTTPServer(ThreadingMixIn, HTTPServer):
    pass


def my_http_proxy_server():
    server_addr = (HOST, PORT)
    with ThreadedHTTPServer(server_addr, ProxyRequestHandler) as server:
        print("HTTP proxy is running on {} : {} ...".format(HOST, PORT))
        server.serve_forever()


if __name__ == "__main__":
    print()
    if sys.argv[1:]:
        PORT = int(sys.argv[1])
    my_http_proxy_server()