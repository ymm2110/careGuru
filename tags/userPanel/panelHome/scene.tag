
<scene>
  <section class="scene-wrap wrap-anime" if={!gameover}>
    <sceneBoard data = {currentScene}></sceneBoard>
    <sceneActionWarn data = {currentOption} if = {currentOption}></sceneActionWarn>
    <sceneActionfeedback data = {feedback} if = {feedback}></sceneActionfeedback>
    <div class="button-wrap">
      <button onclick={option} id = {i.optionLinkTo} each = {i in currentScene.options}>{i.optionName}</button>
    </div>

    <p>blood: {blood}</p>
    <p>money: {money}</p>
  </section>
  <section class="scene-gameover" if={gameover}>
    The Game is Over, be cautious about your insurance !!!
  </section>
  <script>
    this.gameover = false;
    this.blood = 100;
    this.money = 1000;
    this.feedback = undefined;
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
              blood: -30,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option1 from scene1? This will ......",
              choosedFeedback: "glad you choose this option1"
            },
          },
          option2: {
            optionName: "option2 from scene1",
            optionLinkTo: 3,
            optionResults: {
              blood: 10,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option1 from scene1? This will ......",
              choosedFeedback: "glad you choose this option2"
            },
          }
        }  
      },
      {
        question: "question2",
        descrip: "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
        imgurl: "sadsadada",
        sceneId: 1,
        options: {
          option1: {
            optionName: "option1 from scene2",
            optionLinkTo: 4,
            optionResults: {
              blood: -40,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option1 from scene2? This will ......",
              choosedFeedback: "glad you choose this option1"
            },
          },
          option2: {
            optionName: "option2 from scene2",
            optionLinkTo: 1,
            optionResults: {
              blood: -50,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option1 from scene2? This will ......",
              choosedFeedback: "glad you choose this option2"
            },
          }
        }  
      },
      {
        question: "question3",
        descrip: "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
        imgurl: "sadsadada",
        sceneId: 1,
        options: {
          option1: {
            optionName: "option1 from scene3",
            optionLinkTo: 3,
            optionResults: {
              blood: 10,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option1 from scene3? This will ......",
              choosedFeedback: "glad you choose this option1"
            },
          },
          option2: {
            optionName: "option2 from scene3",
            optionLinkTo: 4,
            optionResults: {
              blood: 10,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option2 from scene3? This will ......",
              choosedFeedback: "glad you choose this option2"
            },
          },
          option3: {
            optionName: "option3 from scene3",
            optionLinkTo: 4,
            optionResults: {
              blood: 10,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option3 from scene3? This will ......",
              choosedFeedback: "glad you choose this option2"
            },
          },
          option4: {
            optionName: "option4 from scene3",
            optionLinkTo: 4,
            optionResults: {
              blood: 10,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option4 from scene3? This will ......",
              choosedFeedback: "glad you choose this option2"
            },
          },
        }  
      },
      {
        question: "question4",
        descrip: "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
        imgurl: "sadsadada",
        sceneId: 1,
        options: {
          option1: {
            optionName: "option1 from scene4",
            optionLinkTo: 3,
            optionResults: {
              blood: 10,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option1 from scene4? This will ......",
              choosedFeedback: "glad you choose this option1"
            },
          },
          option2: {
            optionName: "option2 from scene4",
            optionLinkTo: 2,
            optionResults: {
              blood: 10,
              money: 100
            },
            optionWarn: {
              warnName: "Are you sure you want to choose option1 from scene4? This will ......",
              choosedFeedback: "glad you choose this option2"
            },
          }
        }  
      },
      
    ]

    this.currentScene = this.scenarioData[0];
    this.currentOption = undefined;

    option(e) {
      var nextSceneId = e.currentTarget.id;
      this.currentOption = e.item.i;
      this.feedback = undefined;
    }

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
