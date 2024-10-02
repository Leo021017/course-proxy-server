# 代理服务器端

## 使用

1. 配置环境

   ```
   pip install -r requirements.txt
   ```

2. 运行对应协议的服务器程序

   ```
   python socks5serv.py
   python http-server.py
   python https-serv.py
   ```

3. 运行接受命令的socket程序

   ```
   cd sokt_control
   python server.py
   ```

   