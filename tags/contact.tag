
<contact>
  <home-header page={this.opts.page}>
    <div class="head-middle">
      <h1>Contact Us</h1>
      <p>
        We are always working to make your experience better. Understanding your concerns help us improve. Tell us what you think of our site, products, and services. Did you have a great experience? We'd love to hear from you!
      </p>
    </div>
    <div class="form">
      <form>
        <input type="text" placeholder="Name">
        <input type="text" placeholder="E-mail">
        <input type="text" id="msg" placeholder="Message">
      </form>
      <button type="button">Send it !</button>

    </div>
  </home-header>


  <!--The following is "About" page content-->
  <div class="container">
    <div each= { item in personalInfo }>
      <div class="row">

          <img class="img" src={item.img} alt="Card image cap">


          <h4 class="personalInfo">{item.name}</h4>
          <h6>{item.role}</h6>
          <h6>{item.email}</h6>

      </div>
    </div>
  </div>

  <script>

//The following is "About" page content

  this.personalInfo = [
    {
      name: "Team Member: Yuntong Man",
      img: "./image/Yuntong.png",
      role: "Instructional Designer",
      email: "Email: ymm2110@tc.columbia.edu",
    },
    {
      name: "Team Member: Shuai Yuan",
      img: "./image/Shuai.png",
      role: "Web Developer",
      email: "Email: sy2729@tc.columbia.edu",
    },
    {
      name: "Team Member: Yigu Liang",
      img: "./image/Yigu.png",
      role: "Subject Matter Expert",
      email: "Email: yl3605@tc.columbia.edu",
    },
    {
      name: "Team Member: Zhiping Zhang",
      img: "./image/Zhiping.png",
      role: "UX Designer",
      email: "Email: zz2499@tc.columbia.edu",
    }
  ]
  </script>

  <style>
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
      font-size: 1.1em;
      font-weight: 100;
      padding: 20px 20%;
      text-shadow: 1px 1px rgba(0, 0, 0, 0.2);
      position: relative;
    }
    .header .head-middle p:after{
      /* content: ""; */
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
    .form {
      position: absolute;
      text-align: center;
      left: 50;
      right: 50;
      width: 35%;
      transform: translate(100%, 10%);
    }
    input {
      width: 100%;
      margin: 20px 0;
      background: rgba(0,0,0,0);
      border: none;
      border-bottom: 1px solid white;
    }
    ::-webkit-input-placeholder {
      color: white;
      letter-spacing: 1.5px;
      font-size: 12px;
    }
    #msg {
      margin-top: 40px;
    }
    button {
      padding: 10px 20px;
      margin-top: 20px;
      font-size: 16px;
      border: none;
      border-radius: 4px;
      background: #D19B9B;
      color: white;
    }
  </style>
</contact>
