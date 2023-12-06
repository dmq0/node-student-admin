// 传入的函数是一个中国的标准时间
function formatDate(dateString) {
  var date = new Date(dateString);
  var year = date.getFullYear();
  var month = date.getMonth() + 1; // 月份从0开始，所以需要加1
  var day = date.getDate();
  return year + "年" + month + "月" + day + "日";
}