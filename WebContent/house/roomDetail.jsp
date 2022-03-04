 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<html>
<head>
<meta charset="UTF-8">
<title>가치 살자</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/roomDetail.css" />
</head>
<body>
	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />
	
	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />
	
	<article>
		<div id="second-wrap">
			<section id="one">
				<div>
					<img
						src="https://woozoo.s3.amazonaws.com/uploads/image/data/14623/468-1886-1644303902-1.jpg">
				</div>
			</section>
	
			<section id="two">
				<div>
				<div class="intro">
					<a href="#two-ex" class="button primary click active">상세 설명</a>
					 <a href="#three-ex" class="button primary click">방 정보</a> 
					 <a href="#four-ex" class="button primary click">세부 정보</a> 
					 <a href="#five-ex" class="button primary click">FAQ</a>
				</div>
				<div class="tab">
					<fieldset id="two-ex" class="height-fix"><legend>상세 설명</legend></fieldset>
					<div class="explain">
						<pre>
	서울여자간호대학교 3호선 홍제역 인근 지점,
	1. 지점소개
	
	3호선 홍제역 인근에 위치한 우주 89호점은
	깔끔하게 리모델링 된 공간을 가지고 있으며 빛이 잘 드는 거실, 넓은 개인 공간이 특징이에요.
	89호점을 중심으로 다양한 편의 시설과 대형 마트들이 즐비해 있고 （⊙ｏ⊙）
	상암 DMC로 이동이 편해 직장인들에게도 늘~ 인기가 있는 지점입니다.
	
	2. 교통
	
	-3호선 홍제역 도보 6분
	-버스정류장 도보 2분 (유진상가 정류장)
	
	3. 주변 상권
	
	-시티마트 (서울 서대문구 통일로 440) 도보 7분
	-대박할인마트 (서울 서대문구 통일로 39길 34) 도보 11분
	-하얀마트 (서울 서대문구 통일로 471-10) 도보 6분
	-인왕시장 도보 이용 가능
	
	4. 핫플레이스
	
	#서울여자간호대학교 #디지털서울문화예술대학교 #역세권 3호선 홍제역
	#공세권(실락어린이공원) #홍제천 #숲세권(수미산, 고은산,안산,백련산)
	
	[국내 최초, 최대 쉐어하우스 우주의 혜택]
	
	* 기업형 셰어하우스로 안전한 계약 보장
	* 3개월 단기 계약 가능
	* 재계약, 장기계약 시 월세 지원
	* 서울 전역 우주하우스로 지점 이동 가능
	* 가구, 가전, 무선인터넷까지! 풀옵션으로 이사비용 절감
	* 월 1회 공용공간 정기청소</pre>
						
					</div>
						<div class="column-wrap">
							<div class="column">
								<div class="column-title">주소</div>
								<div class="column-value">서울 서대문구 홍제동</div>
							</div>
							<div class="column">
								<div class="column-title">성별</div>
								<div class="column-value">여성전용</div>
							</div>
							<div class="column">
								<div class="column-title">지점계약종료일</div>
								<div class="column-value">2023-02-28</div>
							</div>
							<div class="column">
								<div class="column-title">최대거주인원</div>
								<div class="column-value">10명</div>
							</div>
							<div class="column">
								<div class="column-title">주택유형</div>
								<div class="column-value">아파트</div>
							</div>
							<div class="column">
								<div class="column-title">구조</div>
								<div class="column-value">아파트</div>
							</div>
						</div>
					</div>
				</div>
					</section>
					<section id="three" class="tab">
						<fieldset id="three-ex" class="height-fix"><legend>방 정보</legend></fieldset>
						<div>
							<div>
								<img src="https://woozoo.s3.amazonaws.com/uploads/house/plan_image/468/p-1644304365.jpg">
							</div>
						</div>
						<div class="table-wrap">
							<table>
								<thead>
							<tr>
								<th>이름</th>
								<th>성별</th>
								<th>타입</th>
								<th>면적</th>
								<th>보증금</th>
								<th>월세</th>
								<th>입주가능일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Room A</td>
								<td>여성전용</td>
								<td>1인실</td>
								<td>9.5m²</td>
								<td>1,000,000원</td>
								<td>400,000원</td>
								<td>2022-03-01</td>
							</tr>
							<tr>
								<td>Room B</td>
								<td>여성전용</td>
								<td>1인실</td>
								<td>9.5m²</td>
								<td>1,000,000원</td>
								<td>400,000원</td>
								<td>2022-03-01</td>
							</tr>
							<tr>
								<td>Room C</td>
								<td>여성전용</td>
								<td>1인실</td>
								<td>9.5m²</td>
								<td>1,000,000원</td>
								<td>400,000원</td>
								<td>2022-03-01</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div>
					<pre>
	- <b>미성년자</b> 또는 <b><span class="red">41세 이상</span></b>, 회원 가입시 <b>개인정보</b>가 계약자와 <b>다를 경우<span class="red">입주 불가능</span></b> 
	- <b>운영관리비</b>와 <b>선불공과금</b>은 <b><span class="red">매월 별도 납부 함</span> [자세히 알아보기]</b>
	- '투어신청'은 두 지점까지 가능
	- '투어신청'은 입주가능일 45일 전부터 가능
	- '투어가능알림' 신청 후 투어가 가능해질 때 '투어신청가능'으로 SMS 자동문자 발송
	- 우주의 하우스는 <b><span class="red">반전세 적용이 가능</span></b>합니다.
	(보증금 1,000만원 상향 시 월세 5만원 할인)
	- 경우에 따라 반전세 적용이 불가한 하우스도 있으니 반드시 확인 부탁드립니다.<b>[자세히 알아보기]</b></pre>
					<div>서울시 서초구 서초동 기준 <span class="span">(예시)</span></div>
					<table>
						<thead>
							<tr>
								<th>구분</th>
								<th>WITHYOU</th>
								<th>쉐어하우스 원룸</th>
								<th>오피스텔</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>보증금</td>
								<td>95만원</td>
								<td>1000만원</td>
								<td>1000만원</td>
							</tr>
							<tr>
								<td>임대료</td>
								<td>39만5천원</td>
								<td>59만원</td>
								<td>65만원</td>
							</tr>
						</tbody>
					</table>
					<div>예시<br>냉장고, 에어프라이어 등등 이미지</div>
				</div>
			</section>
			<section id="four" class="tab">
				<fieldset id="four-ex" class="height-fix"><legend>세부 정보</legend></fieldset>
				<div id="map" style="width: 100%; height: 350px;"></div>
	
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50e9a68c5f5c2321311332ee213eaf6e"></script>
				<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = {
						center : new kakao.maps.LatLng(37.530547, 126.940617), // 지도의 중심좌표
						level : 5
					// 지도의 확대 레벨
					};
	
					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
					/* var markerPosition = new kakao.maps.LatLng(37.530547, 126.940617);
	
					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
						position : markerPosition
					});
	
					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map); */
					
					var circle = new kakao.maps.Circle({
						center : new kakao.maps.LatLng(37.530547, 126.940617),  // 원의 중심좌표 입니다 
						radius: 300, // 미터 단위의 원의 반지름입니다 
						strokeWeight: 5, // 선의 두께입니다 
						strokeColor: '#013DC4', // 선의 색깔입니다
						strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
						strokeStyle: 'solid', // 선의 스타일 입니다
						fillColor: '#CFE7FF', // 채우기 색깔입니다
						fillOpacity: 0.9  // 채우기 불투명도 입니다   
					}); 
	
					circle.setMap(map); 
				</script>
			</section>
			<section id="five" class="tab">
				<fieldset id="five-ex" class="height-fix"><legend>FAQ</legend></fieldset>
				<div id="wrap-tab">
					<a id="live-wrap" class="button primary fit active">입주관련</a> 
					<a id="contract-wrap"class="button primary fit">계약관련</a>
				</div>
				<div id="live">
					<input type="radio" name="live" id="faq-question1">
					<label for="faq-question1">1. 입주신청서를 제출했습니다. 이후 과정은 어떻게 되나요?</label>
					<div><p>
	입주 신청서를 제출하면 접수 확인 문자가 발송됩니다. 신규 지점을 신청하신 경우 본인이 선택한 우주 하우스 투어 하루 전 날 확인 전화를 드리며,<br>
	기존 지점을 신청하신 경우 입주 신청 후 2 일 내에 하우스 매니저가 우주 하우스 투어 일정 조율을 위해 전화를 드립니다.<br>
	우주 하우스 투어 일정이 확정되면 해당 일시에 희망 지점을 방문하여 집을 둘러보고, 하우스 매니저와 간단한 인터뷰 시간을 가지게 됩니다.
		</p></div>
					<input type="radio" name="live" id="faq-question2">
					<label for="faq-question2">2. 보증금과 월세 외에 다른 비용에는 무엇이 있나요?</label>
					<div><p>
	지점 운영 관리비와 선불 공과금(전기, 가스, 수도요금, 건물관리비)을 별도로 납부 해주셔야 합니다. [선불공과금이란?]<br>
	계약기간 내 납부해주신 선불 공과금은 퇴실 시 정산하고 정산후 생긴 차액은 반환 되거나 혹은 보증금에서 차감됩니다.<br>
	공과금의 경우, 정산 방식은 1(쉐어하우스 인원수)/ N(실제공과금)로 사용하시는만큼 청구가 됩니다.<br>
	청구된 공과금은 입주자 분들의 납부 및 정산 편의를 위해 매달 임대료(월세)와 별도로 받고 있습니다.<br>
	일반적으로, 운영관리비는 3만원, 선불공과금은 5만원이지만 해당 금액은 지점별로 상이할 수 있으니 이 점 꼭 참고해주세요!</p></div>
	<input type="radio" name="live" id="faq-question3">
	<label for="faq-question3">3. 입주신청서를 제출했습니다. 이후 과정은 어떻게 되나요?</label>
	<div><p>
		입주 신청서를 제출하면 접수 확인 문자가 발송됩니다. 신규 지점을 신청하신 경우 본인이 선택한 우주 하우스 투어 하루 전 날 확인 전화를 드리며,<br>
		기존 지점을 신청하신 경우 입주 신청 후 2 일 내에 하우스 매니저가 우주 하우스 투어 일정 조율을 위해 전화를 드립니다.<br>
		우주 하우스 투어 일정이 확정되면 해당 일시에 희망 지점을 방문하여 집을 둘러보고, 하우스 매니저와 간단한 인터뷰 시간을 가지게 됩니다.
	</p></div>
	<input type="radio" name="live" id="faq-question4">
	<label for="faq-question4">4. 입주신청서를 제출했습니다. 이후 과정은 어떻게 되나요?</label>
	<div><p>
		입주 신청서를 제출하면 접수 확인 문자가 발송됩니다. 신규 지점을 신청하신 경우 본인이 선택한 우주 하우스 투어 하루 전 날 확인 전화를 드리며,<br>
		기존 지점을 신청하신 경우 입주 신청 후 2 일 내에 하우스 매니저가 우주 하우스 투어 일정 조율을 위해 전화를 드립니다.<br>
		우주 하우스 투어 일정이 확정되면 해당 일시에 희망 지점을 방문하여 집을 둘러보고, 하우스 매니저와 간단한 인터뷰 시간을 가지게 됩니다.
	</p></div>
	<input type="radio" name="live" id="faq-question5">
	<label for="faq-question5">5. 입주신청서를 제출했습니다. 이후 과정은 어떻게 되나요?</label>
	<div><p>
		입주 신청서를 제출하면 접수 확인 문자가 발송됩니다. 신규 지점을 신청하신 경우 본인이 선택한 우주 하우스 투어 하루 전 날 확인 전화를 드리며,<br>
		기존 지점을 신청하신 경우 입주 신청 후 2 일 내에 하우스 매니저가 우주 하우스 투어 일정 조율을 위해 전화를 드립니다.<br>
		우주 하우스 투어 일정이 확정되면 해당 일시에 희망 지점을 방문하여 집을 둘러보고, 하우스 매니저와 간단한 인터뷰 시간을 가지게 됩니다.
	</p></div>
	<input type="radio" name="live" id="faq-question6">
	<label for="faq-question6">6. 입주신청서를 제출했습니다. 이후 과정은 어떻게 되나요?</label>
	<div><p>
		입주 신청서를 제출하면 접수 확인 문자가 발송됩니다. 신규 지점을 신청하신 경우 본인이 선택한 우주 하우스 투어 하루 전 날 확인 전화를 드리며,<br>
		기존 지점을 신청하신 경우 입주 신청 후 2 일 내에 하우스 매니저가 우주 하우스 투어 일정 조율을 위해 전화를 드립니다.<br>
		우주 하우스 투어 일정이 확정되면 해당 일시에 희망 지점을 방문하여 집을 둘러보고, 하우스 매니저와 간단한 인터뷰 시간을 가지게 됩니다.
	</p></div>
	<input type="radio" name="live" id="faq-question7">
	<label for="faq-question7">7. 입주신청서를 제출했습니다. 이후 과정은 어떻게 되나요?</label>
	<div><p>
		입주 신청서를 제출하면 접수 확인 문자가 발송됩니다. 신규 지점을 신청하신 경우 본인이 선택한 우주 하우스 투어 하루 전 날 확인 전화를 드리며,<br>
		기존 지점을 신청하신 경우 입주 신청 후 2 일 내에 하우스 매니저가 우주 하우스 투어 일정 조율을 위해 전화를 드립니다.<br>
		우주 하우스 투어 일정이 확정되면 해당 일시에 희망 지점을 방문하여 집을 둘러보고, 하우스 매니저와 간단한 인터뷰 시간을 가지게 됩니다.
	</p></div>
	<input type="radio" name="live" id="faq-question8">
	<label for="faq-question8">8. 입주신청서를 제출했습니다. 이후 과정은 어떻게 되나요?</label>
	<div><p>
		입주 신청서를 제출하면 접수 확인 문자가 발송됩니다. 신규 지점을 신청하신 경우 본인이 선택한 우주 하우스 투어 하루 전 날 확인 전화를 드리며,<br>
		기존 지점을 신청하신 경우 입주 신청 후 2 일 내에 하우스 매니저가 우주 하우스 투어 일정 조율을 위해 전화를 드립니다.<br>
		우주 하우스 투어 일정이 확정되면 해당 일시에 희망 지점을 방문하여 집을 둘러보고, 하우스 매니저와 간단한 인터뷰 시간을 가지게 됩니다.
	</p></div>
</div>
	<div id="contract" style="display:none;">
		<input type="radio" name="live" id="faq-question9">
		<label for="faq-question9">1. 입주신청서를 제출했습니다. 이후 과정은 어떻게 되나요?</label>
		<div><p>입주 신청서를 제출하면 접수 확인 문자가 발송됩니다. 신규 지점을 신청하신 경우 본인이 선택한 우주 하우스 투어 하루 전 날 확인 전화를 드리며,<br>
			기존 지점을 신청하신 경우 입주 신청 후 2 일 내에 하우스 매니저가 우주 하우스 투어 일정 조율을 위해 전화를 드립니다.<br>
			우주 하우스 투어 일정이 확정되면 해당 일시에 희망 지점을 방문하여 집을 둘러보고, 하우스 매니저와 간단한 인터뷰 시간을 가지게 됩니다.</p></div>
			<input type="radio" name="live" id="faq-question10">
			<label for="faq-question10">2. 보증금과 월세 외에 다른 비용에는 무엇이 있나요?</label>
			<div><p>
				지점 운영 관리비와 선불 공과금(전기, 가스, 수도요금, 건물관리비)을 별도로 납부 해주셔야 합니다. [선불공과금이란?]<br>
				계약기간 내 납부해주신 선불 공과금은 퇴실 시 정산하고 정산후 생긴 차액은 반환 되거나 혹은 보증금에서 차감됩니다.<br>
				공과금의 경우, 정산 방식은 1(쉐어하우스 인원수)/ N(실제공과금)로 사용하시는만큼 청구가 됩니다.<br>
				청구된 공과금은 입주자 분들의 납부 및 정산 편의를 위해 매달 임대료(월세)와 별도로 받고 있습니다.<br>
	일반적으로, 운영관리비는 3만원, 선불공과금은 5만원이지만 해당 금액은 지점별로 상이할 수 있으니 이 점 꼭 참고해주세요!                   
					</p></div>
					<input type="radio" name="live" id="faq-question5">
					<label for="faq-question5">1. 공지</label>
					<div><p>공지사항</p></div>
				</div>
	
	
			</section>
	
		</div>
	</article>
	 <div>
			<jsp:include page="../fix/footer.jsp"/>
		</div> 
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/jquery.scrolly.min.js"></script>
<script src="../assets/js/browser.min.js"></script>
<script src="../assets/js/breakpoints.min.js"></script>
<script src="../assets/js/util.js"></script>
<script src="../assets/js/main.js"></script>
<script src="../assets/js/roomDetail.js"></script>
</html>
