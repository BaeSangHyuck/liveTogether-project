<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가치살자 - 방 찾기</title>
<link rel="stylesheet" href="../assets/css/findRoom.css" />
<link rel="stylesheet" href="../assets/css/main.css" />
</head>
</head>
<body>
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
			<div id="filter-wrap">
				<div id="container">
					<div class="filter">
						<span> <strong>월세 범위</strong> 중복 선택가능
						</span>
						<div class="middle">
							<div class="multi-range-slider">
								<!-- 진짜 슬라이더 -->
								<input type="range" id="input-left" min="0" max="100" value="25"
									step="10" name="min"/> <input type="range" id="input-right" min="0"
									max="100" value="75" step="10" name="max"/>
								<!-- 커스텀 슬라이더 -->
								<div class="slider">
									<div class="track"></div>
									<div class="range"></div>
									<div class="thumb left"></div>
									<div class="thumb right"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="filter">
						<span> <strong>성별 타입</strong> 중복 선택가능
						</span>
						<div class="filter-flex">
							<div class="check-wrap">
								<input type="checkbox" id="check1" name="g" value="woman">
								<label for="check1"> 
									<div class="check" >여성전용</div>
								</label>
							</div>
							<div class="check-wrap">
								<input type="checkbox" id="check2" name="g" value="man">
								<label for="check2"> 
									<div class="check" >남성전용</div>
								</label>
							</div>
							<div class="check-wrap">
								 <input type="checkbox" id="check3" name="g" value="public">
								<label for="check3">
									<div class="check" >남녀공용</div>
								</label>
							</div>
						</div>
					</div>
					<div class="filter">
						<span> <strong>주거 유형</strong> 중복 선택 가능
						</span>
						<div class="filter-flex">
							<div class="check-wrap">
								<input type="checkbox" id="check4" name="h" value="apart">
								<label for="check4"> 
									<div class="check" >아파트</div>
								</label>
							</div>
							<div class="check-wrap">
								<input type="checkbox" id="check5" name="h" value="single">
								<label for="check5"> 
									<div class="check" >단독주택</div>
								</label>
							</div>
							<div class="check-wrap">
								<input type="checkbox" id="check6" name="h" value="villa">
								<label for="check6"> 
									<div class="check">빌라</div>
								</label>
							</div>
							<div class="check-wrap">
								<input type="checkbox" id="check7" name="h" value="other">
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
								 <input type="checkbox" id="check8" name="r" value="one">
								<label for="check8">
									<div class="check">1인실</div>
								</label>
							</div>
							<div class="check-wrap">
								 <input type="checkbox" id="check9" name="r" value="two">
								<label for="check9">
									<div class="check">2인실</div>
								</label>
							</div>
							<div class="check-wrap">
								 <input type="checkbox" id="check10" name="r" value="three">
								<label for="check10">
									<div class="check">3인실</div>
								</label>
							</div>

						</div>
					</div>
					<div class="filter">
						<span> <strong>입주예정일</strong>
						</span>
						<div>
							<input type="date" name="d"> 
						</div>
					</div>
					<div class="btn">
						<div class="filter-flex">
							<div class="button-wrap">
								<input type="button" value="초기화"  onClick="window.location.reload()">
							</div>
							<div class="button-wrap">
								<input type="button" value="적용하기">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="table-wrap">
				<div id="table">
					<div class="table-row">
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="table-cell">
							<a href="roomDetail.jsp">
								<div class="cell-wrap">
									<div class="img-wrap"></div>
									<div class="content-wrapper">
										<div class="content">
											<span class="name" style="">94호점</span><span class="gu"
												style="">(강북구)</span>
										</div>
										<div class="content content2">
											<span class="gender-division">남성전용</span><span
												class="concept"> 빌라</span><span class="opened-beds"
												style="display: inline;">신청가능 <span
												class="opened-beds-count ">5</span>
											</span><span class="opened-beds" style="display: none;">예약가능</span>
										</div>
									</div>
								</div>
							</a>
						</div>

					</div>
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
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(37.522697, 126.973858), // 지도의 중심좌표
		level : 7
	// 지도의 확대 레벨
	};

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption);

	/* var clusterer = new kakao.maps.MarkerClusterer({
		map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
		averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
		minLevel : 10
	// 클러스터 할 최소 지도 레벨 
	});

	// 데이터를 가져오기 위해 jQuery를 사용합니다
	// 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
	$.get("../assets/js/findRoom.json", function(data) {
		// 데이터에서 좌표 값을 가지고 마커를 표시합니다
		// 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다

		var markers = $(data.positions).map(function(i, position) {
			return new kakao.maps.Marker({
				position : new kakao.maps.LatL    ng(position.lat, position.lng)
			});
		});

		// 클러스터러에 마커들을 추가합니다
		clusterer.addMarkers(markers);
	}); */
	
</script>
<script src="../assets/js/findRoom.js"></script>
</html>