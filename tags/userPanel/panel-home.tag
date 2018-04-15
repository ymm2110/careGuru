
<panel-home>
  <h1>Hi this is home</h1>
  <section class="wrap">
    <div class="home-option">
      <img src="./../img/app1.jpg" alt="tempo">
    </div>
    <div class="home-option">
      <img src="./../img/app1.jpg" alt="tempo">
    </div>
    <div class="home-option">
      <img src="./../img/app1.jpg" alt="tempo">
    </div>
  </section>
  <script>
    message() {
      return 'there'
    }
  </script>

  <style>
    h1 {
      text-align: center;
      padding: 40px 0;
    }
    
    .wrap {
      margin: 40px auto;
      display: flex;
      justify-content: center;
      text-align: center;
    }

    .wrap .home-option {
      width: 200px;
      height: 250px;
      background: #fff;
      margin: 50px;
      box-shadow: 2px 4px 10px 0 rgba(0, 0, 0, 0.1);
      border-radius: 6px;
    }
    
    .wrap .home-option img{
      width: 50px;
      height: 50px;
      border-radius: 50%;

    }
  </style>
</panel-home>
