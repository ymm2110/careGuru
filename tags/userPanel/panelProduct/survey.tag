
<survey>
  <section class="wrap-survey wrap-anime">
    <div class="wrap-survey-inner">
      <div class="question-wrap" each = {i, index in surveyData} id = {"index"+ index}>
        <h3>{i.question}</h3>
        <input type="text" onkeydown={inputAnswer} id = {"input"+ index}>
      </div>
    </div>
  </section>


  <script>
    this.surveyData = [
      {
        question: "xxxxxxxxxxxxxx?",
        
        
      },
      {
        question: "shfsgadhfgdhfejhbfheavfhs?",
      },
      {
        question: "23423rdvbhsbhjr3232sdsvds?",
      },
      {
        question: "273hsxbhbfhef23?",
      },
      {
        question: "273hsxbhbfhef23?",
      },
      {
        question: "273hsxbhbfhef23?",
      },
      {
        question: "273hsxbhbfhef23?",
      },
      {
        question: "273hsxbhbfhef23?",
      },
      {
        question: "273hsxbhbfhef23?",
      },
      {
        question: "273hsxbhbfhef23?",
      },
    ]  

    this.scrollDistance = 0;
    inputAnswer(e) {
      if(e.which == 13) {
        var answer = e.target.value;
        //move focus to the next input
        var currentIndex = e.target.id.replace(/input/g, '') - 0;
        var brotherId = currentIndex + 1;

        //judge the if this is last question
        if(brotherId < this.surveyData.length) {
          document.querySelector(`#input${brotherId}`).focus();
          //move view to the next input
          var offsetTop = e.target.offsetTop;
          var parentDiv = e.target.parentElement.parentElement;
          var distance = offsetTop - parentDiv.scrollTop -100;
          // var currentDistance = document.querySelector(`#index${currentIndex}`).getBoundingClientRect().height;
          // this.scrollDistance = this.scrollDistance + currentDistance;
          var time = Math.abs((distance / 100) * 200);
          var coords = { y: parentDiv.scrollTop }
          var tween = new TWEEN.Tween(coords).to({ y: parentDiv.scrollTop + distance }, time)
              .easing(TWEEN.Easing.Quadratic.InOut)
              .onUpdate(function () {
                parentDiv.scrollTop = coords.y;
              })
              .start(); 
        }
      }
    }


    this.on('mount', function() {
      function animate(time) {
        requestAnimationFrame(animate);
        TWEEN.update(time);
      }
      requestAnimationFrame(animate);
    })
  </script>

  <style>
    .wrap-survey {
      width: 400px;
      height: 400px;
      margin: 0 auto;
      margin-top: 50px;
      overflow: hidden;
      position: relative;
    }

    .wrap-survey::after {
      content: "";
      position: absolute;
      pointer-events: none;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      background: transparent;
      background: linear-gradient(0deg, rgba(245,246,250,1) 0%, rgba(255,255,255,0) 50%, rgba(245,246,250,1) 100%);
    }
    
    .wrap-survey .wrap-survey-inner {
      width: 100%;
      height: 100%;
      overflow-y: scroll;
      padding-right: 17px;
      box-sizing: content-box;
    }
    .wrap-survey .wrap-survey-inner .question-wrap {
      padding: 30px 0;
    }
    .wrap-survey .wrap-survey-inner .question-wrap input{
      font-size: 1em;
      width: 80%;
      height: 40px;
      border-radius: 5px;
      padding: 3px;
    }

    .wrap-survey .wrap-survey-inner .question-wrap:first-child {
      margin-top: 200px;
    }
     .question-wrap:last-child {
      margin-bottom: 200px;
     }
  </style>
</survey>
