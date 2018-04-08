
<app>
  <!-- <login></login> -->
  <!-- <dataView></dataView> -->

  <main class="header">
    <div class="main-inner">
      <nav class="clearfix">
        <div class="logo">
          <img src="./img/LOGO.png" alt="logo">
        </div>
  
        <ul class="nav-right">
          <li><a href="">TOUR</a></li>
          <li><a href="">FAQS</a></li>
          <li><a href="">CONTACT</a></li>
          <li id="login">GET ACCESS</li>
        </ul>
  
      </nav>


      <div class="head-middle">
        <h1>Introducing Insurance</h1>
        <p>It's tiem to say goodbay to confusion</p>
        <button class="playBt"><i class="fa fa-play-circle"></i> <span>Watch Video</span></button>
      </div>

    </div>
  </main>



  <dataView></dataView>
  <footerWave></footerWave>
  <script>
    
  </script>

  
  
  <style>
    .header {
      width: 100%;
      height: 600px;
      background: url("./img/app1.jpg") no-repeat;
      background-size: cover;
      background-position: center;
      position: relative;
      color: #FFFFFF;
    }

    .header:after {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: rgb(227,101,105);
      background: linear-gradient(0deg, rgba(229,120,123,1) 0%, rgba(201,144,153,1) 25%, rgba(173,164,177,1) 50%, rgba(132,186,205,1) 75%, rgba(114,197,220,1) 100%);
      opacity: 0.8;
    }

    .main-inner {
      position: relative;
      z-index: 2;
    }

    .header nav {
      padding: 15px;
      border-bottom: 1px solid #8BD0E3;
      box-sizing: border-box;
      height: 65px;
    }
    .header nav .logo {
      float: left;
      height: 56px;
      bottom: 10px;
      position: relative;
    }
    .header nav .logo img {
      height: 100%;
      width: auto;
    }
    .header nav .nav-right {
      float: right;
      margin-right: 10%;
    }
    .header nav .nav-right li {
      display: inline-block;
      margin-left: 10px;
      font-weight: 100;
      font-size: 0.85em;
      padding: 5px 10px;
      
    }
    .header nav .nav-right li a{
      color: inherit;
    }

    .header nav .nav-right #login {
      border: 1px solid #fff;
      border-radius: 4px;
      position: relative;
      transform: translateX(10px);
      transition: all .4s;
      cursor: pointer;
    }
    .header nav .nav-right #login:hover {
      background: #fff;
      color: #DE838A;
      box-shadow: 3px 3px 10px 0 rgba(255, 255, 255, 0.3);
      box-shadow: -3px -3px 10px 0 rgba(255, 255, 255, 0.3);
    }


    .header .head-middle {
      text-align: center;
      margin-top: 100px;
    }
    .header .head-middle h1{
      font-size: 2.5em;
      font-weight: 100;
      padding: 10px 0;
      text-shadow: 2px 2px rgba(0, 0, 0, 0.2);
    }
    .header .head-middle p{
      font-size: 1.4em;
      font-weight: 100;
      padding: 20px 0;
      text-shadow: 1px 1px rgba(0, 0, 0, 0.2);
      position: relative;
    }
    .header .head-middle p:after{
      content: "";
      position: absolute;
      bottom: -10px;
      left: 0;
      right: 0;
      margin: 0 auto;
      width: 40%;
      height: 1px;
      border-radius: 50%;
      background: rgb(255,255,255);
      background: linear-gradient(90deg, rgba(255,255,255,0.38279061624649857) 0%, rgba(255,255,255,0.5872724089635855) 50%, rgba(255,255,255,0.3295693277310925) 100%);

    }
    .header .head-middle .playBt{
      color: inherit;
      margin-top: 40px;
      background: transparent;
      border: 1px solid #fff;
      padding: 7px 7px;
      border-radius: 15px;
      font-size: 13px;
      cursor: pointer;
      line-height: 1em;
    }
    .header .head-middle .playBt span{
      transition: all .5s;
    }
    .header .head-middle .playBt i {
      transition: all .5s;
    }

    .header .head-middle .playBt:hover span{
      opacity: 0;
      transform: translateX(-10px);
      display: inline-block;
    }
    .header .head-middle .playBt:hover i{
      display: inline-block;
      transform: rotate(360deg);
      transform: translateX(40px);
    }

  </style>
</app>
