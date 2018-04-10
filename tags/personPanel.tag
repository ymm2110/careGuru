<personPanel>
  <div class="panel">
    <aside class="sideBar">
      <button class="logOut" onclick={logOut}>Log Out</button>
    </aside>
    <main></main>
  </div>

  <script>
    var that = this;
    logOut() {
        firebase.auth().signOut().then(function () {
          // Sign-out successful.
        }).catch(function (error) {
          // An error happened.
        });
      }

    firebase.auth().onAuthStateChanged(function (userObj) {
      that.parent.user = firebase.auth().currentUser;
      console.log(that.parent.user)
      that.parent.update();
    })
  </script>

  <style>
    .panel {
      display: flex;

    }

    .sideBar {
      flex: 1 1 auto;
      max-width: 300px;
      background: #222;
    } 
    
    main {
      flex: 1 1 auto;
      background: lightblue;
    }
  </style>
</personPanel>
