
<panelHome>
  <div class="home-wrap" if={!homePage}>
    <h1>Hi this is home</h1>
    <section class="wrap tobeanimate">
      <div class="home-option" each = {i in options} onclick={enter}>
        <img src={i.imgSrc} alt={i.title} >
        <h3>{i.title}</h3>
      </div>
    </section>
  </div>

  <info if={homePage === "must-know-info"}></info>
  <scene if={homePage === "learning-scene"}></scene>
  <reminder if={homePage === "reminder"}></reminder>

  <script>
   this.options = [
     {
      imgSrc: "../img/app1.jpg",
      title: "Must-Know Information",
      homePage: "must-know-info"
     },
     {
      imgSrc: "../img/app1.jpg",
      title: "Learning Scenarios",
      homePage: "learning-scene"
     },
     {
      imgSrc: "../img/app1.jpg",
      title: "Personalized reminder",
      homePage: "reminder"
     }
   ]
  
    enter(e) {
      this.homePage = e.item.i.homePage;
    }

    this.on('before-unmount', function() {
      // var wrap = document.querySelector('.tobeanimate');
      // // wrap.classList.remove('slideIn');
      // console.log(wrap);
    })
  </script>

  <style>
    .home-wrap {

    }

    h1 {
      text-align: center;
      padding: 40px 0;
    }
    
    .wrap {
      display: flex;
      justify-content: center;
      text-align: center;
      flex-wrap: wrap;
      overflow: auto;
      height: 450px;
      animation: slideIn ease-in-out 1s forwards;
    }

    .wrap .home-option {
      width: 250px;
      height: 280px;
      background: #fff;
      margin: 20px 50px;
      box-shadow: 1px 1px 5px 0 rgba(0, 0, 0, 0.1);
      border-radius: 6px;
      box-sizing: border-box;
      padding: 20px;
      transition: box-shadow .3s ease-in-out;
    }
    .wrap .home-option h3{
      font-weight: 100;

    }

    .wrap .home-option:hover {
      box-shadow: 5px 5px 10px 0 rgba(0, 0, 0, 0.1);
    }
    
    .wrap .home-option img{
      width: 50px;
      height: 50px;
      border-radius: 50%;

    }
  </style>
</panelHome>
