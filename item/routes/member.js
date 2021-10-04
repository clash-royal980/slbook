var express = require('express');
var pool = require('../pool.js');
var router = express.Router();

//分页查询(latest_news)
router.get('/latest_news',(req,res,next)=>{
 var obj = req.query;
 console.log(obj);
 pool.query('select * from latest_news limit '+obj.start+',5',(err,data)=>{
	pool.query('select * from latest_news',(err,str)=>{
		if(err){
		  next(err);
		  return;
		}
		res.send({code:200,msg:'ok',data:data,len:str.length})
		});
	  });
});

//新闻id查询
router.get('/news_list',(req,res,next)=>{
	var obj = req.query;
	console.log(obj);
	pool.query('select * from latest_news where ln_id = ?',[obj.id],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok',data:data})
	})
})

//新闻分页查询(notice)
router.get('/notice',(req,res,next)=>{
	var obj = req.query;
	console.log(obj);
	pool.query('select * from notice limit '+obj.start+',5',(err,data)=>{
	   pool.query('select * from notice',(err,str)=>{
		   if(err){
			 next(err);
			 return;
		   }
		   res.send({code:200,msg:'ok',data:data,len:str.length})
		});
	});
});

//作者分页/模糊查询(author_vague)
router.get('/author_vague',(req,res,next)=>{
	var obj = req.query;
	console.log(obj);
	pool.query('select * from author where au_name like '+'"%'+obj.value+'%" limit '+obj.start+',4',(err,data)=>{
		pool.query('select * from author where au_name like '+'"%'+obj.value+'%"',(err,str)=>{
		   if(err){
			 next(err);
			 return;
		   }
		   res.send({code:200,msg:'ok',data:data,len:str.length})
		});
	});
});

//作者id查询
router.get('/author',(req,res,next)=>{
	var obj = req.query;
	console.log(obj);
	pool.query('select * from author where au_id = ?',[obj.id],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok',data:data})
	})
})

// pool.query('select * from book where '+ obj.value +' like '+'"%'+obj.input+'%" order by bo_name '+obj.bo_name+',bo_author '+obj.bo_author+',bo_data '+obj.bo_data +',bo_ISBN '+obj.bo_ISBN +',bo_price '+obj.bo_price +' limit '+obj.start+',18',(err,data)=>{
//图书模糊查询(all_book)
router.get('/all_book',(req,res,next)=>{
	var obj = req.query;
	var arr1=[],arr2=[];
	var sql = `select * from book where ${obj.value} like "%${obj.input}%" `;
	for(var key in obj){
		arr1.push(key);
		arr2.push(obj[key]);
	}
	console.log(obj);
	switch(arr1.length){
		case 3:
			sql +='';break;
		case 4:
			sql += `order by ${arr1[3]} ${arr2[3]}`;break;
		case 5:
			sql +=`order by ${arr1[3]} ${arr2[3]},${arr1[4]} ${arr2[4]}`;break;
		case 6:
			sql+=`order by ${arr1[3]} ${arr2[3]},${arr1[4]} ${arr2[4]},${arr1[5]} ${arr2[5]}`
			break;
		case 7:
			sql+=`order by ${arr1[3]} ${arr2[3]},${arr1[4]} ${arr2[4]},${arr1[5]} ${arr2[5]},${arr1[6]} ${arr2[6]}`
			break;
		default:
			sql+=`order by ${arr1[3]} ${arr2[3]},${arr1[4]} ${arr2[4]},${arr1[5]} ${arr2[5]},${arr1[6]} ${arr2[6]},${arr1[7]} ${arr2[7]}`;
	}
	sql+=` limit ${obj.start},18`;
	pool.query(sql,(err,data)=>{
		if(err){
			next(err);
			return;
		  }
		pool.query('select * from book where '+ obj.value +' like '+'"%'+obj.input+'%"',(err,str)=>{
		   if(err){
			 next(err);
			 return;
		   }
		   res.send({code:200,msg:'ok',data:data,len:str.length})
		});
	});
});

//图书id查询
router.get('/book_detailed',(req,res,next)=>{
	var obj = req.query;
	console.log(obj);
	pool.query('select * from book where bo_id = ?',[obj.id],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok',data:data})
	})
})
// 用户姓名查询登录
router.post('/select',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('select * from user where us_name = ?',[obj.name],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok',data:data})
	})
})
// 用户注册
router.post('/register',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('insert into user values(null,?,password(?),?,?,?,100)',[obj.name,obj.pwd,obj.add,obj.que,obj.aw],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'注册成功'})
	})
})
// 用户登录
router.post('/login',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('select * from user where us_name = ? and us_password = password(?)',[obj.name,obj.pwd],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'登录成功',data:data})
	})
})
// 用户忘记密码修改
router.post('/update',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('update user set us_password = password(?) where us_answer = ?',[obj.pwd,obj.answer],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		if (data.affectedRows === 1) {
			res.send({code: 1,message: "修改成功",data: null});
		} else {
			res.send({code: 2,message: "修改失败",data: null})
		}
	})
})
// 用户信息修改
router.post('/infoupdate',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('update user set us_address=?,us_question=?,us_answer=? where us_name = ?',[obj.add,obj.que,obj.anw,obj.name],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		if (data.affectedRows === 1) {
			res.send({code: 1,message: "修改成功",data: null});
		} else {
			res.send({code: 2,message: "修改失败",data: null})
		}
	})
})
//用户密码修改
router.post('/pwdupdate',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('update user set us_password=password(?) where us_name = ? and us_password=password(?)',[obj.newpwd,obj.name,obj.oldpwd],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		if (data.affectedRows === 1) {
			res.send({code: 1,message: "修改成功",data: null});
		} else {
			res.send({code: 2,message: "修改失败",data: null})
		}
	})
})
//用户购物车添加数据
router.post('/usershop',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('select * from user_shop where us_name = ? and bo_id = ?',[obj.usname,obj.id],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		if(data.length==0){
			pool.query('insert into user_shop values(null,?,?,?,?,?,"1",?) ',[obj.usname,obj.id,obj.pic,obj.bna,obj.bau,obj.bpr],(err,data)=>{
				if(err){
					next(err);
					return;
				}
			res.send({code:200,msg:'插入成功',data:data})
			})
		}else{
			pool.query('update user_shop set bo_sum = bo_sum+1 where us_name = ? and bo_id = ?',[obj.usname,obj.id],(err,data)=>{
				if(err){
					next(err);
					return;
				}
			res.send({code:200,msg:'修改成功',data:data})
			})
		}
	})
	
})
//用户购物车数据显示
router.get('/shop_display',(req,res,next)=>{
	var obj = req.query;
	console.log(obj);
	pool.query('select * from user_shop where us_name = ?',[obj.name],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok',data:data})
	})
})
//用户购物车删除所有数据
router.post('/deleteall',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('delete from user_shop where us_name = ?',[obj.name],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok'})
	})
})
//用户购物车购买数量修改
router.post('/updateshop',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('update user_shop set bo_sum = ? where up_id = ?',[obj.value,obj.id],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok'})
	})
})
//用户购物车删除指定商品
router.post('/deleteshop',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('delete from user_shop where up_id = ?',[obj.id],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok'})
	})
})
// 用户余额变换
router.post('/selmoney',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('update user set us_price = us_price - ? where us_price > ? and us_name = ?',[obj.money*1,obj.money*1,obj.name],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		if (data.affectedRows === 1) {
			pool.query('delete from user_shop where us_name = ?',[obj.name],(err,data)=>{
				if(err){
					next(err);
					return;
				}
			})
			res.send({code: 1,message: "购买成功",data: null});
		} else {
			res.send({code: 2,message: "余额不足",data: null})
		}
	})
})
// 用户购物车订单提交
router.post('/inserorder',(req,res,next)=>{
	var obj = req.body;
	console.log(obj);
	pool.query('insert into user_order(uo_id,us_name,bo_id,bo_pic,bo_name,bo_author,bo_price,bo_sum,uo_money,bo_status) select null,?,?,bo_pic,bo_name,bo_author,bo_price,bo_sum,bo_sum*bo_price,"待发货" from user_shop where bo_id=? and us_name=?',[obj.uname,obj.bid,obj.bid,obj.uname],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok'})
	})
})
//用户订单列表
router.get('/shop_order',(req,res,next)=>{
	var obj = req.query;
	console.log(obj);
	pool.query('select * from user_order where us_name = ?',[obj.name],(err,data)=>{
		if(err){
			next(err);
			return;
		}
		res.send({code:200,msg:'ok',data:data})
	})
})
module.exports = router;

