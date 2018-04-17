
<infoPiece>
  <section class="piece-wrap wrap-anime">
    <i class="fa fa-star"></i>
    <img src={this.opts.data.imgurl} alt="piece-img" class="piece-img">
    <div class="text-wrap">
      <h3 class="text-title">{this.opts.data.title}</h3>
      <p class="text-detail">
        {this.opts.data.content}
      </p>
  </div>
  </section>
  
  <script>
    
  </script>

  <style>
    .piece-wrap {
      width: 340px;
      height: 90px;
      background: #fff;
      box-shadow: 2px 4px 10px 0 rgba(0, 0, 0, 0.2);
      overflow: hidden;
      border-radius: 4px;
      display: flex;
      justify-content: space-around;
      align-items: center;
      margin: 10px 0;
      position: relative;
    }
    .piece-wrap .fa-star {
      position: absolute;
      top: 5px;
      right: 5px;
      color: #efefef;
      cursor: pointer;
    }
    .piece-wrap img {
      width: 50px;
      height: 50px;
      border-radius: 50%;

    }
    .piece-wrap .text-wrap .text-detail {
      white-space: nowrap;
      overflow: hidden;
      width: 256px;
      text-overflow: ellipsis;
      font-size: 12px;

    }

    


  </style>
</infoPiece>
