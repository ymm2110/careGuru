
<scene>
  <section class="scene-wrap wrap-anime" if={!gameover}>
    <p>Hello! I'm Greg. I'm 20 years old. I'm a junior in Boston College junior. I'm an international student from Singapore, and I have BC’s student health insurance.
</p>
    <sceneActionfeedback data = {feedback} if = {feedback}></sceneActionfeedback>
    <sceneBoard data = {currentScene}></sceneBoard>
    <sceneActionWarn data = {currentOption} if = {currentOption}></sceneActionWarn>
    <div class="button-wrap">
      <button onclick={option} id = {i.optionLinkTo} each = {i in currentScene.options}>{i.optionName}</button>
    </div>

    <p>health: {health}</p>
    <p>money: {money}</p>
  </section>
  <section class="scene-gameover" if={gameover}>
    The Game is Over, be cautious !!!
  </section>
  <script>
    this.gameover = false;
    this.health = 50;
    this.money = 100;
    this.feedback = undefined;
    this.scenarioData = [
      {
        question: "As George, what should you do?",
        descrip: "Before Christmas, Greg went to snowboarding in Vail, Colorado with a friend. It’s his first time on the snow so he’s excited. His friend, George, is an experienced snowboarder. After a few practices on the learning slope, Greg became very confident on himself and decided to go to a blue trail with George. The first run went well and Greg started to loose his carefulness. On his second run, Greg failed to manage his speed at a shape turn, and hit a tree. He went unconscious. Fortunately, Greg’s helmet got his consciousness back quickly, but he felt difficult to breath well because of the hit in his chest. He’s left shin also hurts badly and couldn’t stand up. George noticed Greg’s situation and tried to help. Greg told George his situation and says he’s in stable condition.",
        imgurl: "sadsadada",
        sceneId: 1,
        options: {
          option1: {
            optionName: "Call 911 to ask for an ambulance",
            optionLinkTo: 4,
            optionResults: {
              health: +25,
              money: -40
            },
            optionWarn: {
              warnName: "Have you think about: Even though 911 is the go-to resource for seeking emergency help, they may not have equipment and access to go up to the mountain. This may result a very long waiting time or being redirected to other rescuing agencies",
              choosedFeedback: "911 answered the call and come to the ski resort. However, their vehicle couldn’t come up to where Greg is. Paramedics asked the Ski Patrol to rescue Greg down and took him into the hospital directly after half an hour. Greg got x-rayed and diagnosed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
            },
          },
          option2: {
            optionName: "Help Greg to snowboard down to the Ski Patrol office for help",
            optionLinkTo: 3,
            optionResults: {
              health: -50,
              money: -0
            },
            optionWarn: {
              warnName: "STOP! Moving an injured person without medical assessment is extremely risky and may cause further injuries.",
              choosedFeedback: "You and Grey managed to come down to the bottom (miraculously), but Grey’s situation is much more worse. He’s in huge pain. Greg found unsafe to let you make decisions for him. He decided to make his own decisions."
            },
          },
          option3: {
            optionName: "Ask an experienced skier who is passing by to contact Ski Patrol for help",
            optionLinkTo: 2,
            optionResults: {
              health: +0,
              money: +0
            },
            optionWarn: {
              warnName: "Make sure the skier knows the exact location and what happened to Greg",
              choosedFeedback: "Ski patrollers got notified and came to Gray in around 10 minutes. They put Greg in a rescue toboggan to take him down the mountain."
            },
          },
          option4: {
            optionName: "Snowboard down the mountain yourself to the Ski Patrol office for help",
            optionLinkTo: 2,
            optionResults: {
              health: -5,
              money: +0
            },
            optionWarn: {
              warnName: "Are you sure? Greg is injured and in pain. Are you sure you want to leave him in the cold alone and unattended?",
              choosedFeedback: "Greg waited in the cold by himself lonely and scared for around 10 minutes. Ski patrollers came and put Greg in a rescue toboggan to take him down the mountain "
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
              health: -40,
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
              health: -50,
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
              health: 10,
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
              health: 10,
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
              health: 10,
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
              health: 10,
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
              health: 10,
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
              health: 10,
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
