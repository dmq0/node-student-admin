// 创建类，继承于基本服务类
const baseService = require('../utils/baseService')
class userService extends baseService{
  constructor(){
    super()
    this.currentTableName = this.tableMap.user;
  }
  // 创建类的方法
  async findUserByPassword(req){
    const  {input,password} = req
    let strSql = `select * from ${this.currentTableName} where input = ? and password = ? `
    let result=await this.sqlQuery(strSql,[input,password])
    return result
  }
  async allUsers(){
    return await this.sqlQuery('select * from user ')
  }
  async limit(msgObj){
    console.log('asdjfoas',msgObj);
    let strSql = `update ${this.currentTableName} set permission = ? where id = ?;`
    let result = await this.sqlQuery(strSql,[msgObj.permissions,msgObj.id])
    return result
  }
}
module.exports=userService