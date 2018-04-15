<panel-head>
  <header class="panel-head">
    <nav>
      <ul class="clearfix">
        <li onclick={logOut}><img src={user.photoURL} alt="profile"> Sign Out</li>
        <li><i class="fa fa-gear"></i></li>
        <li><i class="fa fa-search"></i></li>
      </ul>
    </nav>
  </header>
  <script>
    this.user = this.parent.parent.user; //get the user object
    console.log(this.user.photoURL)
    // console.log('from head' + this.parent.parent.user.uid + "/home");
    var that = this;
      logOut() {
        firebase.auth().signOut().then(function () {
          // Sign-out successful.
          route('home');
        }).catch(function (error) {
          // An error happened.
        });
      }

      this.on('mount', function () {
        firebase.auth().onAuthStateChanged(function (userObj) {
          that.parent.user = firebase.auth().currentUser;
          that.parent.update();
        })
      })
  </script>

  <style>
    header {
      border-bottom: 1px solid #F9FAFB;
      background: #fff;
    }

    
    header nav ul li:nth-child(n+2):nth-child(-n+3) {
      border-right: 1px solid #EBECEE;
    }
    header nav ul li{
      float: right;
      padding: 16px 30px;
    }

    header nav ul li:first-child {
      padding-left: 7%;
    }

    header > nav > ul > li {
      cursor: pointer;
      position: relative;
    }
    
    header > nav > ul > li > img{
      width: 40px;
      height: auto;
      position: absolute;
      top: 50%;
      margin-top: -20px;
      left: 10%;
    }



  </style>
</panel-head>
