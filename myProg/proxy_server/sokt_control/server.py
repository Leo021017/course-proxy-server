'''
Description: tcp socket server部署在代理服务器
version: 
Author: Zhang Lingxin
Date: 2023-11-01 21:09:49
LastEditors: Please set LastEditors
LastEditTime: 2023-11-23 20:14:42
'''
import socket
import threading

from oplist import Opblklist

def parse_command(input_str):
    # 提取命令、子命令和参数部分
    command, subcommand_args = input_str.split(' ', 1)
    command = command.strip()  # 去除首尾空格

    subcommand, arguments = subcommand_args.split(' ', 1)
    subcommand = subcommand.strip()  # 去除首尾空格

    arguments = arguments.strip()  # 去除首尾空格

    # 转换参数部分为列表
    argument_list = eval(arguments)  # 使用eval函数将字符串转换为列表
    
    return command, subcommand, argument_list


def handle_client(client_socket, addr):
    print('客户端已连接：', addr)

    while True:
        try:
            # 接收客户端发送的数据
            data = client_socket.recv(1024)
            # print('接收到的数据：', data.decode())
            
            if data.decode() == 'exit':
                print("client {} exited".format(addr))
                break
                
            # 接收到的是命令
            if data.decode()[0] == '/':
                
                if ("show" in data.decode() or "clear" in data.decode()): # 需要向客户端返回信息的show,clear命令
    
                    if ( "/blklist" in data.decode() ): # show blklist
                        if "show" in data.decode():
                            opblklist = Opblklist('blklist.txt')
                            blklist = opblklist.show()
                            str_list = ', '.join(blklist)
                            if(len(blklist) == 0):
                                str_list = "blklist is empty"
                            client_socket.send(str_list.encode())
                            print("已向客户端{}回复 blklist".format(addr))
                        if "clear" in data.decode():
                            opblklist = Opblklist('blklist.txt')
                            opblklist.clear()
                            client_socket.send("blklist was cleared".encode())
                    elif ( "/user" in data.decode() ): # show user
                        pass
                
                else: # 其他不需要返回信息的命令 add del
                    if ( "/blklist" in data.decode() ):
                        cmd, subcmd, list = parse_command(data.decode())
                        opblklist = Opblklist('blklist.txt')
                        if subcmd == 'add':
                            for dst in list:
                                opblklist.add(dst)
                        if subcmd == 'del':
                            ret = True
                            for dst in list:
                                ret = opblklist.delete(dst)
                                if(ret == False):
                                    break
                            if(ret == False):
                                pass
                            
                    elif ( "/user" in data.decode() ):
                        pass
                    else:
                        pass
            # 接收的非命令      
            else:
                pass
        
        except Exception as e:
            # 如果发生异常，这里会捕获并处理异常
            print("An error occurred:", e)
            continue
    
    # 关闭客户端连接
    client_socket.close()
    return

# 创建TCP socket对象
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# 绑定IP地址和端口号
host = '0.0.0.0'
port = 8888
server_socket.bind((host, port))

# 开始监听客户端连接
server_socket.listen(5)
print("control服务器 {}:{} 已启动，等待控制端连接...".format(host, port))

while True:
    # 循环 accept, 获得连接套接字
    client_socket, addr = server_socket.accept()

    # 创建新线程处理客户端连接
    if client_socket:
        client_thread = threading.Thread(target=handle_client, args=(client_socket, addr))
        client_thread.start()
    else:
        break
