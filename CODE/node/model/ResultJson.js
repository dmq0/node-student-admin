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
