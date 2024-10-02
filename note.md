## 如何使用HTTP代理访问HTTPS网站？

我们在访问HTTPS网站的时候，第一步并不是准备好请求的文本，而是先与网站服务器进行HTTPS握手。这个握手过程必须有HTTPS网站服务器的私钥参与，而代理服务器并不拥有这个私钥，因此这个握手无法由代理服务器代为建立。

在通过代理服务器访问HTTPS网站的过程中，代理服务器所扮演的角色仅仅是转发TCP数据（在访问HTTP网站的时候，代理服务器转发的是HTTP数据）。

在使用代理服务器的情况下，一个完整HTTPS请求要经历如下几个步骤：

1. 首先用户向代理服务器发起`CONNECT`请求
2. 代理服务器解析`CONNECT`请求，向网站服务器建立TCP连接，但是并不发送任何数据
3. 代理服务器向用户返回数据，表示TCP连接已经建立了，此后代理服务器就只负责数据的转发，代理服务器看到的数据是加密之后的，无法查看原始数据或者对数据进行修改
4. 然后用户和网站服务器建立HTTPS握手
5. 之后用户和网站服务器之间的流程与一般的HTTP请求流程完全相同

用图片来描述的话如下：

<img src="https://pic1.zhimg.com/80/v2-a62100aa457d749d6481552f6cf0e398_1440w.webp" alt="img" style="zoom:70%;" />

使用代理访问HTTPS网站的流程图

我们可以做个实验来验证代理服务器的`CONNECT`阶段。

首先准备一个`connect.txt`文件，里面的内容是：

```text
CONNECT www.baidu.com:443 HTTP/1.1
Host: www.baidu.com:443
```

**依然要注意文件的最后有一个空白行。**

然后使用`nc`命令将这些内容发送给`tinyproxy`：

![动图](https://blog-leo021017.oss-cn-beijing.aliyuncs.com/img/v2-62bf879a9f2e14fb49fa6c5afc0ef3f7_b.webp)

CONNECT阶段

可以看到，`tinyproxy`在和百度建立了TCP连接之后，向我们返回了`Connection established`信息，这表示我们可以进行HTTPS握手了。