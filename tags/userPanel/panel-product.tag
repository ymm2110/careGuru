
<panel-product>
  <section class="wrap-product wrap-anime">
    <div class="pre-survey" if={!surveyStart}>
      Help us make the survey easier
      <h1>Are You Ready To Do the Survey</h1>
      <p>We collect the data and help you to remember and rethink about your insurance opportunities and information</p>
      <button onclick={startSurvey}>Start the survey</button>
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
      text-align: center;
    }
  </style>
</panel-product>
