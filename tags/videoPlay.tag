
<videoPlay>
 <div class="wrap" ref="wrap">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/DBTmNm8D-84?enablejsapi=1" frameborder="0" id="video"></iframe>
  <button id="close" onclick={closeVideo} ref="closeBtn">close</button>
 </div>
  <script>
    var that = this;
    closeVideo() {
      this.parent.videoPlay = false;
      this.parent.parent.videoPlay = false;
      setTimeout(function() {
        that.parent.update();
      }, 1000)
      this.parent.update(); //close videoPlay tag
      this.parent.parent.update(); //close shadow layer in app.tag

    }

    this.on('mount', function () {
        var wrap = this.refs.wrap;
        wrap.classList.add('fallDown');
      })
      this.on('before-unmount', function () {
        var wrap = this.refs.wrap;
        wrap.classList.remove('fallDown');
      })


  </script>

  <style>
    .wrap {
      position: fixed;
      top: 0;
      bottom: 0;
      right: 0;
      left: 0;
      margin: 0 auto;
      z-index: 12;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }

    #close {
      margin-top: 20px;
      display: block;
      font-size: 1em;
      padding: 5px 1em;
      border: 1px solid #F07277;
      border-radius: 4px;
      color: #F07277;
      background: transparent;
      cursor: pointer;
    }

    #close:hover {
      color: #fff;
      background: #F07277;
    }
  </style>
</videoPlay>
