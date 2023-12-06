// 导入express，通过express创建路由
const express = require('express')
const router = express.Router();
// 继承于基本服务类
const servicesObj  = require('../utils/factory')
// 拿到返回的模板
const ResultJson = require('../model/ResultJson')
const ExcelUtils = require('../utils/ExcelUtils')
router.get('/getStudents',async(req,res)=>{
  try{
    let result=await servicesObj.studentService.getStudentByPage(req.query); 
    res.json(new ResultJson(result))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
router.get('/getTotal',async(req,res)=>{
  try{
    let result=await servicesObj.studentService.getTotal(); 
    res.json(new ResultJson(result))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})

router.get('/addStudent',async(req,res)=>{
  try{
    let result=await servicesObj.studentService.addStudent(); 
    res.json(new ResultJson(result))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
router.get('/searchstudent',async(req,res)=>{
  try{
    let result=await servicesObj.studentService.searchStudent(req.query); 
    res.json(new ResultJson(result))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
/**
 * 显示编辑学生信息（通过id）
 */
router.get('/editstudent',async(req,res)=>{
  try{
    let result=await servicesObj.studentService.getStudentById(req.query); 
    res.json(new ResultJson(result))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
/**
 * 修改学生信息
 */
router.post('/editStudent',async(req,res)=>{
  try{
    let result=await servicesObj.studentService.editStudent(req.body); 
    res.json(new ResultJson(result,"请求成功",'success'))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
/**
 * 新增学生
 */
router.post('/addNewStudent',async(req,res)=>{
  try{
    let result=await servicesObj.studentService.addStudent(req.body); 
    res.json(new ResultJson(result,"请求成功",'success'))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
/**
 * 删除学生
 */
router.get('/deletestudent',async(req,res)=>{
  try{
    let result=await servicesObj.studentService.deleteStudentById(req.query); 
    res.json(new ResultJson(result,'请求成功','success'))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
/**
 * excel导出
 */
router.get('/exportExcel',async(req,res)=>{
  let result = await servicesObj.studentService.exportExcel(); 
  let excelPath = ExcelUtils.resultsToExcel(result);
    if(excelPath){
        res.sendFile(excelPath);
    }else{
        res.status(500).json(new ResultJson('',"excel没有数据，不能下载",false))
    }
})
router.post('/excelData',async(req,res)=>{
  try{
    let result=await servicesObj.studentService.importExcel(req.body.data); 
    res.json(new ResultJson(result,'请求成功','success'))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})

module.exports = router
