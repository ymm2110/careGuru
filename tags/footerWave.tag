
<footerWave>
  <div class="footer-wrap">
    <canvas id="wave" width ="938" height="400"></canvas>
    <form action="" class="email">
      <div class="input-wrap">
        <input type="text" placeholder="Enter Email to Request Your Insurance">
        <div class="icon">
          <i class="fa fa-paper-plane"></i>
        </div>
      </div>
    </form>
    <footer class="footer-nav clearfix">
      <div class="nav-left">
        <p><span></span>CareGuru 2018 All Rights Reserved</p>
      </div>
      <div class="nav-right">
        <ul>
          <li>Take Tour</li>
          <li>FAQs</li>
          <li>Contact</li>
          <li>Request Final Card</li>
        </ul>
      </div>
    </footer>
  </div>

  <script>
    //Canvas Wave code credit to codePen "Cidi": url: https://codepen.io/cidicles/pen/yKOzjP?editors=1010
    this.on('mount', function() {

      window.onresize = function() {
        console.log(window.innerWidth)
        canvas.width = window.innerWidth -15;
      };

      var canvas = document.getElementById('wave');
      var ctx = canvas.getContext('2d');
      canvas.width = window.innerWidth - 15;
      var waves = ["#27314D","#414B60","#F07277","#F29098","#6FCFE9"]
      var i = 0;
      function draw() {
        canvas.width = canvas.width;
        for (var j = waves.length - 1; j >= 0; j--) {
          var offset = i + j * Math.PI * 12;
          ctx.fillStyle = (waves[j]);
          var randomLeft = (Math.sin(offset / 100) + 1) / 2 * 200;
          var randomRight = (Math.sin((offset / 100) + 10) + 1) / 2 * 200;
          var randomLeftConstraint = (Math.sin((offset / 60) + 2) + 1) / 2 * 200;
          var randomRightConstraint = (Math.sin((offset / 60) + 1) + 1) / 2 * 200;
          ctx.beginPath();
          ctx.moveTo(0, randomLeft + 100);
          // ctx.lineTo(canvas.width, randomRight + 100);
          ctx.bezierCurveTo(canvas.width / 3, randomLeftConstraint, canvas.width / 3 * 2, randomRightConstraint, canvas.width, randomRight + 100);
          ctx.lineTo(canvas.width, canvas.height);
          ctx.lineTo(0, canvas.height);
          ctx.lineTo(0, randomLeft + 100);
          ctx.closePath();
          ctx.fill();
        }
        i = i + 3;
      }
      setInterval(function(){
        draw();
      }, 20);
    })


  </script>

  <style>
    .footer-wrap {
      position: relative;
    }
    .footer-wrap::after {
      content: "";
      position: absolute;
      left: 0;
      right: 0;
      background: #27324B;
      bottom: 0;
      height: 10px;
    }

    .footer-nav {
      position: absolute;
      bottom: 20px;
      left: 0;
      right: 0;
      color: #8D96A2;
      padding: 30px 20px;
    }
    .footer-nav::before {
      content: "";
      position: absolute;
      top: -10px;
      left: 0;
      right: 0;
      margin: 0 auto;
      width: 70%;
      height: 1px;
      border-radius: 50%;
      background: #3C455E;
    }
    .footer-nav .nav-left{
      float: left;

    }    
    .footer-nav .nav-right{
      float: right;
      margin-right: 20px;
    }
    .footer-nav .nav-right li{
      display: inline-block;
      margin-left: 20px;
    }

    .email {
      position: absolute;
      bottom: 55%;
      left: 0;
      right: 0;
    
    }

    .email .input-wrap {
      margin: 0 auto;
      width: 280px;
      position: relative;
    }

    .email .input-wrap .icon{
      position: absolute;
      right: -8px;
      top: 0;
      bottom: 0;
      margin: auto 0;
      width: 30px;
      height: 30px;
      background: #55A5BD;
      padding: 2px 3px;
      text-align: center;
      cursor: pointer;
      border-radius: 4px;
    }
    .email .input-wrap .icon i{
      color: #fff;
      line-height: 28px;
    }

    .email .input-wrap input{
      height: 30px;
      width: 100%;
      background: rgba(255, 255, 255, 0.8);
      border-radius: 4px;
      padding: 6px;
      color: #777979;
      font-size: 0.9em;
    }
  </style>
</footerWave>
