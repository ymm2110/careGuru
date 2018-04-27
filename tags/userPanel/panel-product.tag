
<panel-product>
  <section class="wrap-product wrap-anime">
    <div class="pre-survey" if={!surveyStart}>
      <h1>Help Us Improve CareGuru!</h1>
      <p>Hey there! We are always working on make your experience better.</p>
      <p>This survey focuses on how you utilize the U.S. health care benefits and what you think of our site and
how you think we could improve it.</p>
      <p>Your feedback will support our team to improve the services and user experience.</p>

      <a class="startbutton" onclick={startSurvey}>Let's do it!</a>
    </div>
    <survey if={surveyStart}></survey>
  </section>

  <script>
    this.surveyStart = false;
    startSurvey() {
      this.surveyStart = true;
    }
  </script>

  <style>

    h1 {
      padding: 50px 80px;
      font-size: 30px;
    }

    .wrap-product {
      font: "proxima nova";
      text-align: center;
    }

    .startbutton {
      color: #EE7379;
      font-weight: 100;
      font-size: 20px;
      text-align: center;
      border-radius: 5px;
      border: solid 2px #EE7379;
      padding: 3px 10px;
      margin: 30px auto;
      width: 100px;
      transition-duration: 400ms;
      cursor: pointer;
      display: block;
    }

    .startbutton:hover {
      background-color: #EE7379;
      color: #fff;
    }
    

    .submitbutton:hover {
      background-color: #F07277;
      color: #fff;
    } 

  </style>
</panel-product>
