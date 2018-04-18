
<info>
  <div class="panel-main-wrap info-wrap">
    <!-- <p>Hi this is the info session</p> -->
    <infoPiece each = {i in infoPieceData} data = {i} starred = {starredArticleId} onclick={openInfo}></infoPiece>
    <infoOpen data = {openedCard || infoPieceData[0]} if={openedCard}></infoOpen>
  </div>
  <script> 
    this.userInfo = this.parent.userInfo;  
    
    var that = this;   
    this.infoPieceData = [
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha1',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha2',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha3',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha4',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha5',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha6',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha7',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha7',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha7',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiand. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha7',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiand. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha7',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiand. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha7',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiand. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha7',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiand. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha7',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiand. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha7',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiand. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
      {
        imgurl: './../../../../img/app1.jpg',
        title: 'haha7',
        content: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numquLorem ipsum dolor sit amet consectetur, adipisicing elit. Neque et aspernatur, ipsa, repudiandae minima deserunt numqu'
      },
    ]

    this.openedCard = undefined;

    openInfo(e) {
      this.openedCard = e.item.i;
      this.update();
    }

    this.on('mount', function() {
      //create an unique index id for each item and set starred to false by default
      that.infoPieceData.forEach(function(i, index) {
        i.starred = false;
        i.id = index;
      })
    
    //label the starred item from the database record
      var starredArticle = Object.values(that.userInfo.starredArticle);

      //set the item with its firebase id;
      var starredArticleObject = Object.entries(that.userInfo.starredArticle);
      starredArticleObject.forEach((i)=>{
        that.infoPieceData[i[1].id].firebaseId = i[0];
      })


      var starredArticleId = [];
      starredArticle.forEach((i) => {
        starredArticleId.push(i.id);
      })
      starredArticleId.forEach((i)=> {
        that.infoPieceData[i].starred = true;
      })
      // console.log(that.infoPieceData)
      that.update();
    })
  </script>

  <style>
    .info-wrap {
      height: 550px;
    }
  </style>
</info>
