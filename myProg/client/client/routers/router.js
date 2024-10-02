var formidable = require('formidable');
var db = require("../model/db.js");
var md5 = require("../model/md5.js");
var fs = require("fs");
var moment = require('moment');
var MongoClient = require('mongodb').MongoClient, test = require('assert');


//首页
exports.showIndex = function (req,res,next) {
    res.render("index");
};


//代理节点界面
exports.showProxys = function (req, res, next) {
    res.render("proxys");
}

//添加代理
exports.addProxy = function (req, res, next ){
    var form = new formidable.IncomingForm();
    form.parse(req, function (err, fields) {
        db.getAllCount("proxys", function (count) {
            var allCount = count.toString();
            var date = moment(new Date()).format('YYYY-MM-DD HH:mm:ss');
            //写入数据库
            db.insertOne("proxys", {
                "ID" : parseInt(allCount) + 1,
                "IP" : fields.IP,
                "port" : fields.port,
                "protocol" : fields.protocol,
                "date" : date,
            },function (err, result) {
                if(err){
                    res.send("-1");
                    return;
                }
                res.send("1");
            });
        });
    });
}

//取得代理
exports.getProxy = function (req, res, next) {
    var page = req.query.page;
    db.find("proxys",{},{"pageamount":10,"page":page,"sort":{"date":-1}}, function (err, result) {
        // console.log("res:",result)
        var obj = {"allResult" : result};
        res.json(obj);
    });
};

//取得总页数
exports.getAllAmount = function (req, res, next) {
    db.getAllCount("proxys", function (count) {
        res.send(count.toString());
    });
};


//注册页面
exports.showRegister = function (req, res ,result) {
    res.render("register");
};
//执行注册
exports.doRegister = function (req, res, result) {
    //得到用户填写的东西
    var form = new formidable.IncomingForm();
    form.parse(req, function (err, fields, files) {
        //得到表单之后做的事情
        var username = fields.username;
        var password = fields.password;
        var md5PassWord = md5(md5(password).substr(4,7) + md5(password));
        db.insertOne("user",{
            "username" : username,
            "password" : md5PassWord
        },function(err,result){
            if(err){
                res.send("-3");//服务器错误
                return;
            }
            req.session.login = "1";
            res.send("1");//注册成功，写入SESSION
        });
    });
};

//登陆页面
exports.showLogin = function (req, res ,result) {
    res.render("login");
};

//执行登陆
exports.doLogin = function (req, res, result) {
    //得到用户填写的东西
    var form = new formidable.IncomingForm();

    form.parse(req, function(err, fields, files) {
        var username = fields.username;
        var password = fields.password;
        password = md5(md5(password).substr(4,7) + md5(password));

        //检索数据库，按登录名检索数据库，查看密码是否匹配
        db.find("user",{"username":username},function(err,result){
            if(err){
                res.send("-3");//服务器错误
                return
            }
            if(result.length == 0){
                res.send("-1");  //-2没有这个人
                return;
            }
            var dbpassword = result[0].password;
            //要对用户这次输入的密码，进行相同的加密操作。然后与
            //数据库中的密码进行比对
            if(password == dbpassword){
                req.session.login = "1";
                res.send("1");  //登陆成功
                return;
            }else{
                res.send("-2"); //密码不匹配
            }
        });
    });

    return;
};





