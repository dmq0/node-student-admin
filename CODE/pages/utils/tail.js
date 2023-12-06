// 选材小球
// 传入x,和y
function Ball(x, y) {
  this.x = x;
  this.y = y;
  this.r = 15;
  this.dan = Math.floor(Math.random() * 266);
  this.dan2 = Math.floor(Math.random() * 266);
  this.dan3 = Math.floor(Math.random() * 266);
  this.color = `rgb(${this.dan},${this.dan2},${this.dan3})`;
  this.opacity = 1;
  // 初始的时候定义增量,使用do while语句
  do {
      this.dx = (Math.random() * 8) - 4;
      this.dy = (Math.random() * 8) - 4;
  } while (this.dx == 0 && this.dy == 0);
  this.init();
  // 初始化推入
  BallArr.push(this)
}
Ball.prototype.init = function () {
  this.dom = document.createElement('div');
  this.dom.className = 'tail';
  this.dom.style.width = 2 * this.r + 'px';
  this.dom.style.height = this.dom.style.width;
  this.dom.style.top = this.y - this.r + 'px';
  this.dom.style.left = this.x - this.r + 'px';
  this.dom.style.backgroundColor = this.color;
  document.body.appendChild(this.dom)
}
Ball.prototype.update = function () {
  this.x += this.dx;
  this.y += this.dy;
  this.r += 0.2;
  this.opacity -= 0.01;
  // this.color = 
  this.dom.style.top = this.y - this.r + 'px';
  this.dom.style.left = this.x - this.r + 'px';
  this.dom.style.opacity = this.opacity;
  // 当透明度小于零
  if (this.opacity <= 0) {
      // 删除自己
      for (let i = 0; i < BallArr.length; i++) {
          if (BallArr[i] == this) {
              BallArr.splice(i, 1);
          }
      }
      document.body.removeChild(this.dom)
  }
}
let BallArr = [];
// new Ball(30, 30);
// 定时器遍历小球数组,调用更新方法
setInterval(function () {
  for (let i = 0; i < BallArr.length; i++) {
      BallArr[i].update();
  }
}, 20)
// 鼠标指针事件监听
// let startTail = document.addEventListener('mousemove',function (e) {
//   let x = e.pageX;
//   let y = e.pageY;
//   new Ball(x, y);
// })  
