
<panel-sidebar>
    <ul>
      <li><img src="./../img/logo2.png" alt="logo"></li>
      <li class={activeSideBar: currentPage === 'home'}><a href="#{this.parent.parent.user.uid}/home"><i class="fa fa-home"></i></a></li>
      <li class={activeSideBar: currentPage === 'product'}><a href="#{this.parent.parent.user.uid}/product"><i class="fa fa-tachometer"></i></a></li>
      <li class={activeSideBar: currentPage === 'community'}><i class="fa fa-comment"></i></li>
      <li class={activeSideBar: currentPage === 'notification'}><i class="fa fa-bell"></i></li>
    </ul>
  <script> 
    var that = this;
    this.on('update', function() {
      that.currentPage = that.parent.currentPage; //obtain the current page from parent tag to switch mode
    })
  </script>

  <style>
    ul {
      text-align: center;
    }

    ul > li {
      padding: 30px 5px;
      font-size: 1.2em;
      color: #BAC0CD;
      transition: all .4s;
    }
    ul > li > a{
      color: inherit;
    }

    ul > li:first-child {
      padding: 20px 5px;
    }

    ul > li > img {
      width: 30px;
      height: auto;
    }

    ul > li.activeSideBar {
      color: #F07277;
      position: relative;
    }
    ul > li.activeSideBar:after {
      content: "";
      position: absolute;
      right: 0;
      top: 0;
      bottom: 0;
      margin: auto 0;
      height: 50%;
      width: 2px;
      border-radius: 2px;
      background: #F07277;
    }
  </style>
</panel-sidebar>
