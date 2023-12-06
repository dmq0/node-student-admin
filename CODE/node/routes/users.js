// 创建一个路由，用于分发
const express = require('express')
const router = express.Router();
const servicesObj = require('../utils/factory.js')
const ResultJson = require('../model/ResultJson.js')
const path = require('path')
const fs = require('fs')
const iconv = require('iconv-lite');
// multer工具包用于上传文件（express默认不允许上传文件）
const multer = require('multer')
const upload = multer({
  // 设置目录
  dest:path.join(__dirname,'../userPhoto')
})

router.post('/userPhoto',upload.single("userPhoto"),(req,res)=>{
   //text/plain是普通文本
   res.setHeader('Content-Type','text/plain; charset=utf-8');
  let file = req.file;
  if(file){
    // 如果上传过来文件，就重新命名文件
    fs.renameSync(file.path,file.path+file.originalname)
    // 像前端返回图片的路径，通过路径使用图片
    res.json(new ResultJson(`/userPhoto/${file.filename+file.originalname}`,"文件上传成功",'success'))
  }
})
router.post('/userLogin',async(req,res)=>{
    // 前端请求路径时需要将用户名和密码存到请求体中 
    let result=await servicesObj.userService.findUserByPassword(req.body); 
    if (result) {
     const jwt = require('jsonwebtoken')
     let jwtKey = 'sdjafj1'
     let token = jwt.sign({
      userInfo:result
     },jwtKey,{
      expiresIn:60 * 30  //这里是以秒为单位的，访问或刷新重新计时
     }) 
    // res.json(new ResultJson(token))
    res.json({
      status:'success',
      msg:'成功',
      userInfo:result,
      data:token,
    })
    res.end()
    }else{
      res.json(new ResultJson('err','请求失败',false))
    }
})

router.get('/allUsers',async(req,res)=>{
  try {
  let result = await servicesObj.userService.allUsers();
    res.json(new ResultJson(result,'请求成功','success'))
    res.end()
  } catch (error) {
    res.status(500).json(new ResultJson(err,'请求失败',false))
  }  
})

router.post('/limit',async(req,res)=>{
  try{
    let result = await servicesObj.userService.limit(req.body);
    res.json(new ResultJson(result,'请求成功','success'))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
module.exports = router