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
    this.userInfo;
    this.currentPage; //obtain the current page name
    
    var subRoute = route.create();
    subRoute(`${this.uid}/*`, function(page) {
      that.subpage = that.uid + "/" + page;
      that.currentPage = page;
      that.update();
    })
    subRoute(this.uid, function(page) {
      that.subpage = that.uid + '/home';
      that.currentPage = 'home';
      that.update();
    })

    this.on('mount', function(){
      route.exec();
      
     //do query from database
      careGuruRef.orderByKey().equalTo(that.uid).on('value', function(e) {
        var data = e.val()       
        that.userInfo = data;
      })
    })

    this.on('unmount', function() {
      subRoute.stop();
    })

  </script>


  <style>
    :scope .wrap {
      display: flex;
      width: 100%;
      height: 100%;
    }

    .wrap .sidebar, .wrap main {
      flex: 1 1;
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
