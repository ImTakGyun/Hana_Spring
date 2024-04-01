<style>
    /*id가 geo1인 태그 밑에 존재하는 map이라는 id의 태그를 지정*/
    #geo1 > #map{
        width:500px;
        height: 300px;
        border:2px solid red;
    }
</style>

<script>
    let geo1 = {
        map: null,
        lat: 37.5448181,
        lng: 127.0565111,
        init: function () {
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                mapOption = {
                    center: new kakao.maps.LatLng(this.lat, this.lng), // 지도의 중심좌표
                    level: 3 // 지도의 확대 레벨
                };

            // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
            this.map = new kakao.maps.Map(mapContainer, mapOption);
            this.display();
        },
        display: function () {
            // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
            var mapTypeControl = new kakao.maps.MapTypeControl();

            // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
            // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
            this.map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

            // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
            var zoomControl = new kakao.maps.ZoomControl();
            this.map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

            // 마커가 표시될 위치입니다
            var markerPosition = new kakao.maps.LatLng(this.lat, this.lng);

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                position: markerPosition
            });

            // 마커가 지도 위에 표시되도록 설정합니다
            marker.setMap(this.map);

            // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
            // marker.setMap(null);

            // 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
            var iwContent = '<div style="padding:5px;">Hello World!</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

            // 인포윈도우를 생성합니다
            var infowindow = new kakao.maps.InfoWindow({
                content: iwContent
            });

            // 마커에 마우스오버 이벤트를 등록합니다
            kakao.maps.event.addListener(marker, 'mouseover', function () {
                // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
                infowindow.open(geo1.map, marker);
            });

            // 마커에 마우스아웃 이벤트를 등록합니다
            kakao.maps.event.addListener(marker, 'mouseout', function () {
                // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
                infowindow.close();
            });
        }
    };

    $(function(){
        geo1.init();
    });
</script>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container" id="geo1">
    <h2>Geo1 Page</h2>
    <div id="map"></div>
</div>
