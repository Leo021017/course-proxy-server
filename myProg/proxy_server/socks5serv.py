import sys
import select
import socket
import struct
from socketserver import StreamRequestHandler, ThreadingTCPServer

from sokt_control.oplist import Opblklist

SOCKS_VERSION = 5   # socks版本
HOST = "127.0.0.1"
PORT = 8081

class SocksProxy(StreamRequestHandler):
    def handle(self):

        """
        一、客户端认证请求
            +----+----------+----------+
            |VER | NMETHODS | METHODS  |
            +----+----------+----------+
            | 1  |    1     |  1~255   |
            +----+----------+----------+
        """
        print('Accepting connection from {}'.format(self.client_address))
        
        # 协商
        # 从客户端读取并解包两个字节的数据
        header = self.connection.recv(2)
        version, Nmethods = struct.unpack("!BB", header)
        # 设置socks5协议，METHODS字段的数目大于0
        assert version == SOCKS_VERSION, 'SOCKS版本错误'
        assert Nmethods > 0
        # 接受支持的方法  
        # 无需认证：0x00    用户名密码认证：0x02
        methods = self.get_available_methods(Nmethods)
        # 检查是否支持该方式，不支持则断开连接
        if 0 not in set(methods):
            self.server.close_request(self.request)
            return
        
        
        """
        二、服务端回应认证
            +----+--------+
            |VER | METHOD |
            +----+--------+
            | 1  |   1    |
            +----+--------+
        """
        # 发送协商响应数据包
        self.connection.sendall(struct.pack("!BB", SOCKS_VERSION, 0))
        # 校验用户名和密码
        # if not self.VerifyAuth():
        #    return


        """
        三、客户端连接请求(连接目的网络)
            +----+-----+-------+------+----------+----------+
            |VER | CMD |  RSV  | ATYP | DST.ADDR | DST.PORT |
            +----+-----+-------+------+----------+----------+
            | 1  |  1  |   1   |  1   | Variable |    2     |
            +----+-----+-------+------+----------+----------+
        """
        version, cmd, _, address_type = struct.unpack("!BBBB", self.connection.recv(4))
        assert version == SOCKS_VERSION, 'socks版本错误'
        if address_type == 1:  # IPv4
            # 转换IPV4地址字符串（xxx.xxx.xxx.xxx）成为32位打包的二进制格式（长度为4个字节的二进制字符串）
            address = socket.inet_ntoa(self.connection.recv(4))
        elif address_type == 3:  # Domain name
            domain_length = self.connection.recv(1)[0]
            address = self.connection.recv(domain_length)
        elif address_type == 4: # IPv6
            addr_ip = self.connection.recv(16)
            address = socket.inet_ntop(socket.AF_INET6, addr_ip)
        else:
            self.server.close_request(self.request)
            return
        port = struct.unpack('!H', self.connection.recv(2))[0]

        # 获取IP
        print("src_host: ", self.client_address[0])
        dsthost = address.decode("UTF-8")
        if(port!=80):
            dsthost = dsthost+":"+str(port)
        # 去掉协议头
        split_url = dsthost.split("/", 2)  # 将URL按照斜杠分割成最多2个部分
        if len(split_url) > 2:
            dsthost = split_url[2]
        print("dst_host: ", dsthost)
        # 获取黑名单
        opblklist = Opblklist('./sokt_control/blklist.txt')
        blklist = opblklist.show()
        
        if dsthost in blklist:
            print("dst_host:{} is in blklist, conn is not supported!".format(dsthost))
        else:

            """
            四、服务端回应连接
                +----+-----+-------+------+----------+----------+
                |VER | REP |  RSV  | ATYP | BND.ADDR | BND.PORT |
                +----+-----+-------+------+----------+----------+
                | 1  |  1  |   1   |  1   | Variable |    2     |
                +----+-----+-------+------+----------+----------+
            """
            # 响应，只支持CONNECT请求
            try:
                if cmd == 1:  # CONNECT
                    remote = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                    remote.connect((address, port))
                    bind_address = remote.getsockname()
                    print('Connected to {} {}'.format(address, port))
                else:
                    self.server.close_request(self.request)
                addr = struct.unpack("!I", socket.inet_aton(bind_address[0]))[0]
                port = bind_address[1]
                #reply = struct.pack("!BBBBIH", SOCKS_VERSION, 0, 0, address_type, addr, port)
                # 注意：按照标准协议，返回的应该是对应的address_type
                # 但是实际测试发现，当address_type=3，也就是说是域名类型时，会出现卡死情况
                # 但是将address_type该为1，则不管是IP类型和域名类型都能正常运行
                reply = struct.pack("!BBBBIH", SOCKS_VERSION, 0, 0, 1, addr, port)
            except Exception as err:
                # 响应拒绝连接的错误
                reply = self.generate_failed_reply(address_type, 5)
            self.connection.sendall(reply)  # 发送回复包

            # 建立连接成功，开始交换数据
            if reply[1] == 0 and cmd == 1:
                self.exchange_loop(self.connection, remote)
            self.server.close_request(self.request)
        
        return
    
    def get_available_methods(self, n):
        """ 
        检查是否支持该验证方式 
        """
        methods = []
        for i in range(n):
            methods.append(ord(self.connection.recv(1)))
        return methods
    
    def generate_failed_reply(self, address_type, error_number):
        """ 
        生成连接失败的回复包 
        """
        return struct.pack("!BBBBIH", SOCKS_VERSION, error_number, 0, address_type, 0, 0)
    
    def VerifyAuth(self):
        """
        校验用户名和密码
        """
        version = ord(self.connection.recv(1))
        # assert version == 1
        assert version == SOCKS_VERSION, 'SOCKS版本错误'
        username_len = ord(self.connection.recv(1))
        username = self.connection.recv(username_len).decode('utf-8')
        password_len = ord(self.connection.recv(1))
        password = self.connection.recv(password_len).decode('utf-8')
        self.username = "leo"
        self.password = "1234"
        if username == self.username and password == self.password:
            # 验证成功, status = 0
            response = struct.pack("!BB", version, 0)
            self.connection.sendall(response)
            return True
        # 验证失败, status != 0
        response = struct.pack("!BB", version, 0xFF)
        self.connection.sendall(response)
        self.server.close_request(self.request)
        return False

    def exchange_loop(self, client, remote):
        """ 
        交换数据 
        """
        while True:
            # 等待数据
            r, w, e = select.select([client, remote], [], [])
            if client in r:
                data = client.recv(4096)
                if remote.send(data) <= 0:
                    break
            # if remote in r:
            #     data = remote.recv(4096)
            #     if client.send(data) <= 0:
            #         break
            #     cache.append(data)  # 将响应数据添加到缓存中
            if remote in r:
                data = remote.recv(4096)
                if client.send(data) <= 0:
                    break
            # if client in r:
            #     data = client.recv(4096)
            #     if not cache:  # 如果缓存为空，则向远程服务器请求数据
            #         if remote.send(data) <= 0:
            #             break
            #     else:  # 如果缓存不为空，则直接从缓存中获取响应数据
            #         response = cache.pop(0)  # 获取缓存中的第一个响应数据
            #         if client.send(response) <= 0:
            #             break    


def my_socks5_proxy_server():
    # 使用socketserver库的多线程服务器ThreadingTCPServer启动代理
    with ThreadingTCPServer((HOST, PORT), SocksProxy) as server:
        print("SOCKS5 proxy server is running on {} : {} ...".format(HOST, PORT))
        server.serve_forever()


if __name__ == '__main__':
    if sys.argv[1:]:
        PORT = int(sys.argv[1])
    my_socks5_proxy_server()

