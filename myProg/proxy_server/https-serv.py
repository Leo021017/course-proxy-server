'''
Description: 
version: 
Author: Zhang Lingxin
Date: 2023-10-11 09:52:16
LastEditors: Zhang Lingxin
LastEditTime: 2023-11-02 17:33:53
'''
# -*- coding: utf-8 -*-
from concurrent.futures import ThreadPoolExecutor
import sys
import os
import socket
import ssl
import select
import http.client
import urllib.parse
import threading
import gzip
import zlib
import time
import json
import re
from http.server import HTTPServer, BaseHTTPRequestHandler
from socketserver import ThreadingMixIn
from io import BytesIO
from subprocess import Popen, PIPE
from html.parser import HTMLParser

from sokt_control.oplist import Opblklist

def with_color(c, s):
    return "\x1b[%dm%s\x1b[0m" % (c, s)

def join_with_script_dir(path):
    return os.path.join(os.path.dirname(os.path.abspath(__file__)), path)

'''
socketserver.ThreadingMixIn是专为http服务器设计的多线程模块, 它会为每个请求开启一个线程
实际使用时, 自定义的类ThreadingHTTPServer 继承 ThreadingMixIn 和 服务器类如 HTTPServer 或 TCPServer 以实现多线程
'''
class ThreadingHTTPServer(ThreadingMixIn, HTTPServer):
    
    address_family = socket.AF_INET6
    daemon_threads = True

    def handle_error(self, request, client_address):
        # surpress socket/ssl related errors
        cls, e = sys.exc_info()[:2]
        if cls is socket.error or cls is ssl.SSLError:
            pass
        else:
            return HTTPServer.handle_error(self, request, client_address)

'''
如果需要实现线程池, 需要重写 ThreadingMixIn 的 process_request 方法
这里定义一个类ThreadPoolMixIn继承自ThreadingMixIn, 重写了process_request方法
'''
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

'''
重写ThreadingHTTPServer: ThreadingPoolHTTPServer
'''
class ThreadingPoolHTTPServer(ThreadPoolMixIn, HTTPServer):
    address_family = socket.AF_INET6
    daemon_threads = True

    def handle_error(self, request, client_address):
        # surpress socket/ssl related errors
        cls, e = sys.exc_info()[:2]
        if cls is socket.error or cls is ssl.SSLError:
            pass
        else:
            return HTTPServer.handle_error(self, request, client_address)

'''
代理处理类
'''
class ProxyRequestHandler(BaseHTTPRequestHandler):
    cakey = join_with_script_dir('ca.key')
    cacert = join_with_script_dir('ca.crt')
    certkey = join_with_script_dir('cert.key')
    certdir = join_with_script_dir('certs/')
    timeout = 5

    lock = threading.Lock()

    def __init__(self, *args, **kwargs):
        print("https server initing ...")
        self.tls = threading.local()
        self.tls.conns = {}
        
        BaseHTTPRequestHandler.__init__(self, *args, **kwargs)
        print("https server init ok")

    def log_error(self, format, *args):
        # surpress "Request timed out: timeout('timed out',)"
        if isinstance(args[0], socket.timeout):
            return

        self.log_message(format, *args)

    '''
    do_CONNECT: 当客户端请求建立与服务器的 HTTP 隧道时, 例如使用 HTTPS 或其他加密协议进行通信时, 将调用 do_CONNECT 方法。
    do_CONNECT 调用了connect_intercept()和connect_intercept()方法
    '''
    def do_CONNECT(self):
        print("do_CONNECT")

        url = self.path[0:]
        dsthost = url
        third_slash = url.find('/', url.find('/', url.find('/') + 1) + 1)
        if third_slash != -1:
            dsthost = url[:third_slash]
        srchost = self.address_string()
        if(self.address_string()=='::1'):
            srchost = '127.0.0.1'   
        print("src_host:", srchost)
        print("dst_host:", dsthost)
        
        if os.path.isfile(self.cakey) and os.path.isfile(self.cacert) and os.path.isfile(self.certkey) and os.path.isdir(self.certdir):
            self.connect_intercept()
        else:
            self.connect_relay()

    def connect_intercept(self):
        print("do_CONNECT/connect_intercept")
        hostname = self.path.split(':')[0]
        certpath = "%s/%s.crt" % (self.certdir.rstrip('/'), hostname)

        with self.lock:
            if not os.path.isfile(certpath):
                epoch = "%d" % (time.time() * 1000)
                p1 = Popen(["openssl", "req", "-new", "-key", self.certkey, "-subj", "/CN=%s" % hostname], stdout=PIPE)
                p2 = Popen(["openssl", "x509", "-req", "-days", "3650", "-CA", self.cacert, "-CAkey", self.cakey, "-set_serial", epoch, "-out", certpath], stdin=p1.stdout, stderr=PIPE)
                p2.communicate()

        self.wfile.write("%s %d %s\r\n" % (self.protocol_version, 200, 'Connection Established'))
        self.end_headers()

        self.connection = ssl.wrap_socket(self.connection, keyfile=self.certkey, certfile=certpath, server_side=True)
        self.rfile = self.connection.makefile("rb", self.rbufsize)
        self.wfile = self.connection.makefile("wb", self.wbufsize)

        conntype = self.headers.get('Proxy-Connection', '')
        if self.protocol_version == "HTTP/1.1" and conntype.lower() != 'close':
            self.close_connection = 0
        else:
            self.close_connection = 1

    def connect_relay(self):
        print("do_CONNECT/connect_relay")
        address = self.path.split(':', 1)
        address[1] = int(address[1]) or 443
        try:
            s = socket.create_connection(address, timeout=self.timeout)
        except Exception as e:
            self.send_error(502)
            return
        self.send_response(200, 'Connection Established')
        self.end_headers()

        conns = [self.connection, s]
        self.close_connection = 0
        while not self.close_connection:
            rlist, wlist, xlist = select.select(conns, [], conns, self.timeout)
            if xlist or not rlist:
                break
            for r in rlist:
                other = conns[1] if r is conns[0] else conns[0]
                data = r.recv(8192)
                if not data:
                    self.close_connection = 1
                    break
                other.sendall(data)

    '''
    当客户端发送 HTTP GET 请求时, 将调用 do_GET 方法。
    '''
    def do_GET(self):
        print("do_GET")
        if self.path == 'http://proxy3.test/':
            self.send_cacert()
            return
        
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
        opblklist = Opblklist('./sokt_control/blklist.txt')
        blklist = opblklist.show()
        
        if dsthost in blklist:
            print("dst_host:{} is in blklist, conn is not supported!".format(dsthost))
        else:            
            req = self
            content_length = int(req.headers.get('Content-Length', 0))
            req_body = self.rfile.read(content_length) if content_length else None

            if req.path[0] == '/':
                if isinstance(self.connection, ssl.SSLSocket):
                    req.path = "https://%s%s" % (req.headers['Host'], req.path)
                else:
                    req.path = "http://%s%s" % (req.headers['Host'], req.path)

            req_body_modified = self.request_handler(req, req_body)
            if req_body_modified is False:
                self.send_error(403)
                return
            elif req_body_modified is not None:
                req_body = req_body_modified
                req.headers['Content-length'] = str(len(req_body))

            u = urllib.parse.urlsplit(req.path)
            scheme, netloc, path = u.scheme, u.netloc, (u.path + '?' + u.query if u.query else u.path)
            assert scheme in ('http', 'https')
            if netloc:
                req.headers['Host'] = netloc
            setattr(req, 'headers', self.filter_headers(req.headers))

            print(req.headers)

            try:
                origin = (scheme, netloc)
                if not origin in self.tls.conns:
                    if scheme == 'https':
                        self.tls.conns[origin] = http.client.HTTPSConnection(netloc, timeout=self.timeout)
                    else:
                        self.tls.conns[origin] = http.client.HTTPSConnection(netloc, timeout=self.timeout)
                conn = self.tls.conns[origin]
                conn.request(self.command, path, req_body, dict(req.headers))
                res = conn.getresponse()

                version_table = {10: 'HTTP/1.0', 11: 'HTTP/1.1'}
                setattr(res, 'headers', res.msg)
                setattr(res, 'response_version', version_table[res.version])

                # support streaming
                if not 'Content-Length' in res.headers and 'no-store' in res.headers.get('Cache-Control', ''):
                    self.response_handler(req, req_body, res, '')
                    setattr(res, 'headers', self.filter_headers(res.headers))
                    self.relay_streaming(res)
                    with self.lock:
                        self.save_handler(req, req_body, res, '')
                    return

                res_body = res.read()
            except Exception as e:
                if origin in self.tls.conns:
                    del self.tls.conns[origin]
                self.send_error(502)
                return
            # print(res.headers)
            content_encoding = res.headers.get('Content-Encoding', 'identity')
            res_body_plain = self.decode_content_body(res_body, content_encoding)

            res_body_modified = self.response_handler(req, req_body, res, res_body_plain)
            if res_body_modified is False:
                self.send_error(403)
                return
            elif res_body_modified is not None:
                res_body_plain = res_body_modified
                res_body = self.encode_content_body(res_body_plain, content_encoding)
                res.headers['Content-Length'] = str(len(res_body))

            setattr(res, 'headers', self.filter_headers(res.headers))

            self.wfile.write("%s %d %s\r\n" % (self.protocol_version, res.status, res.reason))
            for line in res.headers.headers:
                self.wfile.write(line)
            self.end_headers()
            self.wfile.write(res_body)
            self.wfile.flush()

            with self.lock:
                self.save_handler(req, req_body, res, res_body_plain)
        return
    
    '''
    relay_streaming: 基于流(stream)的代理转发功能
        do_GET调用了此方法
    '''
    def relay_streaming(self, res):
        print("do_GET/relay_streaming")
        self.wfile.write("%s %d %s\r\n" % (self.protocol_version, res.status, res.reason))
        for line in res.headers.headers:
            self.wfile.write(line)
        self.end_headers()
        try:
            while True:
                chunk = res.read(8192)
                if not chunk:
                    break
                self.wfile.write(chunk)
            self.wfile.flush()
        except socket.error:
            # connection closed by client
            pass

    do_HEAD = do_GET
    do_POST = do_GET
    do_PUT = do_GET
    do_DELETE = do_GET
    do_OPTIONS = do_GET

    '''
    filter_headers: 确保代理服务器在转发请求时遵循适当的协议规范, 去掉不必要内容, 设置编码格式
        do_GET调用了此方法
    '''
    def filter_headers(self, headers):
        print("do_GET/filter_headers")
        # http://tools.ietf.org/html/rfc2616#section-13.5.1
        hop_by_hop = ('connection', 'keep-alive', 'proxy-authenticate', 'proxy-authorization', 'te', 'trailers', 'transfer-encoding', 'upgrade')
        for k in hop_by_hop:
            del headers[k]

        # accept only supported encodings
        if 'Accept-Encoding' in headers:
            ae = headers['Accept-Encoding']
            filtered_encodings = [x for x in re.split(r',\s*', ae) if x in ('identity', 'gzip', 'x-gzip', 'deflate')]
            headers['Accept-Encoding'] = ', '.join(filtered_encodings)

        return headers
    
    '''
    编解码响应体
        do_GET调用了encode_content_body()和decode_content_body()方法
    '''
    def encode_content_body(self, text, encoding):
        print("do_GET/encode_content_body")
        if encoding == 'identity':
            data = text
        elif encoding in ('gzip', 'x-gzip'):
            io = BytesIO()
            with gzip.GzipFile(fileobj=io, mode='wb') as f:
                f.write(text)
            data = io.getvalue()
        elif encoding == 'deflate':
            data = zlib.compress(text)
        else:
            raise Exception("Unknown Content-Encoding: %s" % encoding)
        return data

    def decode_content_body(self, data, encoding):
        print("do_GET/decode_content_body")
        if encoding == 'identity':
            text = data
        elif encoding in ('gzip', 'x-gzip'):
            io = BytesIO(data)
            with gzip.GzipFile(fileobj=io) as f:
                text = f.read()
        elif encoding == 'deflate':
            try:
                text = zlib.decompress(data)
            except zlib.error:
                text = zlib.decompress(data, -zlib.MAX_WBITS)
        else:
            raise Exception("Unknown Content-Encoding: %s" % encoding)
        return text
    '''
    send_cacert: 向客户端发送 CA 证书文件
        do_GET调用了此方法
    '''
    def send_cacert(self):
        print("do_GET/send_cacert")
        with open(self.cacert, 'rb') as f:
            data = f.read()

        self.wfile.write("%s %d %s\r\n" % (self.protocol_version, 200, 'OK'))
        self.send_header('Content-Type', 'application/x-x509-ca-cert')
        self.send_header('Content-Length', len(data))
        self.send_header('Connection', 'close')
        self.end_headers()
        self.wfile.write(data)


    def print_info(self, req, req_body, res, res_body):
        print("print_info")
        print()
        def parse_qsl(s):
            return '\n'.join("%-20s %s" % (k, v) for k, v in urllib.parse.parse_qsl(s, keep_blank_values=True))

        req_header_text = "%s %s %s\n%s" % (req.command, req.path, req.request_version, req.headers)
        res_header_text = "%s %d %s\n%s" % (res.response_version, res.status, res.reason, res.headers)

        print(with_color(33, req_header_text))

        u = urllib.parse.urlsplit(req.path)
        if u.query:
            query_text = parse_qsl(u.query)
            print(with_color(32, "==== QUERY PARAMETERS ====\n%s\n" % query_text))

        cookie = req.headers.get('Cookie', '')
        if cookie:
            cookie = parse_qsl(re.sub(r';\s*', '&', cookie))
            print(with_color(32, "==== COOKIE ====\n%s\n" % cookie))

        auth = req.headers.get('Authorization', '')
        if auth.lower().startswith('basic'):
            token = auth.split()[1].decode('base64')
            print(with_color(31, "==== BASIC AUTH ====\n%s\n" % token))

        if req_body is not None:
            req_body_text = None
            content_type = req.headers.get('Content-Type', '')

            if content_type.startswith('application/x-www-form-urlencoded'):
                req_body_text = parse_qsl(req_body)
            elif content_type.startswith('application/json'):
                try:
                    json_obj = json.loads(req_body)
                    json_str = json.dumps(json_obj, indent=2)
                    if json_str.count('\n') < 50:
                        req_body_text = json_str
                    else:
                        lines = json_str.splitlines()
                        req_body_text = "%s\n(%d lines)" % ('\n'.join(lines[:50]), len(lines))
                except ValueError:
                    req_body_text = req_body
            elif len(req_body) < 1024:
                req_body_text = req_body

            if req_body_text:
                print(with_color(32, "==== REQUEST BODY ====\n%s\n" % req_body_text))

        print(with_color(36, res_header_text))

        cookies = res.headers.getheaders('Set-Cookie')
        if cookies:
            cookies = '\n'.join(cookies)
            print(with_color(31, "==== SET-COOKIE ====\n%s\n" % cookies))

        if res_body is not None:
            res_body_text = None
            content_type = res.headers.get('Content-Type', '')

            if content_type.startswith('application/json'):
                try:
                    json_obj = json.loads(res_body)
                    json_str = json.dumps(json_obj, indent=2)
                    if json_str.count('\n') < 50:
                        res_body_text = json_str
                    else:
                        lines = json_str.splitlines()
                        res_body_text = "%s\n(%d lines)" % ('\n'.join(lines[:50]), len(lines))
                except ValueError:
                    res_body_text = res_body
            elif content_type.startswith('text/html'):
                m = re.search(r'<title[^>]*>\s*([^<]+?)\s*</title>', res_body, re.I)
                if m:
                    h = HTMLParser()
                    print(with_color(32, "==== HTML TITLE ====\n%s\n" % h.unescape(m.group(1).decode('utf-8'))))
            elif content_type.startswith('text/') and len(res_body) < 1024:
                res_body_text = res_body

            if res_body_text:
                print (with_color(32, "==== RESPONSE BODY ====\n%s\n" % res_body_text))

    # 可以读取处理请求头和请求体
    def request_handler(self, req, req_body):
        pass

    # 可以读取处理响应头和响应体
    def response_handler(self, req, req_body, res, res_body):
        pass

    # 保存请求和响应信息
    def save_handler(self, req, req_body, res, res_body):
        self.print_info(req, req_body, res, res_body)


def my_https_proxy_server(port1, HandlerClass=ProxyRequestHandler, ServerClass=ThreadingHTTPServer, protocol="HTTP/1.1"):
    port = port1
    server_address = ('::1', port)
    ip = '127.0.0.1'

    HandlerClass.protocol_version = protocol

    # 指定代理服务器ip、端口和处理函数, 创建一个httpd服务器对象
    httpd = ServerClass(server_address, HandlerClass)

    sa = httpd.socket.getsockname()
    print("HTTPS proxy server is running on", ip, ":", sa[1], " ...")

    # 一直运行服务器
    httpd.serve_forever()


if __name__ == '__main__':
    my_https_proxy_server(port1=8081)
    print()
    
