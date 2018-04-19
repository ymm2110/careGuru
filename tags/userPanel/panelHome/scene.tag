
<scene>
  <section class="scene-wrap wrap-anime">
    <sceneBoard data = {currentScene}></sceneBoard>
    <div class="button-wrap">
      <button onclick={option1} id = {i.optionLinkTo} each = {i in currentScene.options}>{i.optionName}</button>
    </div>
  </section>
  <script>
    this.blood = 100;
    this.money = 1000;
    this.scenarioData = [
      {
        question: "question1",
        descrip: "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
        imgurl: "sadsadada",
        sceneId: 1,
        options: {
          option1: {
            optionName: "option1 from scene1",
            optionLinkTo: 2,
            optionResults: {
              blood: 10,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option1 from scene1? This will ......",
              choosedFeedback: "glad you choose this question"
            },
          },
          option2: {
            optionName: "option2 from scene1",
            optionLinkTo: 2,
            optionResults: {
              blood: 10,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option1 from scene1? This will ......",
              choosedFeedback: "glad you choose this question"
            },
          }
        }  
      },
      {
        question: "question2:xxxxxxxxx?",
        descrip: "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
        imgurl: "sadsadada",
        sceneId: 2,
        options: {
          option1: {
            optionName: "option1 from scene2",
            optionLinkTo: 3
          },
          option2: {
            optionName: "option2 from scene2",
            optionLinkTo: 1
          },
          option3: {
            optionName: "option3 from scene2",
            optionLinkTo: 4
          },
          option4: {
            optionName: "option4 from scene2",
            optionLinkTo: 2
          }
        }  
      },
      {
        question: "question3:xxxxxxxxx?",
        descrip: "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
        imgurl: "sadsadada",
        sceneId: 3,
        options: {
          option1: {
            optionName: "option1 from scene3",
            optionLinkTo: 3
          },
          option2: {
            optionName: "option2 from scene3",
            optionLinkTo: 4
          }
        }  
      },
      {
        question: "question4:xxxxxxxxx?",
        descrip: "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
        imgurl: "sadsadada",
        sceneId: 4,
        options: {
          option1: {
            optionName: "option1 from scene4",
            optionLinkTo: 1
          },
          option2: {
            optionName: "option2 from scene4",
            optionLinkTo: 3
          }
        }  
      },
    ]

    this.currentScene = this.scenarioData[0];

    option1(e) {
      var nextSceneId = e.currentTarget.id; 
      this.currentScene = this.scenarioData[nextSceneId-1];
      console.log(nextSceneId)
    }
    // option2(e) {
    //   var nextSceneId = e.currentTarget.id;
    //   this.currentScene = this.scenarioData[nextSceneId-1];
    //   console.log(nextSceneId)
    // }

  </script>

  <style>
    .scene-wrap {
      width: 60%;
      min-width: 270px;
      height: 500px;
      /* background: #fff; */
      margin: 40px auto;
    }
    .scene-wrap .button-wrap {
      width: 300px;
      display: flex;
      text-align: center;
      margin: 30px auto;
      justify-content: space-around;
      flex-wrap: wrap;
    }
    .scene-wrap .button-wrap > * {
      width: 50%;
    }


  </style>
</scene>
