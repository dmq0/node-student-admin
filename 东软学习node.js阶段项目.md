# node.js全栈项目

## 一、项目简述

采用于学校有关的偏向后台的项目

## 二、项目工具

①使用bootstrap加上jquery配合message和template-web工具构造静态页面

注意**jquery封装的Ajax方法会自动将返回的json格式数据进行序列化。**

template  使用文档：https://blog.csdn.net/qq_33429583/article/details/79678443?spm=1001.2101.3001.6650.4&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-4-79678443-blog-82557519.235%5Ev38%5Epc_relevant_sort_base3&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-4-79678443-blog-82557519.235%5Ev38%5Epc_relevant_sort_base3&utm_relevant_index=5

https://blog.csdn.net/qq_30258957/article/details/82557519

message使用文档：https://blog.csdn.net/u012131025/article/details/118085164?ops_request_misc=%257B%2522request%255Fid%2522%253A%2522170106148916800213045575%2522%252C%2522scm%2522%253A%252220140713.130102334..%2522%257D&request_id=170106148916800213045575&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~baidu_landing_v2~default-1-118085164-null-null.142^v96^control&utm_term=message.js%E7%94%A8%E6%B3%95&spm=1018.2226.3001.4187



②使用node.js中的express框架进行路由的分发、http模块创建http服务，通过mysql模块工具连接数据库，并使用其方法用sql语句进行查询要拿到post请求中的数据需要一个工具包：body-parser

③多页面开发，单页面形式展示

全部页面的跳转直接整页跳转即可，如果要使用部分区域的跳转，要使用内联标签

< iframe src="" name="fm" frameborder="0"></ iframe>

当点击`<a href=" " target="fm"> </a>`

标签时，只会替换跳转iframe页面，而非整个网页

④打算在[shepherd.js](https://link.juejin.cn/?target=https%3A%2F%2Fgithub.com%2Fshipshapecode%2Fshepherd)和[driver.js](https://link.juejin.cn/?target=https%3A%2F%2Fgithub.com%2Fkamranahmedse%2Fdriver.js)中选择一个进行功能指导方面的展示

⑤国际化准备采用i18n工具包，或者自己手动执行



## 三、创建数据库



## 四、静态页面的制作

## 五、跨域问题

可以在后端采用设置响应头CORS 的方式，非常简单但是存在弊端

这里准备采用直接在同一个端口号进行前后端的布局，这样使得后端数据更加安全，不会被恶意请求或修改

## 六、逻辑删除（软删除）

①所有的表中都添加上一个字段为isDel，数据类型是tinyint(1) ,设置默认值为0，

②查找表时，只会查找到isDel为0 （false）的数据,

（通过sql中嵌入`select * from 表名  where isDel = false and  ......`）

③删除数据时将默认的0改为1即可,

（通过sql中嵌入`update 表名  set  isDel = true where id = ? `）

## 七、消息弹窗

普通消息弹窗使用message工具包，但是有删除时的确定弹窗需要自己手动封装

## 八、excel导出

①后端导出excel文件，发送给前端，这样后端的excel需要定时清理 。

npm i node-xlsx --save 安装xlsx包，进行使用。（  后端的工具：node-xlsx ）

②前端导出excel文件，这样只会在前端生成excel文件

npm install xlsx --save-dev安装包 ，进行使用 （   前端的工具：js-xlsx  ）

https://juejin.cn/post/7003153489920524301 观看使用

https://docs.sheetjs.com/#sheetjs-js-xlsx官网

## 九、excel导入

https://juejin.cn/post/6998000575203770376

## 十、全局异常处理  

如果不进行全局异常的捕获，则需要使用很多try ...  catch的异常捕获，现在使用express的插件进行全局捕获

安装：`npm  i   express-async-errors   --save`

使用： 

```js
require('express-async-errors')
结尾处使用：app.use(error,req,res,next)=>{
    cosole.log(err)       //真正项目中将err写入错误日志
    res.status(500).json(new ResultJson(false,'失败',error));
}
```

十一、返回数据时，统一使用ResultJson中设置的数据结构来进行处理，返回的数据根据数据结构进行统一的返回。

## 十一、Count.up 加上 Echarts展示数据

学校模块展示基本信息

## 十一、地图展示学校地址

采用百度地图的map，开发者注册已通过，配合echarts进行使用

## 十二、静态图片的存储

存储在腾讯云服务器中，已申请创建

https://console.cloud.tencent.com/cos

或是存在本地服务端的静态资源文件夹中

## 十三、上传头像功能

https://blog.csdn.net/qq_42780323/article/details/105417168#:~:text=%E7%94%A8%E5%8E%9F%E7%94%9Fjs%E5%AE%9E%E7%8E%B0%E4%B8%8A%E4%BC%A0%E5%A4%B4%E5%83%8F%EF%BC%8C%E5%8E%9F%E7%90%86%E6%98%AF%E9%80%9A%E8%BF%87new%20FileReader,%28%29%3B%E5%B0%86%E5%9B%BE%E7%89%87%E8%BD%AC%E6%8D%A2%E6%88%90base64%E6%A0%BC%E5%BC%8F%E7%9A%84%E4%B8%80%E9%95%BF%E4%B8%B2%E5%AD%97%E7%AC%A6%E4%B8%B2%E3%80%82%20%E5%B0%86%E5%AD%97%E7%AC%A6%E4%B8%B2%E6%8F%90%E4%BA%A4%E7%BB%99%E5%90%8E%E5%8F%B0%E5%8D%B3%E5%8F%AF%E3%80%82%20%E5%B0%B1%E6%98%AF%E8%BF%99%E4%B8%AA%E5%AD%97%E7%AC%A6%E4%B8%B2%E4%BB%A3%E6%9B%BFimg%E8%B7%AF%E5%BE%84src%E5%AE%9E%E7%8E%B0%E5%9B%BE%E7%89%87%E6%98%BE%E7%A4%BA%E3%80%82

处理拖拽效果

**文件的上传必须要使用表单域标签中进行**，可以采用new  FormData()创建一个表单域，用formData实例的.append方法添加一个文件，第一个参数是名称，第二个参数是文件

```js
<input accept="image/*" type="file"  />
```

接受image类型的格式

**dom元素的value属性获取的是路径，dom元素的 .files获取的是文件数组，.files[0]获取第一个**

express默认不允许上传文件，需要第三方包multer的支持

`        npm  i  multer  --save  `            

https://blog.csdn.net/my_new_way/article/details/105008163

**图片存在后端的图片文件夹中**，**需要express框架的静态服务器技术**

```js
app.use('/Photo',express.static(path.join(__dirname,'./Photo')))
```

将/photo下的请求设置为了静态资源的请求，这个时候当前端发送请求时，不会经过路由的处理，而是直接会请求到服务端的文件

（如果不加静态资源，则请求的是一个带有图片名的url请求,但是服务端不可能根据每一个图片都设置一个路由，所以设置为静态资源，直接访问）

## 十四、权限受控管理

通过用户 - 角色 -- 权限  进行控制，这是一种设计模式的思想。便于路由处理

## 十五、动态路由

通过权限设置动态路由

## 十六、拖拽尾部动效

## 十七、tags标签列表

## 十八、省市区三级联动

表单进行注册，上传数据前进行校验

## 十九、进度条

https://blog.csdn.net/weixin_62277266/article/details/125353095?ops_request_misc=%257B%2522request%255Fid%2522%253A%2522170108310816800222869256%2522%252C%2522scm%2522%253A%252220140713.130102334..%2522%257D&request_id=170108310816800222869256&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~sobaiduend~default-1-125353095-null-null.142^v96^control&utm_term=%E8%BF%9B%E5%BA%A6%E6%9D%A1%E7%BB%84%E4%BB%B6&spm=1018.2226.3001.4187

## 二十、MD5密码加盐

`   npm i md5  --save   ` 

使用：

```js
const = require('md5-node');
console.log(md5('哈哈哈哈哈哈哈'))
```

**密码加盐**：

但是还是有一些网站可以解密出MD5，所以要对密码进行**加盐**（将密码和加盐字符串进行拼接，加盐字符串一般是一中无规则的字符串，加强安全性）

## 二十一、登录模块滑块

jquery滑块用于登录验证（ ）

## 二十三、http请求体和请求头

http协议：现在流行的B/S ，开发架构里，数据的交互多半是采用http或者https来进行传输的，通过使用这种协议进行传输时，会产生一个会话**session**，这个会话中有**request**和**response**，这个会话session就是**数据传递的载体**，实际的**请求内容存在请求体**中，请求时和响应时都是先发送 **头** 再发送 **体** 

## 二十四、JWT身份鉴权

①在AppConfig.js中设置排除拦截的路径，和不会被拦截的路径（**路由白名单**）

②放开预检请求，ajax请求涉及到跨域，浏览器对所有的跨域请求都会执行一个预检请求（options类型），对于这个请求需要进行放行   

```js
app.use((req,res,next)=>{
    let pathValidata = Appconfig.excludePath.some(item=>item.test(req.path));
    if(pathValidata){
        next()
    }else{
        if(req.method.toUpperCase()=='OPTIONS'){
            next()
        }
    }
})
```

③发送token令牌

使用第三包：jsonwebtoken

`            npm  i  jsonwebtoken   --save     `

当登录成功之后发送token，因为token是私密的，所以也需要进行加盐处理，使用：

```js
router.post('/login',async(req,res)=>{
    let result = await serviceFactory.adminInfoService.checkLogin(req.body);
    if(result){
    const jwt = require('jsonwebtoken')
    let jwtKey = '.....'
    let token = jwt.sign({
        adminInfo:result
    },AppConfig.jwtKey,{
        expiresIn:60 * 30 //令牌过期时间，以秒为单位，访问页面或刷新页面会重新计时
    })
    res.json(new ResultJson(true,'登陆成功',token))
    }else{ res.json(new ResultJson(false,'登录失败'))}
})
```

现在前端页面访问时就会得到一个token , 在res的data中 ， 现在应该将token写入到请求头中，请求头验证通过。请求体就不会再进行验证了。

1、首先将token存到会话中

```js
sessionStorage.setItem('login_token',res.data);
```

2、为ajax的每次请求都携带token （前端设置）

在base.js文件的$.ajax方法中用beforeSend钩子，钩子函数中的参数是xhr对象，设置请求头通过`xhr.setRequestHeader('login_token',login_token)`

```js
$.ajax({
        url:baseURL + url,
        methods:'get',
        data:data,
        success:function (res) {
          resolve(res)
        },
        error:function (error) {
          reject(error)
        },
        beforeSend:function (xhr) {
          let login_token=sessionStorage.getItem('login_token');
          // 登录请求不需要token令牌
         if(login_token){
          xhr.setRequestHeader('login_token',login_token)
         } 
        }
      })
```

3、后端跨域问题中的相应拦截器中设置响应头，只允许对携带了token的请求进行响应

```js
// 通过app.use方法使用请求拦截器,在请求拦截器中设置响应头,必须要使用next函数继续执行
app.use((req,resp,next)=>{
      resp.setHeader("Access-control-Allow-Origin","*")
      resp.setHeader("Access-control-Allow-                                                    Methods","GET,POST,DELETE,PUT,OPTIONS")
      resp.setHeader("Access-control-Allow-Headers","login_token")
      next()
})
```

需要注意的是：请求拦截器一定要写在路由接受（app.use）之前。

4、通过jwt的verify方法进行解密

```js
app.use((req,resp,next) => {
    let pathValidata = AppConfig.excludePath.some(item => item.test(req.path));   //此处白名单写的是正则表达式
    if(pathValidata){
        next()
    }else{
        if(req.method.toUpperCase() == "OPTIONS"){
            next();
        }else{
            let token = req.headers.login_token;
            if(token){
                jwt.verify(token,AppConfig.jwtKey,(error,decoded) => {
                    if(error){
                        resp.status(403).json(new ResultJson(false,"当前token无效"))
                    }else{
                        console.log("当前解密以后的结果是");
                        console.log(decoded)
                        next();
                    }
                })
            }
        }
    }
})
```

### 前端拦截

**ajax响应拦截**

在上面的请求过程中，我们的每一次请求都会携带token到服务器，如果验证通过了就会得到撒护具，通过返回403状态，所以403一定是没有权限的，而ajax请求中只有200的状态码算成功，其他的都可以算错，所以我们可以通过这个特点在ajax的响应做一次拦截

```js
var request = {
    get:function(url,data){
        return new Promise(function(resolve,reject){
            $.ajax({
                url:baseURL + url,
                method:'get',
                data:data,
                success:function(res){
                    resolve(res)
                },
                error:function(error){
                    if(error.status == 403){      //状态403表示没有权限
                        location.replace("./login.html");
                    }else if(error.status==404){   //404表示没有页面
                        location.replace('./404.html')
                    }
                    reject(error)
                },
                beforeSend:function(xhr){
                    var rental_house_token = sessionStorage.getItem("rental_house_token");
                    if(rental_house_token){
                        xhr.setRequestHeader("rental_house_token",rental_house_token)
                    }
                    
                }
            })
        })
        
    },
    post:function(url,data){
        return new Promise(function(resolve,reject){
            $.ajax({
                url:baseURL + url,
                method:'post',
                data:data,
                success:function(res){
                    resolve(res)
                },
                error:function(error){
                    if(error.status == 403){
                        location.replace("./login.html");
                    }
                    reject(error)
                },
                beforeSend:function(xhr){
                    var rental_house_token = sessionStorage.getItem("rental_house_token");
                    if(rental_house_token){
                        xhr.setRequestHeader("rental_house_token",rental_house_token)
                    }
                }
            })
        })
    }
}
```

### 后端拦截

在后端拦截器设置如下

```js
if(token){
    jwt.verify(token,AppConfig.jwtKey,(error,decoded) => {
        if(error){
            resp.status(403).json(new ResultJson(false,"当前token无效"))
        }else{
            next();
        }
    })
}else{
    resp.status(403).json(new ResultJson(false,"当前token无效"))
}
```

## 二十五、退出登录

## 二十六、404页面

https://blog.csdn.net/wangshang1320/article/details/86074680?ops_request_misc=%257B%2522request%255Fid%2522%253A%2522170109368116800213078456%2522%252C%2522scm%2522%253A%252220140713.130102334..%2522%257D&request_id=170109368116800213078456&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~baidu_landing_v2~default-1-86074680-null-null.142^v96^control&utm_term=express404%E8%B7%AF%E7%94%B1&spm=1018.2226.3001.4187

# 

# 

# 

# 

# 

# 

# 总结：

**node后端**

总结:server是http.createServer创建的服务器,用于监听域名和端口

app是通过express创建的服务实例,

通过路由实例的use方法可以监听到http创建的server服务器中中启动的请求路径

(前提是创建http服务器时,要将路由实例挂载到server中),app.use中第二个参数是router实例

router实例通过express.Router创建,创建的路由实例需要挂载到服务实例上才能使用,

router.get('路由路径',(req,res)=>{.....})  

此时通过服务实例监听的一级路径加上路由实例监听的二级路径可以访问数据

# node.js搭建后台服务

通过node.js搭建服务本质上是通过express框架创建一个路由实例，用于监听http服务的端口，然后通过端口的不同页面使用mysql服务处理数据，进行分发

###### 1、创建路由实例

```js
const express = require('express')
const app = express()
const bodyParser = require('body-parser');  // 处理post请求中放在req.body中的数据
const ResultJson = require("./model/ResultJson.js")  //导入返回的数据模板
app.use((error,req,resp,next) => {         //路由中间件
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
// 同源策略限制了响应,需要设置响应头  ,设置响应头必须在设置请求发送之前!!!
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
//路由白名单
const whiteRouteList = ['/user/userLogin']   
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
})
```

###### **2、创建返回模板**

创建返回数据的模板，（类，返回数据时new一个类实例，进行返回）

```js
// 封装一个基本的响应格式,返回数据的模板
class ResultJson{
  constructor(){
    if(arguments.length>1){
      this.status = arguments[2]
      this.msg = arguments[1]
      this.data=arguments[0]
    }else{
      this.status = arguments[0].length ? "success" : "fail";
      this.msg = arguments[0].length ? "成功" : "服务器错误";
      this.data = arguments[0];
    }
      
  }
}
module.exports = ResultJson;

// 暴露出一个类，使用时创建一个实例进行返回 ，例如：
// res.status(500).json(new ResultJson(false,'数据请求失败',error))
```

###### **3、路由模块**

**通过`express.Router()` 方法 创建路由模块，（student.js为例）**

```js
const express = require('express')
const router = express.Router()
// 继承于基本服务类
const servicesObj  = require('../utils/factory')
// 拿到返回的模板
const ResultJson = require('../model/ResultJson')
//   通过rotuer.get()  用get方法监听二级路由页面
router.get('/getStudents',async(req,res)=>{
  try{
    // 其中使用服务工厂，动态创建服务实例，调用服务实例的方法用sql语句操作数据库
    let result=await servicesObj.studentService.getStudentByPage(req.query); 
    res.json(new ResultJson(result))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
//    通过router.post()  用post方法监听二级路由页面
router.post('/editStudent',async(req,res)=>{
  try{
      //其中使用服务工厂，动态创建服务实例，调用服务实例的方法用sql语句操作数据库
    let result=await servicesObj.studentService.editStudent(req.body); 
    res.json(new ResultJson(result,"请求成功",'success'))
    res.end()
  }catch(err){
    console.log(err);
    res.status(500).json(new ResultJson(err,"请求失败",false))
  }
})
module.exports = router  //导出路由模块
```

###### **4、服务工厂**

**创建服务工厂，动态创建服务实例**

在utils文件夹下新建factory.js文件，使用立即执行函数，当被调用时，动态创建服务实例存到工厂对象中，读取services（sql服务）文件夹下的所有文件，暴露出去，当使用服务时，直接通过调用对象的属性进行使用。

```js
// 此处创建一个工厂，将服务类批量生成实例，并导出，方便使用
const  path = require('path')
// 读取文件并根据文件信息进行导出
const  fs = require('fs')
// 创建服务工厂
const serverFactory = (()=>{
let obj = {}  //设置对象，将生成的服务实例放到对象中
let arr = fs.readdirSync(path.join(__dirname,'../services'))  //读取服务文件夹
for(let item of arr){
    const itemNoext = item.replace('.js','')  //去掉每个文件的后缀
//    拼接成路径，通过require（）方法拿到暴露的结果
    let itemReturn = require(path.join(__dirname,'../services',item))
    if(typeof itemReturn == 'function'){
//    如果是一个构造函数就直接创建实例
        // obj[itemNoext]=new itemReturn()
        obj[itemNoext] = Reflect.construct(itemReturn,[])
    }
}   return obj
})()  //立即执行函数，当被调用时立即执行
module.exports = serverFactory
```

###### 5、基本服务

首先在utils文件夹下创建baseService.js文件，通过mysql,创建一个基本服务类，子类用于继承

```js
// 创建一个基本的服务器对象
const mysql = require('mysql')
class baseServer{
  constructor(){
    // 创建表名映射,便于使用
    this.tableMap = {
      schools:"schools",
      students:"students",
      user:"user",
      todoList:"todoList"
  }
  this.currentTableName = "";
  }
  // 第一个参数是执行的sql语句，第二个参数是参数
  sqlQuery(strSql,params=[]){ 
    // 通过createConnection创建mysql连接实例
    let conn = mysql.createConnection({
      host:'127.0.0.1',  //创建mysql服务域名
      port:3306,         //创建mysql服务端口
      user:'root',         //mysql密码
      password:'dmq0216',     //mysql用户名
      database:'nodejs',     //连接的数据库名称
      multipleStatements:true
    })
    let p = new Promise((resolve,reject)=>{
      conn.query(strSql,params,(error,result)=>{
        if(error){       //如果失败返回失败信息
          reject(error)
        }else{           //如果成功响应成功的结果
          resolve(result)
        }
      })
      conn.end()       //每次查询语句之后断开与数据库的连接
    })
    return p;
  }  
}
module.exports= baseServer;
```

###### 6、sql服务类

**创建sql服务类（继承于基本sql服务类）**

创建一个类，继承于基本的sql服务类，暴露出去，这样工厂函数读取文件之后会根据类创建实例，存于服务对象之中，方便使用。

```js
// 创建类，继承于基本服务类
const baseService = require('../utils/baseService')
class todolistService extends baseService{
  constructor(){
    super()
    this.currentTableName = this.tableMap.todoList;
  }
  // 创建类的方法
  async newTodoList(req){
    const {toDo,schedule,owner} = req 
    let strSql = `insert into ${this.currentTableName} (toDo,schedule,owner) values(?,?,?)`
    // 根据sql语句查新数据库 (参数数组)
    let result = await this.sqlQuery(strSql,[toDo,schedule,owner])
    return result
  }
  async deleteTodoList(req){
    const {id} = req 
    let strSql = `update ${this.currentTableName} set isDone = 1 where id = ? `
    // 根据sql语句查新数据库 (参数数组)
    let result = await this.sqlQuery(strSql,[id])
    return result
  }
}
module.exports=todolistService
```



###### 7、excel

**(1)   excel导出，后端发送路由页面，前端访问路由页面就可以拿到文件进行下载**

需要：node-xlsx包 。（`      npm install node-xlsx          `）

```js
const xlsx = require("node-xlsx");
const path = require("path");
const fs = require("fs");
class ExcelUtils{
    static resultsToExcel(result){
        if(result.length > 0){
            let headRow = Object.keys(result[0]);
            let dataRows = result.map(item => Object.values(item));
            dataRows.unshift(headRow);
            let excelObj = {
                name:"sheet1",
                data:dataRows
            };
            let savePath = path.join(__dirname,"../excelDir",`${Date.now()}-${parseInt(Math.random() * 1000)}.xlsx`)
            let excelBuff = xlsx.build([excelObj]);
            fs.writeFileSync(savePath,excelBuff);
            return savePath;
        }else{
            return "";
        }
    }
}
module.exports = ExcelUtils;
```

使用时：子路由监听页面，通过服务查询到数据，通过上面封装的ExcelUtils.resultToExcel方法创建excel文件，发送给前端

```js
// excel导出  前提是要导入： const ExcelUtils = require('../utils/ExcelUtils')
router.get('/exportExcel',async(req,res)=>{
  let result = await servicesObj.studentService.exportExcel(); 
  let excelPath = ExcelUtils.resultsToExcel(result);
    if(excelPath){
        res.sendFile(excelPath);
    }else{
        res.status(500).json(new ResultJson('',"excel没有数据，不能下载",false))
    }
})
```

服务端查询数据库中的数据返回给路由

```js
 exportExcel(){
    let strSql = `select * from ${this.currentTableName} where isDel = false`;
    return this.sqlQuery(strSql);
}
```



**（2）excel导入数据库**

需要： XLSX工具 ： <script src="https://cdn.staticfile.org/xlsx/0.18.5/xlsx.core.min.js"></script>

① 、前端：指定type类型为：input的标签，监听change事件，通过创建FileReader()实例读取文件

```js
$("#excelFile").on("change",async function () {
        var file = this.files[0];
        var reader = new FileReader();
        reader.onload = function(e) {
        var data = new Uint8Array(e.target.result);
        var workbook = XLSX.read(data, { type: 'array' });
        var sheet = workbook.Sheets[workbook.SheetNames[0]];
        var json = XLSX.utils.sheet_to_json(sheet, { header: 1 });
        console.log(JSON.stringify(json));
        request.post('/student/excelData',{
          data:JSON.stringify(json)
        }).then(res=>{
          console.log('这是res',res);
          Qmsg.success('导入成功')
          location.reload()
        })
      };
      reader.readAsArrayBuffer(file);
      })
```

②、后端路由中接收到post请求，将post请求中的数据传给sql服务实例使用

```js
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
```

③、后端服务实例拿到数据，将数据进行处理（例如：excel时间问题），然后通过sql语句将数据插入到数据库中

```js
importExcel(data){
  data = JSON.parse(data)
  data = data.splice(1,data.length)
  data.forEach(item=>{
    let date = new Date(item[4]);
    let year = date.getFullYear()
    let month = String(date.getMonth()+1).padStart(2,'0')
    let day = String(date.getDate()).padStart(2, '0');
    item[4] = `${year}-${month}-${day}`
  })
  console.log(data);
  let strSql = `insert into ${this.currentTableName} (id,sno,sname,ssex,sbirthday,saddr,isDel) values ?`
  this.sqlQuery(strSql,[data],(err,result)=>{
    if(err) throw err;
  })
}
```

# 前端综合解决方案

###### 1、内联标签  

###### 内联标签<iframe src='' frameborder="0" name='main'></iframe>的使用,a标签设置target为iframe标签的name值就可以实现部分跳转。

###### 2、国际化

使用包： jquery.i18n.min.js （先导入jQuery）

①、选择到所有的有i18n属性的dom元素，配置i18n基本配置

```js
$("[i18n]").i18n({
    defaultLang:localStorage.getItem('lang') || "cn",
    filePath: "/i18n/", //注意！要配置好语言文件的正确路径
    filePrefix: "i18n_",
    fileSuffix: "",
    forever: true,
    callback: function() {
     
    }
    });
//点击时，切换本地缓存中的语言，然后刷新实现切换语言
$('#step6').on('click',function () {
       localStorage.getItem('lang') == 'cn' ?localStorage.setItem('lang','en'):localStorage.setItem('lang','cn'); 
       location.reload()
       })
```

②、根据配置中的设置（路径和名称），创建语言文件 。以中文为例：在根目录下创建i18n文件夹，其中创建i18n_cn.json 文件：

```json
{
  "i18n.title":"学生管理系统",
  "i18n.center":"个人中心",
}
```

③、标签中使用：

```js
<div i18n="i18n.center">个人中心</div>
```

###### 3、全屏

```js
 function fullScreen() {
    let el = document.getElementById('iframe') // 获取需要全屏显示的因素
    let rfs = el.requestFullScreen
        || el.webkitRequestFullScreen
        || el.mozRequestFullScreen
        || el.msRequestFullScreen
    	// 获取实现全屏的方法，此处兼容了火狐、谷歌、IE、safari浏览器
    if (typeof rfs != "undefined" && rfs) {
        rfs.call(el)
        return
    }
    if (typeof window.ActiveXObject != "undefined") {
        let wscript = new ActiveXObject("WScript.Shell") // 取得系统目录 
        if (wscript) {
            wscript.SendKeys("{F11}") 
        }
    }
}
// 点击全屏
$('#step4').on('click',function () {
   fullScreen()
})
```

###### 4、新手指引

使用：shepherd 工具包

```js
// 创建引导方法
    const tour = new Shepherd.Tour({
      useModalOverlay: true,
      defaultStepOptions: {
        classes: 'shadow-md bg-purple-dark',
        scrollTo: true
      }
    });
    let langFlag = (localStorage.getItem('lang')=='cn')
    let i18nClose = langFlag?'关闭':'Close'
    let i18nNext = langFlag?'下一步':'Next Step'
    function addStep(element,text,position='bottom'){
      tour.addStep({
      id: element,
      text: text,
      attachTo: {
        element: '#'+element,          //设置通过何种方式获得到目标元素
        on: position
      },
      classes: 'example-step-extra-class',
      buttons: [
        {
          text: i18nClose,
          action: tour.hide
        },
        {
          text: i18nNext,
          action: tour.next
        }
      ]
    });
    }
//  通过id指定指定元素，作为指引的目标，并设置提示信息
    addStep('step1',langFlag?'伸缩侧边栏':'Telescopic sidebar')
    addStep('step2',langFlag?'新手指引':'Novice guide')
    addStep('step3',langFlag?'拖尾':'Streaking')
    addStep('step4',langFlag?'全屏':'Full Screen')
    addStep('step5',langFlag?'主题色':'Subject color')
    addStep('step6',langFlag?'国际化':'Internationalization')
    addStep('step7',langFlag?'侧边栏':'Sidebar','right')
    addStep('step8',langFlag?'退出登录':'Logout')
    addStep('step9',langFlag?'更多':'more')
```

###### 5、换肤

bootstrap设置的模态框中：

```html
<div class="modal fade" id="Modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel" i18n="i18n.selectColor">选取主题色</h5>
          <button type="button" data-toggle="modal" data-target="#myModal" class="close closeModel" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="closeModal">❌</span>
          </button>
        </div>
        <div class="modal-body">
         <input type="color" id="colorInput">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary closeModal" data-dismiss="modal" i18n="i18n.noselect">取消</button>
          <button type="button" class="btn btn-primary" id="confirm" i18n="i18n.confirm">确定</button>
        </div>
      </div>
    </div>
  </div>
```

```js
//点击确定通过$(':root').css('属性名称',属性值) 设置css变量的值，实现换肤效果。
$('#confirm').on('click',function () {
  let color = $('#colorInput').val();
  $('#colorInput').val(color)
  $(':root').css('--left-bar-color', color);  
//原生通过 ：document.documentElement.style.setProperty('--left-bar-color', color);
  localStorage.setItem('themeColor',color)
  $("#Modal").modal('hide');
})
```

###### 6、权限设置

设置页面跳转的 display:none，将其隐藏

```html
<li id="center" style="display: none;" class="dashboard"> </li>
<li id="class" style="display: none;" class="class"> </li>
<li id="limit" style="display: none;" class="limit"> </li>
<li id="school" style="display: none;" class="school"> </li>
<li id="file" style="display: none;" class="file"> </li>
```

通过用户登录时存的、用户信息中的权限信息进行设置

```js
let permissionArr = JSON.parse(localStorage.getItem('user'))[0].permission.split(',');
      permissionArr.forEach(item => {
      $('#'+item).css('display','block')
});
```

编辑时，绑定方法，改变数据库中存储的用户权限数据

