// 创建一个路由，用于分发
const express = require('express')
const router = express.Router();
const servicesObj = require('../utils/factory.js')
const ResultJson = require('../model/ResultJson.js')

router.post('/get',async(req,res)=>{
  try{
    // 前端请求路径时需要将用户名和密码存到请求体中 
    let result=await servicesObj.todolistService.findTodoListByOwner(req.body); 
    res.json(new ResultJson(result))
    res.end()
  }catch(err){
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
router.post('/new',async(req,res)=>{
  try{
    // 前端请求路径时需要将用户名和密码存到请求体中 
    let result=await servicesObj.todolistService.newTodoList(req.body); 
    res.json(new ResultJson(result))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
router.post('/edit',async(req,res)=>{
  try{
    // 前端请求路径时需要将用户名和密码存到请求体中 
    let result=await servicesObj.todolistService.editTodoList(req.body); 
    res.json(new ResultJson(result))
    res.end()
  }catch(err){
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})

router.post('/delete',async(req,res)=>{
  try{
    // 前端请求路径时需要将用户名和密码存到请求体中 
    let result=await servicesObj.todolistService.deleteTodoList(req.body); 
    res.json(new ResultJson(result))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})

module.exports = router