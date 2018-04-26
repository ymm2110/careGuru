<scenario>
  <section class="scene-wrap wrap-anime" if={!gameover}>
    <div class="status">
      <p>health: {health}</p>
      <p>money: {money}</p>
    </div>
    <div class="scene-main"><sceneactionfeedback data={feedback} if={feedback}></sceneactionfeedback>
      <sceneboard data={currentScene}></sceneboard>
      <sceneactionwarn data={currentOption} if={currentOption}></sceneactionwarn>
      <ul class="button-wrap">
        <li onclick={option} each={i in currentScene.options} } id={i.optionLinkTo} >{i.optionName}</li>
      </div>
    </div>
  </section>
  <section class="scene-gameover" if={gameover}>
    The Game is Over, be cautious !!!
  </section>

  <script>



    this.gameover = false;
    this.health = 50;
    this.money = 100;
    this.feedback = undefined;

    this.currentSceneId = 0;
    this.currentScene = this.opts.data.scenarioContent[this.currentSceneId];
    // console.log(this.currentScene)
    // console.log(this.currentScene.scenarioContent[0].options);
    this.currentOption = undefined;

    option(e) {
      var nextSceneId = e.currentTarget.id;
      this.currentOption = e.item.i;
      // console.log(e.item.i);
      this.feedback = undefined;
    }

  </script>

  <style>
    .scene-wrap {
      padding: 40px 20px;
      min-width: 270px;
      height: 100px;
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
      
    }
    .scene-wrap .button-wrap {
      width: 100%;
      display: flex;
      flex-direction: column;
      text-align: center;
      margin: 30px auto;
      justify-content: space-around;
      flex-wrap: wrap;
    }
    .scene-wrap .button-wrap > * {
      margin: 5px 0;
      background: #fff;
      border-radius: 5px;
      transition: all .4s;
      padding: 10px 0px 10px 30px;
      cursor: pointer;
      text-align: left;
      position: relative;
      overflow: hidden;
    }
    
    .scene-wrap .button-wrap > *::after {
      content: "";
      position: absolute;
      left: 0;
      top: 0;
      height: 100%;
      width: 4px;
      background: #EE7379;
      transition: transform .4s ease-in-out;
      border-radius: 5px;
      transform: translateX(-2px);
    }

    .scene-wrap .button-wrap > *:hover {
      box-shadow: 3px 3px 20px 0 rgba(0, 0, 0, 0.1);
      transform: translateY(1px);
    }
    
    .scene-wrap .button-wrap > *:hover:after {
      transform: translateX(0px);
    }

    .scene-wrap .scene-main {
      flex: 1 1 auto;
      flex-basis: 300px;
      margin: 0 60px;
    }

    .scene-wrap .status {
      background: #fff;
      min-width: 200px;
      height: 270px;
      border-radius: 5px;
      box-shadow: 1px 1px 10px 0 rgba(0, 0, 0, 0.1);
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }
  </style>
</scenario>