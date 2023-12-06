const settings = require('../settings/settings')
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
    //通过 mysql.createConnection创建实体连接数据库
    let conn = mysql.createConnection({
      host:settings.host,
      port:settings.port,
      user:settings.user,         //密码
      password:settings.password,     //用户名
      database:settings.database,     //本地数据库
      multipleStatements:true
    })
    // 通过连接的服务，执行sql语句
    let p = new Promise((resolve,reject)=>{
      conn.query(strSql,params,(error,result)=>{
        if(error){       //如果失败返回失败信息
          reject(error)
        }else{           //如果成功响应成功的结果
          resolve(result)
        }
      })
      conn.end()       //直接查询语句之后断开与数据库的连接
    })
    return p;
  }  
}
module.exports= baseServer;