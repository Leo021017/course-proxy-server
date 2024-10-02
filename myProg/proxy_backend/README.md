# Myproxy控制端——后端

## 技术路线

django + sqlite + redis

## 使用

1. 安装python环境或者创建conda虚拟环境

   ```
   pip install -r requirements.txt
   或者
   conda env create -f environment.yml
   ```

2. 启动django

   ```
   python manage.py runserver
   ```

3. 数据库可以运行`main.sql`文件进行初始化配置

4. 由于我们将`redis`作为`celery`的任务分配器，需要连接`redis`服务，项目中连接的是本地`redis`的默认端口**6379**

5. 在`/proxy_backend`目录下开启celery后台

   ```
   celery  -A proxy_backend worker  -l debug -P eventlet
   ```

   