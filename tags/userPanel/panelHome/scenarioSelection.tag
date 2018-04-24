<scenarioSelection>

  <button type="button" name="button" each = {i in scenarioData} onclick={selectScenario} if={!currentScenario}> { i.scenarioName }</button>

  <section>
    <scenario each={i in scenarioData } data= { i } } if={i.scenarioID == this.currentScenario}></scenario>
  </section>

  <script>

    // this.currentScenario = this.scenarioData[0];
    this.currentScenario = undefined;


    this.scenarioData =
    [
      {
        scenarioID: 1,
        scenarioName: "Scenario 1",
        scenarioIntroduction: "Hello! I'm Greg. I'm 20 years old. I'm a junior in Boston College junior. I'm an international student from Singapore, and I have BC’s student health insurance.",
        scenarioContent:
        [
          {
              question: "question1",
            descrip: "descrip1",
            imgurl: "sadsadada",
            sceneId: 1,
            options:
            {
              option1:
              {
                optionName: "option1",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +25,
                  money: -40
                },
                optionWarn:
                {
                  warnName: "Have you think about: Even though 911 is the go-to resource for seeking emergency help, they may not have equipment and access to go up to the mountain. This may result a very long waiting time or being redirected to other rescuing agencies",
                  choosedFeedback: "911 answered the call and come to the ski resort. However, their vehicle couldn’t come up to where Greg is. Paramedics asked the Ski Patrol to rescue Greg down and took him into the hospital directly after half an hour. Greg got x-rayed and diagnos" +
                      "ed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option2:
              {
                optionName: "Help Greg to snowboard down to the Ski Patrol office for help",
                optionLinkTo: 3,
                optionResults:
                {
                  health: -50,
                  money: -0
                },
                optionWarn:
                {
                  warnName: "STOP! Moving an injured person without medical assessment is extremely risky and may cause further injuries.",
                  choosedFeedback: "You and Grey managed to come down to the bottom (miraculously), but Grey’s situation is much more worse. He’s in huge pain. Greg found unsafe to let you make decisions for him. He decided to make his own decisions."
                }
              },
              option3:
              {
                optionName: "Ask an experienced skier who is passing by to contact Ski Patrol for help",
                optionLinkTo: 2,
                optionResults:
                {
                  health: + 0,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "Make sure the skier knows the exact location and what happened to Greg",
                  choosedFeedback: "Ski patrollers got notified and came to Gray in around 10 minutes. They put Greg in a rescue toboggan to take him down the mountain."
                }
              },
              option4:
              {
                optionName: "Snowboard down the mountain yourself to the Ski Patrol office for help",
                optionLinkTo: 2,
                optionResults:
                {
                  health: -5,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "Are you sure? Greg is injured and in pain. Are you sure you want to leave him in the cold alone and unattended?",
                  choosedFeedback: "Greg waited in the cold by himself lonely and scared for around 10 minutes. Ski patrollers came and put Greg in a rescue toboggan to take him down the mountain"
                }
              }
            }
          },
          {
            question: "question2",
            descrip: "descrip2",
            imgurl: "sadsadada",
            sceneId: 2,
            options:
            {
              option1:
              {
                optionName: "Ask the ski patrol office to call you an ambulance",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -40
                },
                optionWarn:
                {
                  warnName: "Ambulances are expensive. Do you know how much your insurance will cover if you call an ambulances? Also, emergency rooms rank patients’ priorities by the seriousness of their conditions. Non life-threatening conditions may result in long waiting t" +
                      "ime.",
                  choosedFeedback: "Ambulance came and took Greg into the emergency room of a nearby hospital. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option2:
              {
                optionName: "Ask George to drive you to an emergency room",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -25
                },
                optionWarn:
                {
                  warnName: "You’re on your way to see a doctor! But before you go, consider this:  emergency rooms rank patients’ priorities by the seriousness of their conditions. Non life-threatening conditions may result in long waiting time. Also, base on your insurance p" +
                      "olicy, you may pay more than visiting an urgent care center.",
                  choosedFeedback: "Greg waited in the emergency room for one and half hours. A doctor took Greg’s x-ray and diagnosed him. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option3:
              {
                optionName: "Ask George to drive you to an urgent care center",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -10
                },
                optionWarn:
                {
                  warnName: "You’re on your way to see a doctor! Normally visiting an urgent care center cost less and take less waiting time. However, double check with the on-site doctor if Greg has any life-threatening conditions before you go. If he does, go the the emerge" +
                      "ncy room immediately.",
                  choosedFeedback: "Greg got x-rayed and diagnosed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option4:
              {
                optionName: "Go back to the hotel since you think the shin will gets better and you doesn’t want to pay medical bills.",
                optionLinkTo: 3,
                optionResults:
                {
                  health: -20,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "You’re risking your health! If you don’t get treatment on time, it’s possible that undiagnosed injuries pose high risks to your well-being, and potentially put you into critical conditions.",
                  choosedFeedback: "Greg’s leg kept hurting him, and on the next morning, his shin became turgid."
                }
              },
              option5:
              {
                optionName: "Wait until you go back to boston to see a doctor, because you’re under student insurance and need referrals from the student health center to see a doctor.",
                optionLinkTo: 3,
                optionResults:
                {
                  health: -20,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "Wrong assumption! Read your school’s health care website and your insurance policy. You do not need  referrals when it’s an emergency.",
                  choosedFeedback: "Greg waited till the next morning. Greg’s leg kept hurting him and his shin became turgid."
                }
              }
            }
          },
          {
            question: "question3",
            descrip: "descrip3",
            imgurl: "sadsadada",
            sceneId: 3,
            options:
            {
              option1:
              {
                optionName: "Ask the ski patrol office to call you an ambulance",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -40
                },
                optionWarn:
                {
                  warnName: "Ambulances are expensive. Do you know how much your insurance will cover if you call an ambulances? Also, emergency rooms rank patients’ priorities by the seriousness of their conditions. Non life-threatening conditions may result in long waiting t" +
                      "ime.",
                  choosedFeedback: "Ambulance came and took Greg into the emergency room of a nearby hospital. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option2:
              {
                optionName: "Ask George to drive you to an emergency room",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -25
                },
                optionWarn:
                {
                  warnName: "You’re on your way to see a doctor! But before you go, consider this:  emergency rooms rank patients’ priorities by the seriousness of their conditions. Non life-threatening conditions may result in long waiting time. Also, base on your insurance p" +
                      "olicy, you may pay more than visiting an urgent care center.",
                  choosedFeedback: "Greg waited in the emergency room for one and half hours. A doctor took Greg’s x-ray and diagnosed him. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option3:
              {
                optionName: "Ask George to drive you to an urgent care center",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -10
                },
                optionWarn:
                {
                  warnName: "You’re on your way to see a doctor! Normally visiting an urgent care center cost less and take less waiting time. However, double check with the on-site doctor if Greg has any life-threatening conditions before you go. If he does, go the the emerge" +
                      "ncy room immediately.",
                  choosedFeedback: "Greg got x-rayed and diagnosed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option4:
              {
                optionName: "Go back to the hotel since you think the shin will gets better and you doesn’t want to pay medical bills.",
                optionLinkTo: 3,
                optionResults:
                {
                  health: -20,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "You’re risking your health! If you don’t get treatment on time, it’s possible that undiagnosed injuries pose high risks to your well-being, and potentially put you into critical conditions.",
                  choosedFeedback: "Greg’s leg kept hurting him, and on the next morning, his shin became turgid."
                }
              },
              option5:
              {
                optionName: "Wait until you go back to boston to see a doctor, because you’re under student insurance and need referrals from the student health center to see a doctor.",
                optionLinkTo: 3,
                optionResults:
                {
                  health: -20,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "Wrong assumption! Read your school’s health care website and your insurance policy. You do not need  referrals when it’s an emergency.",
                  choosedFeedback: "Greg waited till the next morning. Greg’s leg kept hurting him and his shin became turgid."
                }
              }
            }
          }
        ]
      },
      {
        scenarioID: 2,
        scenarioName: "Scenario 2",
        scenarioIntroduction: "Scenario 2 - need update",
        scenarioContent:
        [
          {
            question: "As George, what should you do?",
            descrip: "Scenario 2 Scene 1 Description - need update",
            imgurl: "sadsadada",
            sceneId: 1,
            options:
            {
              option1:
              {
                optionName: "Call 911 to ask for an ambulance",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +25,
                  money: -40
                },
                optionWarn:
                {
                  warnName: "Have you think about: Even though 911 is the go-to resource for seeking emergency help, they may not have equipment and access to go up to the mountain. This may result a very long waiting time or being redirected to other rescuing agencies",
                  choosedFeedback: "911 answered the call and come to the ski resort. However, their vehicle couldn’t come up to where Greg is. Paramedics asked the Ski Patrol to rescue Greg down and took him into the hospital directly after half an hour. Greg got x-rayed and diagnos" +
                      "ed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option2:
              {
                optionName: "Help Greg to snowboard down to the Ski Patrol office for help",
                optionLinkTo: 3,
                optionResults:
                {
                  health: -50,
                  money: -0
                },
                optionWarn:
                {
                  warnName: "STOP! Moving an injured person without medical assessment is extremely risky and may cause further injuries.",
                  choosedFeedback: "You and Grey managed to come down to the bottom (miraculously), but Grey’s situation is much more worse. He’s in huge pain. Greg found unsafe to let you make decisions for him. He decided to make his own decisions."
                }
              },
              option3:
              {
                optionName: "Ask an experienced skier who is passing by to contact Ski Patrol for help",
                optionLinkTo: 2,
                optionResults:
                {
                  health: + 0,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "Make sure the skier knows the exact location and what happened to Greg",
                  choosedFeedback: "Ski patrollers got notified and came to Gray in around 10 minutes. They put Greg in a rescue toboggan to take him down the mountain."
                }
              },
              option4:
              {
                optionName: "Snowboard down the mountain yourself to the Ski Patrol office for help",
                optionLinkTo: 2,
                optionResults:
                {
                  health: -5,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "Are you sure? Greg is injured and in pain. Are you sure you want to leave him in the cold alone and unattended?",
                  choosedFeedback: "Greg waited in the cold by himself lonely and scared for around 10 minutes. Ski patrollers came and put Greg in a rescue toboggan to take him down the mountain "
                }
              }
            }
          },
          {
            question: "As Greg, what do you want to do?",
            descrip: "In the Ski Patrol office, patrollers examined Greg briefly. Greg seemed very conscious, and could response to all questions normally. His breathing difficulties went away. His blood pressure and other health indicating measurements were within norm" +
                "al range. However,  his left shin kept giving him pain. The on-site doctor said she couldn’t tell if Greg’s bones are broken because of no x-ray. She gave Greg ice packs, wrapped his shin with supports, and suggested Greg to go to another doctor.",
            imgurl: "sadsadada",
            sceneId: 2,
            options:
            {
              option1:
              {
                optionName: "Ask the ski patrol office to call you an ambulance",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -40
                },
                optionWarn:
                {
                  warnName: "Ambulances are expensive. Do you know how much your insurance will cover if you call an ambulances? Also, emergency rooms rank patients’ priorities by the seriousness of their conditions. Non life-threatening conditions may result in long waiting t" +
                      "ime.",
                  choosedFeedback: "Ambulance came and took Greg into the emergency room of a nearby hospital. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option2:
              {
                optionName: "Ask George to drive you to an emergency room",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -25
                },
                optionWarn:
                {
                  warnName: "You’re on your way to see a doctor! But before you go, consider this:  emergency rooms rank patients’ priorities by the seriousness of their conditions. Non life-threatening conditions may result in long waiting time. Also, base on your insurance p" +
                      "olicy, you may pay more than visiting an urgent care center.",
                  choosedFeedback: "Greg waited in the emergency room for one and half hours. A doctor took Greg’s x-ray and diagnosed him. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option3:
              {
                optionName: "Ask George to drive you to an urgent care center",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -10
                },
                optionWarn:
                {
                  warnName: "You’re on your way to see a doctor! Normally visiting an urgent care center cost less and take less waiting time. However, double check with the on-site doctor if Greg has any life-threatening conditions before you go. If he does, go the the emerge" +
                      "ncy room immediately.",
                  choosedFeedback: "Greg got x-rayed and diagnosed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option4:
              {
                optionName: "Go back to the hotel since you think the shin will gets better and you doesn’t want to pay medical bills.",
                optionLinkTo: 3,
                optionResults:
                {
                  health: -20,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "You’re risking your health! If you don’t get treatment on time, it’s possible that undiagnosed injuries pose high risks to your well-being, and potentially put you into critical conditions.",
                  choosedFeedback: "Greg’s leg kept hurting him, and on the next morning, his shin became turgid."
                }
              },
              option5:
              {
                optionName: "Wait until you go back to boston to see a doctor, because you’re under student insurance and need referrals from the student health center to see a doctor.",
                optionLinkTo: 3,
                optionResults:
                {
                  health: -20,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "Wrong assumption! Read your school’s health care website and your insurance policy. You do not need  referrals when it’s an emergency.",
                  choosedFeedback: "Greg waited till the next morning. Greg’s leg kept hurting him and his shin became turgid."
                }
              }
            }
          }
        ]
      },
      {
        scenarioID: 3,
        scenarioName: "Scenario 3",
        scenarioIntroduction: "Scenario 3 - need update",
        scenarioContent:
        [
          {
            question: "As George, what should you do?",
            descrip: "Scenario 3 Scene 1 Description - need update",
            imgurl: "sadsadada",
            sceneId: 1,
            options:
            {
              option1:
              {
                optionName: "Call 911 to ask for an ambulance",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +25,
                  money: -40
                },
                optionWarn:
                {
                  warnName: "Have you think about: Even though 911 is the go-to resource for seeking emergency help, they may not have equipment and access to go up to the mountain. This may result a very long waiting time or being redirected to other rescuing agencies",
                  choosedFeedback: "911 answered the call and come to the ski resort. However, their vehicle couldn’t come up to where Greg is. Paramedics asked the Ski Patrol to rescue Greg down and took him into the hospital directly after half an hour. Greg got x-rayed and diagnos" +
                      "ed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option2:
              {
                optionName: "Help Greg to snowboard down to the Ski Patrol office for help",
                optionLinkTo: 3,
                optionResults:
                {
                  health: -50,
                  money: -0
                },
                optionWarn:
                {
                  warnName: "STOP! Moving an injured person without medical assessment is extremely risky and may cause further injuries.",
                  choosedFeedback: "You and Grey managed to come down to the bottom (miraculously), but Grey’s situation is much more worse. He’s in huge pain. Greg found unsafe to let you make decisions for him. He decided to make his own decisions."
                }
              },
              option3:
              {
                optionName: "Ask an experienced skier who is passing by to contact Ski Patrol for help",
                optionLinkTo: 2,
                optionResults:
                {
                  health: + 0,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "Make sure the skier knows the exact location and what happened to Greg",
                  choosedFeedback: "Ski patrollers got notified and came to Gray in around 10 minutes. They put Greg in a rescue toboggan to take him down the mountain."
                }
              },
              option4:
              {
                optionName: "Snowboard down the mountain yourself to the Ski Patrol office for help",
                optionLinkTo: 2,
                optionResults:
                {
                  health: -5,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "Are you sure? Greg is injured and in pain. Are you sure you want to leave him in the cold alone and unattended?",
                  choosedFeedback: "Greg waited in the cold by himself lonely and scared for around 10 minutes. Ski patrollers came and put Greg in a rescue toboggan to take him down the mountain "
                }
              }
            }
          },
          {
            question: "As Greg, what do you want to do?",
            descrip: "In the Ski Patrol office, patrollers examined Greg briefly. Greg seemed very conscious, and could response to all questions normally. His breathing difficulties went away. His blood pressure and other health indicating measurements were within norm" +
                "al range. However,  his left shin kept giving him pain. The on-site doctor said she couldn’t tell if Greg’s bones are broken because of no x-ray. She gave Greg ice packs, wrapped his shin with supports, and suggested Greg to go to another doctor.",
            imgurl: "sadsadada",
            sceneId: 2,
            options:
            {
              option1:
              {
                optionName: "Ask the ski patrol office to call you an ambulance",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -40
                },
                optionWarn:
                {
                  warnName: "Ambulances are expensive. Do you know how much your insurance will cover if you call an ambulances? Also, emergency rooms rank patients’ priorities by the seriousness of their conditions. Non life-threatening conditions may result in long waiting t" +
                      "ime.",
                  choosedFeedback: "Ambulance came and took Greg into the emergency room of a nearby hospital. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option2:
              {
                optionName: "Ask George to drive you to an emergency room",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -25
                },
                optionWarn:
                {
                  warnName: "You’re on your way to see a doctor! But before you go, consider this:  emergency rooms rank patients’ priorities by the seriousness of their conditions. Non life-threatening conditions may result in long waiting time. Also, base on your insurance p" +
                      "olicy, you may pay more than visiting an urgent care center.",
                  choosedFeedback: "Greg waited in the emergency room for one and half hours. A doctor took Greg’s x-ray and diagnosed him. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option3:
              {
                optionName: "Ask George to drive you to an urgent care center",
                optionLinkTo: 4,
                optionResults:
                {
                  health: +30,
                  money: -10
                },
                optionWarn:
                {
                  warnName: "You’re on your way to see a doctor! Normally visiting an urgent care center cost less and take less waiting time. However, double check with the on-site doctor if Greg has any life-threatening conditions before you go. If he does, go the the emerge" +
                      "ncy room immediately.",
                  choosedFeedback: "Greg got x-rayed and diagnosed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
                }
              },
              option4:
              {
                optionName: "Go back to the hotel since you think the shin will gets better and you doesn’t want to pay medical bills.",
                optionLinkTo: 3,
                optionResults:
                {
                  health: -20,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "You’re risking your health! If you don’t get treatment on time, it’s possible that undiagnosed injuries pose high risks to your well-being, and potentially put you into critical conditions.",
                  choosedFeedback: "Greg’s leg kept hurting him, and on the next morning, his shin became turgid."
                }
              },
              option5:
              {
                optionName: "Wait until you go back to boston to see a doctor, because you’re under student insurance and need referrals from the student health center to see a doctor.",
                optionLinkTo: 3,
                optionResults:
                {
                  health: -20,
                  money: + 0
                },
                optionWarn:
                {
                  warnName: "Wrong assumption! Read your school’s health care website and your insurance policy. You do not need  referrals when it’s an emergency.",
                  choosedFeedback: "Greg waited till the next morning. Greg’s leg kept hurting him and his shin became turgid."
                }
              }
            }
          }
        ]
      }
    ]


  enter(e) {
    this.scenarioSelection = e.item.i.scenarioSelection;
  }

  this.on('before-unmount', function () {
    // var wrap = document.querySelector('.tobeanimate');  wrap.classList.remove('slideIn'); console.log(wrap);
  })


  selectScenario(e) {
    console.log(e.item.i)
    var id = e.item.i.scenarioID;
    this.currentScenario = id;

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
</scenarioSelection>
