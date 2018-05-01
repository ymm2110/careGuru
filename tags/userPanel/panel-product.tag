
<panel-product>
  <section class="wrap-product wrap-anime">
    <div class="pre-survey" if={!surveyStart}>
      <h1>Let us create you a personalized health reminder</h1>
      <p>Each year, you have many health screenings to do to insure you're in healthy condition. Once you provide some basic information, CareGuru will create a personalized reminder for you so you can keep tracking of these screenings. </p>
      <br>
      <p>Once you complete this form, go to the "personalized reminder" session in homepage to access your reminder.</p>

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
    .wrap-product {
      font: "proxima nova";
      text-align: center;
    }

    .pre-survey {
      padding: 30px;
      margin: 0 auto;
      max-width: 70%;
    }

    .startbutton {
      color: #EE7379;
      font-weight: 100;
      font-size: 20px;

    .submitbutton:hover {
      background-color: #F07277;
      color: #fff;
    }

  </style>
</panel-product>
