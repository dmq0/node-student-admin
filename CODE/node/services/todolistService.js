// 创建类，继承于基本服务类
const baseService = require('../utils/baseService')
class todolistService extends baseService{
  constructor(){
    super()
    this.currentTableName = this.tableMap.todoList;
  }
  // 创建类的方法
  async findTodoListByOwner(req){
    const  {owner} = req
    let strSql = `select * from ${this.currentTableName} where owner = ? and isDone = 0 `
    let result=await this.sqlQuery(strSql,[owner])
    return result
  }
  async editTodoList(req){
    const {toDo,schedule,id} = req 
    // dingyisql语句
    let strSql = `update ${this.currentTableName} set toDo = ? , schedule = ? where id = ?`
    // 根据sql语句查新数据库 (参数数组)
    let result = await this.sqlQuery(strSql,[toDo,schedule,id])
    return result
  }
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