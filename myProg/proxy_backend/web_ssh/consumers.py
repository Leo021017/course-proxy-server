'''
Author: Leo
Date: 2023-11-16 20:42:20
LastEditTime: 2023-11-24 16:47:13
FilePath: \myProg\proxy_backend\web_ssh\consumers.py
Description: Leo的一些没用的代码
'''

from channels.generic.websocket import WebsocketConsumer
import paramiko
import threading
import time


# 配置端口
PORT = 22

class MyThread(threading.Thread):
    def __init__(self, chan):
        threading.Thread.__init__(self)
        self.chan = chan

    def run(self):
        while not self.chan.chan.exit_status_ready():
            time.sleep(0.1)
            try:
                data = self.chan.chan.recv(1024)
                self.chan.send(data.decode("utf-8").replace("\n", "\r\n"))
            except Exception as ex:
                print(str(ex))
        self.chan.sshclient.close()
        return False


class WebSSHService(WebsocketConsumer):

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        
    def connect(self):
        user_name = self.scope['url_route']['kwargs']['username']
        password = self.scope['url_route']['kwargs']['password']
        host = self.scope['url_route']['kwargs']['host']
        print(user_name)
        print(password)
        print(host)
        print('===================================')
        self.accept()
        self.sshclient = paramiko.SSHClient()
        self.sshclient.load_system_host_keys()
        self.sshclient.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        self.sshclient.connect(host, PORT, user_name, password)
        self.chan = self.sshclient.invoke_shell(term='xterm')
        self.chan.settimeout(0)
        t1 = MyThread(self)
        t1.setDaemon(True)
        t1.start()

    def receive(self, text_data=None, bytes_data=None):
        self.chan.send(text_data)

    def disconnect(self, code):
        self.sshclient.close()