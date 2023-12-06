// 此处创建一个工厂，将服务类批量生成实例，并导出，方便使用
const  path = require('path')
// 读取文件并根据文件信息进行导出
const  fs = require('fs')
// 创建服务工厂
const  serverFactory = (()=>{
  let obj = {}   //将实例存到对象中，通过属性调用方法比较方便
  // 读取servers中的文件
  let arr = fs.readdirSync(path.join(__dirname,'../services'))
  // 根据数组中的信息创建服务实例
  // 遍历文件中的类，动态生成实例
  for(let item of arr){
    // 拿到js后缀，替换为空
    const itemNoext = item.replace('.js','')
    // 通过处理过后的名字生成实例
    let itemReturn = require(path.join(__dirname,'../services',item))
    if(typeof itemReturn == 'function'){
      // 如果是一个构造函数就直接创建实例
      // obj[itemNoext]=new itemReturn()
      obj[itemNoext]= Reflect.construct(itemReturn,[])
    }
  }
  return obj
})() 
 //立即执行函数，被显示调用时立即执行
// 此时立即执行函数返回了一个对象，通过对象的方法可以调用到服务文件夹中所有的服务
module.exports = serverFactory