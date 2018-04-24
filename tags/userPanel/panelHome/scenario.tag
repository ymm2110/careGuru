<scenario>
  <section class="scene-wrap wrap-anime" if={!gameover}>

    <sceneactionfeedback data={feedback} if={feedback}></sceneactionfeedback>
    <sceneboard data={currentScene}></sceneboard>
    <sceneactionwarn data={currentOption} if={currentOption}></sceneactionwarn>
    <div class="button-wrap">
      <button onclick={option} each={i in currentScene.options} } id={i.optionLinkTo} >{i.optionName}</button>
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
</scenario>
