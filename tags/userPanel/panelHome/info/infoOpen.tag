
<infoOpen>
  <section class="infoOpen-wrap wrap-anime">
    <main class="card-body">
      <h3 class="title">{this.opts.data.title}</h3>
      <p>{this.opts.data.content}</p>
    </main>
    <footer class="card-footer">
      <div class="foot-left">
        <i class="fa fa-star"></i> STAR
      </div>
      <div class="foot-right" onclick={close}>
        CLOSE
      </div>
    </footer>
  </section>
  
  
  <script>
    var that = this;
    this.on('before-unmount', function() {
      
    })

    close() {
      var card = document.querySelector('.infoOpen-wrap');
      card.classList.add('animate-out');
      setTimeout(() => {
        this.parent.openedCard = undefined;
        that.parent.update();
      }, 500);
    }
  </script>

  <style>
    .infoOpen-wrap {
      position: fixed;
      left: 0;
      right: 0;
      top: 0;
      bottom: 0;
      margin: auto;
      width: 300px;
      max-height: 400px;
      background-color: #fff;
      box-shadow: 2px 3px 9px 0 rgba(0, 0, 0, 0.2);
    }

    .infoOpen-wrap .card-body {
      overflow: auto;
      height: 88%;
      padding: 15px;
      box-sizing: border-box;
    }
    .infoOpen-wrap .card-body .title {
      text-align: center;
    }
    .infoOpen-wrap .card-footer {
      display: flex;
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      text-align: center;
    }
    .infoOpen-wrap .card-footer > * {
      padding: 10px 0;
      flex: 1 1 auto;
      cursor: pointer;
    }
    
    .infoOpen-wrap .card-footer > *:first-child {
      
      border-right: 1px solid rgb(230, 230, 230);
    }
    
    .infoOpen-wrap .card-footer > *:first-child > i {
      color: rgb(230, 230, 230);
    }

  </style>
</infoOpen>
