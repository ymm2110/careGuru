<scenario>
  <section class="scene-wrap wrap-anime" if={!gameover}>
    <div class="status">
      <p>{scenarioIntroduction}</p>
      <p>health: {health}</p>
      <p>money: {money}</p>
    </div>
    <div class="scene-main"><sceneactionfeedback data={feedback} if={feedback}></sceneactionfeedback>
      <sceneboard data={currentScene}></sceneboard>
      <sceneactionwarn data={currentOption} if={currentOption}></sceneactionwarn>
      <ul class="bar-shape">
        <li onclick={option} each={i in currentScene.options} } id={i.optionLinkTo} >{i.optionName}</li>
      </ul>
    </div>
  </section>
  <section class="scene-gameover" if={gameover}>
    The Game is Over, be cautious !!!
  </section>

  <script>



    this.gameover = false;
    this.scenarioIntroduction = this.opts.data.scenarioIntroduction;
    this.health = 50;
    this.money = 100;
    this.feedback = undefined;

    this.currentSceneId = 0;
    this.currentScene = this.opts.data.scenarioContent[this.currentSceneId];
    this.currentOption = undefined;

    option(e) {
      var nextSceneId = e.currentTarget.id;
      this.currentOption = e.item.i;
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
    .scene-wrap .bar-shape {
      width: 100%;
      display: flex;
      flex-direction: column;
      text-align: center;
      margin: 30px auto;
      justify-content: space-around;
      flex-wrap: wrap;
    }
    .scene-wrap .bar-shape > * {
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

    .scene-wrap .bar-shape > *::after {
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

    .scene-wrap .bar-shape > *:hover {
      box-shadow: 3px 3px 20px 0 rgba(0, 0, 0, 0.1);
      transform: translateY(1px);
    }

    .scene-wrap .bar-shape > *:hover:after {
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
      max-width: 30%;
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
