
<app>
  <!-- <login></login> -->
  
  <home if={ page==='home' } page = {page}></home>
  <tour if ={ page === 'tour' } page = {page}></tour>
  <faqs if ={ page === 'faqs' } page = {page}></faqs>
  <contact if ={ page === 'contact' } page = {page}></contact>


  <script>

    var that = this;
    this.page = "home";
    var Router = route.create();
    Router('*', function (page) {
      that.page = page;
      that.update();
      console.log(that.page)
    })

    route.start(true);


  </script>

  
  
  <style>
    
    

  </style>
</app>
