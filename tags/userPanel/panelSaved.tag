
<panelSaved>
  <div class="wrap-anime save-wrap">
    <h3 class=" heading">This are the save info messages ({saved.length})</h3>
    <section class="save-wrap-piece">
      <ul class="saved-info bar-shape" each={i in saved} onclick={viewEach}>
      <li>{i.title}</li>
      </ul>
    </section>
  </div>

  <script>
    var that = this;
    this.uid = this.parent.uid;
    this.userInfo = 0;
    this.saved = undefined;
    viewEach(e) {
      this.parent.eachSaved = e.item.i;
      this.parent.viewAll = false;
      this.parent.update();
    }


    this.on('mount', function() {
      careGuruRef.orderByKey().equalTo(that.uid).on('value', function (e) {
        var data = Object.values(e.val())[0];
        that.userInfo = data;
        var starredArticle = Object.values(that.userInfo.starredArticle);
        that.saved = starredArticle;
        that.update();
      })
    })
  </script>

  <style>
    .save-wrap {
      height: calc(100% - 103px);
      margin: 25px;
    }

    .save-wrap .heading {
      margin: 20px 0 50px 0;
      position: relative;
      font-weight: 100;
    }
    
    .save-wrap .heading::after {
      content: "";
      position: absolute;
      bottom: -30px;
      width: 100%;
      left: 0;
      height: 2px;
      background-color: #DDE1EC;
    }
    ::-webkit-scrollbar {
      display: none;
    }

    .save-wrap-piece {
      height: calc(100% - 70px);
      overflow: scroll;
    }
  </style>
</panelSaved>
