
<panelSaved-view>
  <section class="wrap-anime save-wrap">
    <i class="fa fa-arrow-left" onclick={goBack}></i><h2> {this.opts.data.title}</h2>
    <main class="each-content">
      <p> { this.opts.data.content }</p>
    </main>
  </section>
  <script>
    goBack() {
      this.parent.eachSaved = null;
      this.parent.viewAll = true;
      this.parent.update();
    }
  </script>

  <style>
    .save-wrap {
      height: calc(100% - 103px);
      margin: 30px;
    }
    .save-wrap i {
      width: 40px;
      height: 40px;
      line-height: 40px;
      font-size: 20px;
      border: 1px solid #EE7379;
      color: #EE7379;
      transition: all .4s ease-in-out;
      cursor: pointer;
      display: inline-block;
      text-align: center;
      border-radius: 50%;
    }
    .save-wrap i:hover {
      background: #EE7379;
      color: #fff;
    }
    .save-wrap h2 {
      font-weight: 100;
      margin: 30px;
      display: inline-block;
    }
    .save-wrap .each-content {
      height: calc(100% - 100px);
      overflow: scroll;
    }
    
    .save-wrap .each-content p {
      line-height: 2.3em;
    }
    
    ::-webkit-scrollbar {
      display: none;
    }
  </style>
</panelSaved-view>
