// 安装express框架使用路
const express = require('express')
const fs = require('fs')
// 生成express路由实例
const path = require('path')
// 将路由实例配置到http创建的服务器中
// const http = require('http')
// const server = http.createServer(app)    //由于express框架是基于http模块进行封装的,所以直接使用express实例即可
const app = express()
const bodyParser = require("body-parser");

//路由白名单
const whiteRouteList = ['/user/userLogin']          //定义路由白名单
/**
 * 全局异常处理
 */
require("express-async-errors");
const ResultJson = require("./model/ResultJson.js")
app.use((error,req,resp,next) => {
    console.log(error);
    resp.status(500).json(new ResultJson(error,"数据请求失败",false));
    next();
})


/**
 * 使用bodyParser解析路由res.body,  此配置必须要在路由配置之前!!!
 */
app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json({limit:"30mb"}));
// 创建静态区域
app.use('/userPhoto',express.static(path.join(__dirname,'./userPhoto')));
/**
// 同源策略限制了响应,需要设置响应头  ,设置响应头必须在设置请求发送之前!!!
 */
// 通过app.use方法使用请求拦截器,在请求拦截器中设置响应头,必须要使用next函数继续执行
app.use((req,res,next)=>{
  res.header("Access-control-Allow-Origin","*")
  res.header("Access-control-Allow-Methods","GET,POST,DELETE,PUT,OPTIONS")
  res.setHeader("Access-control-Allow-Headers","token")
  next()
})


/**
 * 导入路由模块
 */
app.use('/user',require('./routes/users'))
app.use('/todoList',require('./routes/todolist'))
app.use('/student',require('./routes/student'))
// 使用路由白名单
app.use((req,res,next)=>{
  console.log('这是拦截部分',req.path);
  if(whiteRouteList.includes(req.path)){
    next()
  }else{
    if(req.method.toUpperCase()=='OPTIONS'){
      next()
    }
  }
})
app.listen(8081,'0.0.0.0',()=>{
  console.log('服务器启动');
  // 定期删除生产的excel文件
  const deleteExcelFile = () => {
    let excelDirPath = path.join(__dirname,"./excelDir");
    let arr = fs.readdirSync(excelDirPath);
    for(let item of arr){
        let fileCreateTime = item.split("-")[0];
        if(Date.now() - fileCreateTime > 1000 * 60 * 30){
            fs.unlinkSync(path.join(excelDirPath,item));
        }
    }
}
setInterval(deleteExcelFile,1000 * 60 * 30);
})