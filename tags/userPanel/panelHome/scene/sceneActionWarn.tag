
<sceneActionWarn>
  <p> {this.opts.data.optionWarn.warnName}</p>
  <button onclick={confirm}>YES</button>
  <button onclick={cancle}>NO</button>
  <script>
    confirm() {
      //change the scene and switch the warn and feedback
      var nextSceneId = this.opts.data.optionLinkTo;
      this.parent.currentScene = this.parent.scenarioData[nextSceneId -1];
      this.parent.currentOption = undefined;
      this.parent.feedback = this.opts.data.optionWarn.choosedFeedback;

      //change the property of the character
      var bloodChange = this.opts.data.optionResults.blood;
      var moneyChange = this.opts.data.optionResults.money;
      var blood = this.parent.blood;
      var money = this.parent.money;
      var leftBlood = this.calc(blood, money, bloodChange, moneyChange).leftBlood;
      var leftMoney = this.calc(blood, money, bloodChange, moneyChange).leftMoney;
      this.parent.blood = leftBlood;
      this.parent.money = leftMoney;

      //judge whether to end the game
      if(leftBlood <= 5 || leftMoney <= 0) {
        this.parent.gameover = true;
      }

      this.parent.update();
    }
    cancle() {
      this.parent.currentOption = undefined;
      this.parent.update();
    }

    calc(blood, money, bloodChange, moneyChange) {
      var leftBlood = blood + bloodChange;
      var leftMoney = money + moneyChange;
      return {
        leftBlood: leftBlood,
        leftMoney: leftMoney
      }
    }
  </script>

  <style>
    :scope p {
      color: #000;
    }
  </style>
</sceneActionWarn>
