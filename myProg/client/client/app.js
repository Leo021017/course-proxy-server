/*
 * @Author: Leo
 * @Date: 2023-12-19 19:26:25
 * @LastEditTime: 2023-12-19 20:23:30
 * @FilePath: \client\app.js
 * @Description: Leo的一些没用的代码
 */
var express      = require("express");
var app          = express();
var router       = require("./routers/router.js");
var path         = require('path');
var bodyParser   = require('body-parser');
var ejs          = require('ejs');
var ueditor      = require('ueditor');
var session = require('express-session');
//require('./proxy');

//session
app.use(session({
    secret : 'keyboard cat',
    resave : false,
    saveUninitialized : true
}));


app.use(bodyParser.json());

app.use(express.static("./public"));


//模板引擎
app.set("view engine","ejs");

//首页
app.get("/",router.showIndex);

//代理列表
app.get("/proxys",router.showProxys);
app.post("/getProxy",router.getProxy);

//添加代理节点
app.post("/addProxy",router.addProxy);

//取得总页数
app.post("/getAllAmount", router.getAllAmount);

//注册页面
app.get("/register", router.showRegister);
app.post("/doRegister",router.doRegister);

//登陆页面
app.get("/login", router.showLogin);
app.post("/doLogin", router.doLogin);


console.log("服务器启动了:http://localhost:3000/login");

app.listen(3000);
