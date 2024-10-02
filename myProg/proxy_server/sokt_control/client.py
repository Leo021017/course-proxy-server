'''
Description: tcp socket client部署在后端
version: 
Author: Zhang Lingxin
Date: 2023-11-01 21:15:58
LastEditors: Zhang Lingxin
LastEditTime: 2023-11-02 11:13:58
'''

import socket

# 创建TCP socket对象
client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# 服务器的IP地址和端口号
host = '192.168.92.141'
port = 8888

# 连接服务器
client_socket.connect((host, port))
print('已连接到服务器')

while True:
    # 输入要发送的数据
    message = input(">>>")

    # 发送数据给服务器
    client_socket.send(message.encode())

    if message == 'exit':
        break
    
    # 发送的是命令
    if message[0] == '/':
        if ("show" in message or "clear" in message):
            # 接收服务器返回的响应数据
            response = client_socket.recv(1024)
            print('接收到的响应：\n', response.decode())
        else:
            pass
    else:
        pass

# 关闭客户端连接
client_socket.close()
