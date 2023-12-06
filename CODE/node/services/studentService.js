// 创建类，继承于基本服务类
const baseService = require('../utils/baseService')
class studentService extends baseService{
  constructor(){
    super()
    this.currentTableName = this.tableMap.students;
  }
  
  async getStudentByPage(req){
    const {page} = req 
    let total = (page - 1) * 10;
    let strSql = `select * from ${this.currentTableName} order by id limit ${total} , 10 ;`
    // 根据sql语句查新数据库 (参数数组)
    let result = await this.sqlQuery(strSql,[page])
    return result
  }
  async getTotal(){
    let strSql = `SELECT COUNT(*) AS data FROM ${this.currentTableName} ;`
    // 根据sql语句查新数据库 (参数数组)
    let result = await this.sqlQuery(strSql)
    return result
  }

  async searchStudent(msgObj){
    // 进行判断 ,如果是学号
    console.log('这是过来的信息',typeof msgObj.msg);
    let label = /^H2|^J2/.test(msgObj.msg) ? 'sno' : 'sname'
    console.log(label);
    let strSql = `select * from ${this.currentTableName} where ${label} = ?`
    let result = await this.sqlQuery(strSql,[msgObj.msg])
    return result
  }
  async getStudentById(msgObj){
    // 进行判断 ,如果是学号
    let strSql = `select * from ${this.currentTableName} where id = ?`
    let result = await this.sqlQuery(strSql,[msgObj.id])
    return result
  }
  async editStudent(msgObj){
    let strSql = `update ${this.currentTableName} set sno=?, sname=?, ssex=?, sbirthday=?, saddr=? where id=?;`
    let result = await this.sqlQuery(strSql,[msgObj.sno,msgObj.name,msgObj.sex,msgObj.birth,msgObj.addr,msgObj.id])
    return result
  }
  async addStudent(msgObj){
    let strSql = `insert into ${this.currentTableName} (sno,sname,ssex,sbirthday,saddr) values (?,?,?,?,?);`
    let result = await this.sqlQuery(strSql,[msgObj.name,msgObj.sno,msgObj.sex,msgObj.birth,msgObj.addr])
    return result
  }
  async deleteStudentById(msgObj){
    let strSql = `delete from ${this.currentTableName}  where id=?;`
    let result = await this.sqlQuery(strSql,[msgObj.id])
    return result
  }
  exportExcel(){
    let strSql = `select * from ${this.currentTableName} where isDel = false`;
    return this.sqlQuery(strSql);
}
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


}
module.exports=studentService