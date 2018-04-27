
<panel-product>
  <section class="wrap-product wrap-anime">
    <div class="pre-survey" if={!surveyStart}>
      <h1>Help Us Improve CareGuru!</h1>
      <p>Hey there! We are always working on make your experience better.</p>
      <p>This survey focuses on how you utilize the U.S. health care benefits and what you think of our site and
how you think we could improve it.</p>
      <p>Your feedback will support our team to improve the services and user experience.</p>

      <a class="gap startbutton" onclick={startSurvey}>Let's do it!</a>
    </div>
    <survey if={surveyStart}></survey>
    <a class="gap submitbutton" onclick={submit}>Submit it! </a>
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
      font: "proxima nova";
      color: #6FCEE9;
      font-weight: 100;
      font-size: 20px;
      text-align: center;
      border-radius: 50px;
      border: solid 2px #6FCEE9;
      padding: 3px 10px;
      -webkit-transition-duration: 400ms;
      transition-duration: 400ms;
    }

    .startbutton:hover {
      background-color: #6FCEE9;
      color: #fff;
    }

    .submitbutton {
      font: "proxima nova";
      color: #F07277;
      font-weight: 100;
      font-size: 20px;
      text-align: center;
      border-radius: 50px;
      border: solid 2px #F07277;
      padding: 3px 10px;
      -webkit-transition-duration: 400ms;
      transition-duration: 400ms;
    }

    .submitbutton:hover {
      background-color: #F07277;
      color: #fff;
    }

  </style>
</panel-product>
