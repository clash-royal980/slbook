var express = require('express');
var memberRouter = require('./routes/member.js');
var controlRouter = require('./routes/control.js');

//创建服务器
var app = express();
app.listen(8080,()=>{
  console.log('服务器启动成功');
});
//将post请求的数据解析为对象
app.use(express.urlencoded({
	extended:false
}));

// 托管静态资源
app.use(express.static('./views'));

//配置跨域
app.all('*', function (req, res, next) {
  //允许接收不同协议，不同端口的请求
  res.header('Access-Control-Allow-Origin', '*');
  //不同方式（接收任意的请求方式，默认情况下只接收get和post）
  res.header('Access-Control-Allow-Methods', '*');
  next();
});

//挂载主页路由器，/news /control
app.use('/news',memberRouter);
app.use('/control',controlRouter);

//错误处理中间件
app.use((err,req,res,next)=>{
  console.log(err);
  res.status(500).send({code:500,msg:'服务器端错误'});
});

