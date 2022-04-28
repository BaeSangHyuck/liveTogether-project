<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css" />
<title>footer</title>
</head>
<body>
	<!-- Footer -->
	<footer id="footer">
		<div class="lower-footer">
			<div class="container">
				<div class="wrapper left-wrapper">
					<div class="header">
						<img class="logo" src="${pageContext.request.contextPath}/images/footer_grayLogo.png">

						<div class="menu-btn-list">
							<a class="menu-btn" href="${pageContext.request.contextPath}/board/info.bo">회사소개</a> <a
								class="menu-btn" href="${pageContext.request.contextPath}/board/policy.bo">개인정보정책</a> <a
								class="menu-btn" href="${pageContext.request.contextPath}/board/terms.bo">이용약관</a>
						</div>
					</div>
					<div class="content">
						<span>© 2021-2022 · 같이살자(주), All Rights Reserved</span><br> 
						<span>대표자 : Throws3 </span>
						<span>사업자등록번호 : 123 - 45 - 67890</span><br>
						<span>서울특별시 강남구 테헤란로 26길 , Throws 3층, 4층</span><br> 
						<span>대표번호 : 02-1234-1234</span><br>
						<span>입주 문의 : 02-1234-1234</span><br> 
						<span>홍보/제휴 문의 : 02-1234-1234<br></span>
						<span>상담 가능시간 : 평일 10:00 ~ 18:00 (점심시간12:30~13:30)</span>
					</div>
				</div>

				<div class="wrapper right-wrapper">
					<div id="map2" style="width: 400px; height: 250px;"></div>
				</div>
			</div>
		</div>
	</footer>
</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=75a25b651aa07a1facbfaf92c4d784fa"></script>
<script>
	var mapContainer = document.getElementById('map2'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(37.50002003241857, 127.03560291499817), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨
	};

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	// 마커가 표시될 위치입니다 
	var markerPosition = new kakao.maps.LatLng(37.49979117511358, 127.03592382743803);

	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
		position : markerPosition
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);


</script>
</html>