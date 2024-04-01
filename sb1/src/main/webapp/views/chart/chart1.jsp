<%--
  Created by IntelliJ IDEA.
  User: takgyun
  Date: 2024/03/27
  Time: 10:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<style>
    #container{
        width: 600px;
        heigth: 500px;
        border: 2px solid red;
    }
</style>
<script>
    let chart1 = {
        init:function(){
            // Data retrieved https://en.wikipedia.org/wiki/List_of_cities_by_average_temperature
            Highcharts.chart('container', {
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
                series: [{
                    name: 'Tokyo',
                    marker: {
                        symbol: 'square'
                    },
                    data: [5.2, 5.7, 8.7, 13.9, 18.2, 21.4, 25.0, {
                        y: 26.4,
                        marker: {
                            symbol: 'url(https://www.highcharts.com/samples/graphics/sun.png)'
                        },
                        accessibility: {
                            description: 'Sunny symbol, this is the warmest point in the chart.'
                        }
                    }, 22.8, 17.5, 12.1, 7.6]

                }, {
                    name: 'Bergen',
                    marker: {
                        symbol: 'diamond'
                    },
                    data: [{
                        y: 1.5,
                        marker: {
                            symbol: 'url(https://www.highcharts.com/samples/graphics/snow.png)'
                        },
                        accessibility: {
                            description: 'Snowy symbol, this is the coldest point in the chart.'
                        }
                    }, -1.6, 2.3, 10.9, 13.5, 18.5, 30.5, 35.4, 16.5, 14.7, 10.7, 2.6]
                }]
            });

        }
    };
    $(function(){
        chart1.init();
    });
</script>
<div class="container">
    <h2>Chart1 Page</h2>
    <div id="container"></div>
</div>
