# Myproxy客户端


## 技术路线：

* 后端：采用Express作为框架 MongoDB作为数据库 ejs作为模板引擎  

* 前端：采用jQuery库 Bootstrap作为前端框架

## 功能

* 注册与登陆，获取代理列表并连接ssh

## 目录结构：

```
model 模块目录
---- db.js      封装了对数据库的操作（增删改查）
---- md5.js     封装了md5加密函数
---- setting.js 封装了对数据库的接口
node_modules 项目依赖包
public 静态资源目录
routers 路由目录
---- router.js  对请求接口的统一处理
views 模板目录
app.js 入口文件
package.json 文件依赖配置包
```

## 使用

##### 使用前要先安装node环境和MongoDB数据库。

第一步：

安装依赖包

```
  npm install
```

第二步：

启动MongoDB数据库（推荐使用docker）

```
docker run -itd --name mymongo -p 27017:27017 mongo:4.4
```

或者本地安装MongoDB

第三步：

```
  node app.js
```

#### 添加节点的接口

```
$.post("/addProxy", {
    "IP": "test IP",
    "port": "test Port",
    "protocol": "test protocol",
}, function (result) {
    if (result == 1) {
        console.log("添加成功！将刷新该页面");
    } else if (result == -1) {
        console.log("服务器错误！请检查服务器");
    } else {
        console.log("未知原因，添加失败！");
    }
});

```

#### 注册后台(localhost:3000/register)

#### 设置代理

运行`MyProxy.exe`（由`set_proxy.c`编译而成），根据exe中说明设置即可
