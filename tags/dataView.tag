
<dataView>
  <div class="question-intro">
    <div class="questionText">
      <h2>The Insurance Is Annoying? <br> We Explain It.</h2>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab natus architecto molestiae! Nihil fugit repudiandae modi velit delectus similique assumenda, nam laudantium. Quidem maxime repudiandae minima blanditiis doloremque, perferendis vero.</p>
    </div>
    <div class="questionPic">
      <img src="./img/LOGO2.png" alt="logo">
    </div>
  </div>
  <button class="dataToggle" onclick={dataToggle}>How People Think About Insurance</button>
  <div class="dataWrap" show={showData} ref="showData">
    <div id="status" class="data-view"></div>
    <div id="usage" class="data-view"></div>
    <!-- <div id="rating" class="data-view"></div> -->
  </div>
  
  
  <script>
    var that = this;
    this.showData = false;
    dataToggle() {
      this.showData = true;
      this.refs.showData.classList.add('activate')
    }





    this.on('mount', function () {
        Highcharts.chart('status', {
          chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
          },
          title: {
            text: 'Status Categories of Survey Participants'
          },
          tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
          },
          plotOptions: {
            pie: {
              allowPointSelect: true,
              cursor: 'pointer',
              dataLabels: {
                enabled: false
              },
              showInLegend: true
            }
          },
          series: [{
            name: 'Percentage',
            colorByPoint: true,
            data: [{
              name: 'International Student',
              y: 80,
              sliced: true,
              selected: true,
              color: "#6FCEE9"
            }, {
              name: 'U.S. resident, student',
              y: 10,
              color: "#F07277"
            }, {
              name: 'International, employed',
              y: 5,
              color: "#414B60"
            }, {
              name: 'Other - visiting scholar',
              y: 5,
              color: "#27314D"
            }]
          }]
        });


        Highcharts.chart('usage', {
        chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
          type: 'pie'
        },
        title: {
          text: 'Have you used U.S. health insurance before?'
        },
        tooltip: {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
          pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
              enabled: false
            },
            showInLegend: true
          }
        },
        series: [{
          name: 'Percentage',
          colorByPoint: true,
          data: [{
            name: "Yes, I bought health insurance because it's required and mandatory",
            y: 78.95,
            sliced: true,
            selected: true,
            color: "#6FCEE9"
          }, {
            name: "Yes, for my own benefits.",
            y: 15.79,
            color: "#F07277"
          }, {
            name: 'No',
            y: 5.26,
            color: "#27314D"
          }]
        }]
      });


      //rating for
      // var data = [1,1,1,1,2,2,2,2,2,2,3,3,3,4,4,6,6,7,8,];

      // Highcharts.chart('rating', {
      //   title: {
      //     text: 'Highcharts Histogram'
      //   },
      //   xAxis: [{
      //     title: { text: 'Data' },
      //     alignTicks: false
      //   }, {
      //     title: { text: 'Histogram' },
      //     alignTicks: false,
      //     opposite: true
      //   }],

      //   yAxis: [{
      //     title: { text: 'Data' }
      //   }, {
      //     title: { text: 'Histogram' },
      //     opposite: true
      //   }],

      //   series: [{
      //     name: 'Histogram',
      //     type: 'histogram',
      //     xAxis: 1,
      //     yAxis: 1,
      //     baseSeries: 's1',
      //     zIndex: -1
      //   }, {
      //     name: 'Data',
      //     type: 'scatter',
      //     data: data,
      //     id: 's1',
      //     marker: {
      //       radius: 1.5
      //     }
      //   }]
      // });


      })
  </script>



  <style>

    .question-intro {
      font-weight: 100;
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
      padding: 80px 20px;
    }
    .question-intro .questionText {
      max-width: 400px;
    }
    .question-intro h2 {
      font-weight: inherit;
    }
    .question-intro p {
      font-weight: inherit;

    }
    .question-intro .questionPic {
      flex-basis: 200px;
    }
    .question-intro .questionPic img {
      width: 100%;
      height: auto;
    }

    .dataToggle {
      display: block;
      cursor: pointer;
      font-size: 1em;
      padding: 5px 10px;
      border: 1px solid #27314D;
      margin: 20px auto;
      border-radius: 4px;
      background: transparent;
      color: #27314D;
      transition: all .4s;
    }
    .dataToggle:hover {
      background: #27314D;
      color: #fff;
    }

    .dataWrap {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
    }
    .activate {
      animation: slideIn 1s ease-in-out;
    }

    @keyframes slideIn {
      from {
        transform: translateY(-100px);
        opacity: 0;
      }
      to {
        transform: translateY(0px);
        opacity: 1;
      }
    }

    .data-view {
      min-width: 310px;
      height: 300px;
      max-width: 400px;
    }


  </style>
</dataView>
