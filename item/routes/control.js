var express = require('express');
var pool = require('../pool.js');
var router = express.Router();

//管理员登录
router.post('/adlogin',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('select * from ad_login where ad_name = ? and ad_password = password(?)',[obj.name,obj.pwd],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'登录成功',data:data})
	})
})
//查询所有图书(模糊)
router.get('/select_book',(req,res,next)=>{
	var obj = req.query;
	console.log(obj);
	pool.query('select * from book where bo_name like "%'+obj.input+'%" or bo_author like "%'+obj.input+'%"',(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok',data:data})
	})
});
// 删除图书(单)
router.post('/deletebook',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query(`delete from book where bo_id = ${obj.id}`,(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok'})
	})
})
// 删除图书(多)
router.post('/doubook',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query(`delete from book where bo_id in${obj.str}`,(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok'})
	})
})
//查询所有图书
router.get('/upd_book',(req,res,next)=>{
	var obj = req.query;
	console.log(obj);
	pool.query('select * from book',(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok',data:data})
	})
});
// 更新图书
router.post('/updbook',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query(`update book set bo_name=?,bo_author=?,bo_edit=?,bo_price=? where bo_id = ?`,[obj.bookname,obj.authorname,obj.edit,obj.price,obj.id],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok'})
	})
})
// 订单查询
router.get('/orderlist',(req,res,next)=>{
	// var obj = req.query;
	// console.log(obj);
	pool.query('select * from user_order',(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok',data:data})
	})
});
// 修改订单
router.post('/updorder',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query(`update user_order set bo_status= "已发货" where uo_id = ?`,[obj.uo_id],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok'})
	})
})
// 删除订单
router.post('/delorder',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query(`delete from user_order where uo_id = ?`,[obj.uo_id],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok'})
	})
})
// 用户
router.get('/userlist',(req,res,next)=>{
	// var obj = req.query;
	// console.log(obj);
	pool.query('select * from user',(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok',data:data})
	})
});
// 删除用户
router.post('/deluser',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query(`delete from user where us_id = ?`,[obj.id],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok'})
	})
})
// 添加用户
router.post('/adduser',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('insert into user values(null,?,password("123456"),?,?,?,?)',[obj.usname,obj.usaddress,obj.usque,obj.usans,obj.usmon*1],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'添加成功'})
	})
})
// 管理员
router.get('/adminlist',(req,res,next)=>{
	// var obj = req.query;
	// console.log(obj);
	pool.query('select * from ad_login',(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok',data:data})
	})
});
// 添加管理员
router.post('/addadmin',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('insert into ad_login values(null,?,password(?),?)',[obj.adname,obj.adpassword,obj.adpower],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'添加成功'})
	})
})
// 删除管理员
router.post('/deladmin',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query(`delete from ad_login where ad_id = ?`,[obj.id],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok'})
	})
})
module.exports = router;

