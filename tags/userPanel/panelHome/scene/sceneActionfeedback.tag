
<sceneActionfeedback>
  <p>{this.opts.data}</p>
  <script>

  </script>

  <style>
    :scope p {
      margin: 0 0 30px 0;
      padding: 10px 30px;
      background: #EE7379;
      color: #fff;
      top: 0;
      left: 0;
      width: 100%;
      animation: slideDown 1s cubic-bezier(0.11, 0.96, 0.76, 1.61) forwards;
    }
    @keyframes slideDown {
      from {transform: translateY(-100%);}
      to {transform: translateY(0%);}
    }

  </style>
</sceneActionfeedback>
