/**
 * 
 */


$(function() {
	
	initMap();
	
});


function initMap() { 
	
	var areaArr = new Array();  // 지역을 담는 배열 ( 지역명/위도경도 )
	areaArr.push(
			/*지역구 이름*/			/*위도*/					/*경도*/				
		 {location : '우주식품' , lat : '37.493184' , lng : '127.117412', address :'서울특별시 송파구 양재대로 932 | 서울특별시 송파구 가락동 600' ,hp : '02-407-0450',ctg :'식료품점', inter : 'http://www.woojoofood.co.kr' , img : 'images/woojoo.jpg' },  // 우주식품
		 {location : '방산시장 제과제빵시장' , lat : '37.568523' , lng : '127.001494', address:'서울특별시 중구 주교동 을지로33길 18-1 | 서울특별시 중구 주교동 250-1', hp : '02-000-0000', ctg:'종합시장',inter : 'http://www.bangsanmarket.net', img : 'images/bangsan.jpg'},  // 방산시장
		 {location : '베이킹파티' , lat : '37.298797' , lng : '126.968761',address:'경기도 수원시 장안구 율전로 105 | 수원시 장안구 율전동 305-22 3층', hp : '031-269-8226', ctg:'제빵용품점',inter : 'http://www.bakingparty.net', img : 'images/party.jpg'},  // 베이킹파티
		 {location : '비엔씨마켓 고속터미널점' , lat : '37.507795' , lng : '127.007857',address:'서울특별시 서초구 반포4동 신반포로 194 | 서초구 반포동 19-4', hp : '02-535-2703', ctg:'제빵용품점',inter : 'http://www.bncmarket.com', img : 'images/go.jpg'},  // 고속터미널점
		 {location : '비엔씨마켓 홍대점' , lat : '37.556272' , lng : '126.928340',address:'서울특별시 마포구 서교동 와우산로 29나길 13 | 마포구 서교동 336-21', hp : '02-333-2705', ctg:'제빵용품점',inter : 'http://www.bncmarket.com',  img : 'images/hong.jpg'},  // 홍대점
		 {location : '바한스' , lat : '35.221061' , lng : '128.676572',address:'경상남도 창원시 성산구 중앙대로 61번길 3 | 성산구 중앙동 100-1', hp : '055-274-2244', ctg:'대형슈퍼마켓',inter : 'http://www.bhans.co.kr', img : 'images/bihans.jpg'},  // 바한스
		 {location : '베이킹프라자' , lat : '35.100136' , lng : '129.027401' ,address:'부산광역시 중구 중구로 23번길 8-1 | 중구 부평동1가 33-1', hp : '051-245-4478', ctg:'제빵용품점',inter : 'http://www.베이킹프라자.com', img : 'images/busan.jpg'},  // 베이킹프라자
		 
	);
	
	
	
	let markers = new Array(); // 마커 정보를 담는 배열
	let infoWindows = new Array(); // 정보창을 담는 배열
	
	var map = new naver.maps.Map('map', {
        center: new naver.maps.LatLng(37.552758094502494, 126.98732600494576), //지도 시작 지점
        zoom: 15
    });
	
	
	
	
	for (var i = 0; i < areaArr.length; i++) {
		// 지역을 담은 배열의 길이만큼 for문으로 마커와 정보창을 채워주자 !

	    var marker = new naver.maps.Marker({
	        map: map,
	        title: areaArr[i].location, // 지역구 이름 
	        position: new naver.maps.LatLng(areaArr[i].lat , areaArr[i].lng) // 지역구의 위도 경도 넣기 
	    });
	    
	    /* 정보창 */
		 var infoWindow = new naver.maps.InfoWindow({
		     content: '<div style="width:550px;padding:10px;"><b>' + areaArr[i].location + '<hr></b>'+ '<img src=' + areaArr[i].img + '>' + '</b><br>'+ '๑ ' + areaArr[i].ctg + '</b><br>'+ '๑ ' + areaArr[i].address + '</b><br>'+ '๑ ' + areaArr[i].hp+  '</b><br>'+ '๑ ' + '<a href='+ areaArr[i].inter + '>' + areaArr[i].inter + '</b><br>  </div>'
		     
		 }); // 클릭했을 때 띄워줄 정보 HTML 작성
	    		 markers.push(marker); // 생성한 마커를 배열에 담는다.
		 infoWindows.push(infoWindow); // 생성한 정보창을 배열에 담는다.
	}
    
	 
    function getClickHandler(seq) {
		
            return function(e) {  // 마커를 클릭하는 부분
                var marker = markers[seq], // 클릭한 마커의 시퀀스로 찾는다.
                    infoWindow = infoWindows[seq]; // 클릭한 마커의 시퀀스로 찾는다

                if (infoWindow.getMap()) {
                    infoWindow.close();
                } else {
                    infoWindow.open(map, marker); // 표출
                }
    		}
    	}
    
    for (var i=0, ii=markers.length; i<ii; i++) {
    	console.log(markers[i] , getClickHandler(i));
        naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i)); // 클릭한 마커 핸들러
    }
}