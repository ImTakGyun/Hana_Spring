<%--
  Created by IntelliJ IDEA.
  User: takgyun
  Date: 2024/03/27
  Time: 10:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .chart_layout{
        width: 350px;
        height:350px;
        border: 2px solid red;
    }
</style>

<script>
    let chart3 = {
        init: function(){
            $('#get').click(() => {
                this.get();
            });
            // setInterval(() => this.get(), 3000);
        },

        get: function(){
            $.ajax({
                url: '<c:url value="/chart3"/>',
                success: (data) => {
                    this.chart(data);
                }
            });
        },
        chart: function(data){
            for(i = 0; i <data.length; i++){
                Highcharts.chart('c'+(i+1), {
                    chart: {
                        type: 'spline'
                    },
                    title: {
                        text: 'Monthly Average Temperature'
                    },
                    subtitle: {
                        text: 'Source: ' +
                            '<a href="https://en.wikipedia.org/wiki/List_of_cities_by_average_temperature" ' +
                            'target="_blank">Wikipedia.com</a>'
                    },
                    xAxis: {
                        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                            'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                        accessibility: {
                            description: 'Months of the year'
                        }
                    },
                    yAxis: {
                        title: {
                            text: 'Temperature'
                        },
                        labels: {
                            format: '{value}°'
                        }
                    },
                    tooltip: {
                        crosshairs: true,
                        shared: true
                    },
                    plotOptions: {
                        spline: {
                            marker: {
                                radius: 4,
                                lineColor: '#666666',
                                lineWidth: 1
                            }
                        }
                    },
                    series: data[i]
                });
            }
        }
    };

    $(function (){
        chart3.init();
    });

</script>

<div class="container">
    <h2>Chart3 Page</h2>
    <button id="get" type="button" class="btn btn-primary">GET</button>
    <div class="row well">
        <div id="c1" class="col-sm4 well chart_layout"></div>
        <div id="c2" class="col-sm4 well chart_layout"></div>
        <div id="c3" class="col-sm4 well chart_layout"></div>
    </div>
</div>
