<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가치살자 - 방 찾기</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/findRoom.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=75a25b651aa07a1facbfaf92c4d784fa&libraries=services,clusterer,drawing"></script>
<script src="https://kit.fontawesome.com/cc88e53013.js"
	crossorigin="anonymous"></script>

</head>
<body>
<c:set var="positionList" value="${positionList}"/>
		<!-- Header -->
		<jsp:include page="../fix/header.jsp" />


		<div id="body">
			<div id="nav-filter">
				<div id="open_img"></div>
				<div id="open_img2"></div>
				<div class="flex input_wrap">
					<a id="img_wrap"> </a>
					<div id="input_wrap">
						<input type="text" placeholder="지역, 지하철역, 대학주변"> <a>
							<div id="input_img"></div>
						</a>
					</div>
				</div>
				<form id="findForm" name="findForm" method="post"
					action="${pageContext.request.contextPath}/house/HousefindOk.ho">
					<div id="filter-wrap">
						<div id="container">
							<div class="filter">
								<span> <strong>월세 범위</strong> 중복 선택가능
								</span>
								<div class="middle">
									<div class="multi-range-slider">
										<!-- 진짜 슬라이더 -->
										<select id="input-left" name="min">
											<option value="-1">전체</option>
											<option value="0">0만원</option>
											<option value="10">10만원</option>
											<option value="20">20만원</option>
											<option value="30">30만원</option>
											<option value="40">40만원</option>
											<option value="50">50만원</option>
											<option value="60">60만원</option>
											<option value="70">70만원</option>
											<option value="80">80만원</option>
											<option value="90">90만원</option>
											<option value="100">100만원</option>
										</select> <span id="important">~</span> <select id="input-right"
											name="max">
											<option value="-1">전체</option>
											<option value="10">10만원</option>
											<option value="20">20만원</option>
											<option value="30">30만원</option>
											<option value="40">40만원</option>
											<option value="50">50만원</option>
											<option value="60">60만원</option>
											<option value="70">70만원</option>
											<option value="80">80만원</option>
											<option value="90">90만원</option>
											<option value="100">100만원</option>
											<option value="100000000">100만원이상</option>
										</select>
									</div>
								</div>
							</div>
							<div class="filter">
								<span> <strong>성별 타입</strong> 중복 선택가능
								</span>
								<div class="filter-flex">
									<div class="check-wrap">
										<input type="checkbox" id="check1" name="houseGender"
											value="w"> <label for="check1">
											<div class="check">여성전용</div>
										</label>
									</div>
									<div class="check-wrap">
										<input type="checkbox" id="check2" name="houseGender"
											value="m"> <label for="check2">
											<div class="check">남성전용</div>
										</label>
									</div>
									<div class="check-wrap">
										<input type="checkbox" id="check3" name="houseGender"
											value="o"> <label for="check3">
											<div class="check">남녀공용</div>
										</label>
									</div>
								</div>
							</div>
							<div class="filter">
								<span> <strong>주거 유형</strong> 중복 선택 가능
								</span>
								<div class="filter-flex">
									<div class="check-wrap">
										<input type="checkbox" id="check4" name="houseType" value="a">
										<label for="check4">
											<div class="check">아파트</div>
										</label>
									</div>
									<div class="check-wrap">
										<input type="checkbox" id="check5" name="houseType" value="d">
										<label for="check5">
											<div class="check">단독주택</div>
										</label>
									</div>
									<div class="check-wrap">
										<input type="checkbox" id="check6" name="houseType" value="v">
										<label for="check6">
											<div class="check">빌라</div>
										</label>
									</div>
									<div class="check-wrap">
										<input type="checkbox" id="check7" name="houseType" value="o">
										<label for="check7">
											<div class="check">기타</div>
										</label>
									</div>
								</div>
							</div>
							<div class="filter">
								<span> <strong>룸 형태</strong>
								</span>
								<div class="filter-flex">
									<div class="check-wrap">
										<input type="checkbox" id="check8" name="roomType" value="1">
										<label for="check8">
											<div class="check">1인실</div>
										</label>
									</div>
									<div class="check-wrap">
										<input type="checkbox" id="check9" name="roomType" value="2">
										<label for="check9">
											<div class="check">2인실</div>
										</label>
									</div>
									<div class="check-wrap">
										<input type="checkbox" id="check10" name="roomType" value="3">
										<label for="check10">
											<div class="check">3인실</div>
										</label>
									</div>
									<div class="check-wrap">
										<input type="checkbox" id="check11" name="roomType" value="4">
										<label for="check11">
											<div class="check">4인이상</div>
										</label>
									</div>
								</div>
							</div>
							<div class="filter">
								<span> <strong>입주예정일</strong>
								</span>
								<div>
									<input type="date" name="roomDate">
								</div>
							</div>
							<div class="btn">
								<div class="filter-flex">
									<div class="button-wrap">
										<input type="button" value="초기화"
											onClick="window.location.reload()">
									</div>
									<div class="button-wrap">
										<input type="button" value="적용하기" id="findbtn">
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
				<div>
					<button id="btnh1" class="btn" onclick="toggle()">
						<i class="fa-solid fa-heart"></i>
						<div>찜 목록</div>
					</button>
				</div>
				<div id="table-wrap">
					<div id="table">
						<div class="table-row"></div>
					</div>
				</div>
			</div>

			<div id="map"></div>
		</div>
</body>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=75a25b651aa07a1facbfaf92c4d784fa"></script>
<script>
	var contextPath = "${pageContext.request.contextPath}";
</script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
	center : new kakao.maps.LatLng(37.522697, 126.973858), // 지도의 중심좌표
	level : 10
// 지도의 확대 레벨
};

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

 


</script>
<script>

	var positionList = {
			positionsArr : []
	};


$.ajax({
	url : contextPath + "/house/HousePositionOk.ho",
	type : "get",
	success : function jsons(positions) {
		positionList.positionsArr.push(JSON.parse(positions))
		
		console.log(positionList)
	 

		var clusterer = new kakao.maps.MarkerClusterer({
			map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
			averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
			minLevel : 10
		// 클러스터 할 최소 지도 레벨 
		});
		 var markers = positionList.positionsArr.map(function(i, position) {
				return new kakao.maps.Marker({
					position : new kakao.maps.LatLng(position.lat, position.lng)
				});
			});

			// 클러스터러에 마커들을 추가합니다
			clusterer.addMarkers(markers);
			console.log(markers)

	},
	error : function(a, b, c) {
		console.log("오류" + c);
	},
	async: false 
});



function jsons(positions) {
	
	
	positionList.positionsArr.push(JSON.parse(positions))
	
	console.log(positionList)
 

	var clusterer = new kakao.maps.MarkerClusterer({
		map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
		averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
		minLevel : 10
	// 클러스터 할 최소 지도 레벨 
	});
	for (var i = 0; i < positionList.positionsArr.length; i++) {
		
	 var markers =  new kakao.maps.Marker({
				position : new kakao.maps.LatLng(positionList.positionsArr[i].lat, positionList.positionsArr[i].lng)
			});
		clusterer.addMarkers(markers);
	}
	

		// 클러스터러에 마커들을 추가합니다
		console.log(markers)

}


	

</script>

<script src="${pageContext.request.contextPath}/assets/js/findRoom.js"></script>

</html>