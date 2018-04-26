
<sceneActionWarn>
  <div class="sceneWarn-wrap wrap-anime">
    <p> {this.opts.data.optionWarn.warnName}</p>
    <div class="warn-buttons">
      <button onclick={confirm} class="confirm">Continue with This Option <i class="fa fa-arrow-up"></i></button>
      <button onclick={cancle} class="cancle">Choose Again<i class="fa fa-arrow-down"></i></button>
    </div>
  </div>
  <script>
    confirm() {
      //change the scene and switch the warn and feedback
      var nextSceneId = this.opts.data.optionLinkTo;
      this.parent.currentSceneId = nextSceneId - 1;
      console.log(nextSceneId - 1)
      this.parent.currentScene = this.parent.opts.data.scenarioContent[nextSceneId -1];
      console.log(this.parent.currentScene);
      this.parent.currentOption = undefined;
      this.parent.feedback = this.opts.data.optionWarn.choosedFeedback;

      //change the property of the character
      var healthChange = this.opts.data.optionResults.health;
      var moneyChange = this.opts.data.optionResults.money;
      var health = this.parent.health;
      var money = this.parent.money;
      var lefthealth = this.calc(health, money, healthChange, moneyChange).lefthealth;
      var leftMoney = this.calc(health, money, healthChange, moneyChange).leftMoney;
      this.parent.health = lefthealth;
      this.parent.money = leftMoney;

      //judge whether to end the game
      if(lefthealth <= 5 || leftMoney <= 0) {
        this.parent.gameover = true;
      }

      this.parent.update();
    }
    cancle() {
      this.parent.currentOption = undefined;
      this.parent.update();
    }

    calc(health, money, healthChange, moneyChange) {
      var lefthealth = health + healthChange;
      var leftMoney = money + moneyChange;
      return {
        lefthealth: lefthealth,
        leftMoney: leftMoney
      }
    }
  </script>

  <style>
    .sceneWarn-wrap {
      background: #fff;
      padding: 30px;
      border-radius: 5px;
      margin-top: 30px;
    }
    
    .sceneWarn-wrap .warn-buttons {
      width: 100%;
      display: flex;
      margin-top: 15px;
      justify-content: space-around;
      flex-wrap: wrap;
    }
    
    .sceneWarn-wrap .warn-buttons > * {
      flex: 1 1 auto;
      padding: 10px;
      max-width: 40%;
      min-width: 250px;
      margin-top: 15px;
      position: relative;
    }
    
    .sceneWarn-wrap .warn-buttons > * > i {
      position: absolute;
      right: 10px;
      width: 20px;
      height: 20px;
      line-height: 19px;
      top: 50%;
      margin-top: -10px;
      border-radius: 50%;
    }
    .sceneWarn-wrap .warn-buttons > .confirm {
      background: #EE7379;
      color: #fff;
      border-radius: 5px;
    }
    
    .sceneWarn-wrap .warn-buttons > .confirm > i {
      background: #e05359;
    }

    .sceneWarn-wrap .warn-buttons > .cancle {
      background: #fff;
      color: #EE7379;
      border: 1px solid #EE7379;
      border-radius: 5px;
    }
    
    .sceneWarn-wrap .warn-buttons > .cancle > i {
      background: rgb(245, 155, 159);
      color: #fff;
      line-height: 21px;
    }

  </style>
</sceneActionWarn>
