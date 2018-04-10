
<logIn>

   <section class="login fix-center">

     <video autoplay loop id="video-background" muted plays-inline ref="video">
      <source src="./img/login_v.mp4" type="video/mp4">
     </video>
     Your browser does not support the video tag.
     <div class="login-info">
      <p class="close"><i class="fa fa-close" onclick = {close}></i></p>
      <h2>Login In</h2>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam, vel.</p>
      <form action="">
        <span><i class="fa fa-user"></i></span><input type="text" placeholder="username"><br>
        <span><i class="fa fa-key"></i></span><input type="password" placeholder="password" id="pass">
        <button class="loginBtn signinBtn">Log In</button>
        <button class="loginBtn signupBtn">Sign Up</button>
      </form>
     </div>
   </section>


  <script>
    close() {
      this.parent.loginPanel = false;
      this.parent.update();
    }
  </script>

  <style>
    .login {
      background: #ddd;
      z-index: 21;
      width: 320px;
      height: 560px;
      box-shadow: 2px 2px 10px 0 rgba(0, 0, 0, 0.3);
      overflow: hidden; 
    }
    .login::after {
      content: "";
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      z-index: 23;
      background: rgba(0, 0, 0, 0.3);
    }
    #video-background {
      position: absolute;
      width: 100%;
      min-height: 100%;
      object-fit: cover;
      z-index: 22;
    }
    .login-info {
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      z-index: 24;
      background: transparent;
      color: #fff;
      /* display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center; */
    }
    .login-info .close {
      text-align: right;
      padding: 10px 10px 0;
      cursor: pointer;
    }

    .login-info h2{
      text-align: center;
      padding: 60px;
    }
    .login-info p{
      padding: 20px 30px;
      text-align: center;
    }
    
    .login-info form{
      text-align: center;
      padding: 10px;
    }
    
    .login-info form input::placeholder{
        color: #fff;
        text-indent: 20%;
    }
    .login-info form input{
      width: 170px;
      height: 34px;
      background: rgba(255,255,255, 0.5);
      font-size: 1em;
      font-weight: 100;
      margin: 5px 0;
      color: #fff;
      padding: 3px 5px 3px 30px;
      box-sizing: border-box;
      display: inline-block;
    }
    .login-info form input#pass{
      transform: translateX(-3px);
    }

    .login-info form span {
      transform: translateX(20px);
      display: inline-block;
      position: relative;
    }
    .login-info form span::after {
      content: "";
      position: absolute;
      right: -5px;
      width: 1px;
      height: 80%;
      top: 0;
      bottom: 0;
      margin: auto 0;
      display: block;
      background: #fff;
    }
    
    .login-info form .loginBtn {
      margin: 10px 0;
      width: 150px;
      height: 40px;
      border: 1px solid #EE747A;
      background: transparent;
      transition: all .4s;
      color: #EE747A;
      border-radius: 4px;
      font-size: 0.9em;
    }
    
    .login-info form .signinBtn:hover {
      background: #fff;
      box-shadow: 3px 3px 10px 0 rgba(255, 255, 255, 0.3), -3px -3px 10px 0 rgba(255, 255, 255, 0.3);
    }
    
    .login-info form .signupBtn {
      margin: 0;
      background: #fff;
      box-shadow: 3px 3px 10px 0 rgba(255, 255, 255, 0.3), -3px -3px 10px 0 rgba(255, 255, 255, 0.3);
    }
    
    </style>
</logIn>
