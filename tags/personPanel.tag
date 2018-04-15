<personPanel>
  <section class="wrap">
    <panel-sidebar class="sidebar"></panel-sidebar>
    <main>
      <panel-head></panel-head>
      <panel-home if={ subpage === `${this.uid}/home` }></panel-home>
      <panel-product if={ subpage === `${this.uid}/product` }></panel-product>
    </main>
  </section>

  <script>
    var that = this;
    this.subpage = 'home';
    this.uid = this.parent.user.uid; //obtain the user id and transform it into the unique subpage URL
    
    var subRoute = route.create();
    subRoute(`${this.uid}/*`, function(page) {
      that.subpage = that.uid + "/" + page;
      that.update();
    })
    subRoute(this.uid, function(page) {
      that.subpage = that.uid + '/home';
      that.update();
    })

    this.on('mount', function(){
      route.exec();
    })

    this.on('unmount', function() {
      subRoute.stop();
    })

  </script>


  <style>
    .wrap {
      display: flex;
      width: 100%;
    }

    .wrap .sidebar, .wrap main {
      flex: 1 1;
      height: 100vh;
      background: #ccc;
    }
    
    .wrap .sidebar{
      max-width: 60px;
      background-color: #fff;
      position: relative;
      box-shadow: 3px 0 15px 0 rgba(0, 0, 0, 0.1);
    }

    .wrap main {
      background-color: #F5F6FA;
    }

  </style>


</personPanel>
