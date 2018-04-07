
<dataView>
  <div class="dataWrap">
    <div id="status" class="data-view"></div>
    <div id="usage" class="data-view"></div>
    <!-- <div id="rating" class="data-view"></div> -->
  </div>
  
  
  <script>
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
              selected: true
            }, {
              name: 'U.S. resident, student',
              y: 10
            }, {
              name: 'International, employed',
              y: 5
            }, {
              name: 'Other - visiting scholar',
              y: 5
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
            selected: true
          }, {
            name: "Yes, for my own benefits.",
            y: 15.79
          }, {
            name: 'No',
            y: 5.26
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

    .dataWrap {
      display: flex;
      justify-content: space-around;
    }

    .data-view {
      min-width: 310px;
      height: 300px;
      max-width: 600px;
    
    }
  </style>
</dataView>
