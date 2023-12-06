// 设置请求基地址
var baseURL = "http://127.0.0.1:8081";
// 封装请求函数
var request = {
    get:function(url,data){
        return new Promise(function(resolve,reject){
            J.ajax({
                url:baseURL + url,
                method:'get',
                data:data,
                success:function(res){
                    resolve(res)
                },
                error:function(error){
                    reject(error)
                },
                // 发送之前，在请求头中设置token
                beforeSend:function(xhr){
                    sessionStorage.getItem("token") &&  xhr.setRequestHeader("token",sessionStorage.getItem("token"))
                }
            })
        })
        
    },
    post:function(url,data){
        return new Promise(function(resolve,reject){
            J.ajax({
                url:baseURL + url,
                method:'post',
                data:data,
                success:function(res){
                    resolve(res)
                },
                error:function(error){
                    reject(error)
                },
                beforeSend:function(xhr){
                    sessionStorage.getItem("token") &&  xhr.setRequestHeader("token",sessionStorage.getItem("token"))
                }
            })
        })
    }
  }