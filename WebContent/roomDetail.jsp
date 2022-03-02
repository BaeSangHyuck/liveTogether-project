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
<link rel="stylesheet" href="assets/css/main.css" />
<style>
.tab {
	padding: 2rem;
}
/* section-one */
div#second-wrap {
	width: 70%;
	margin: 0 auto;
}

section#one img, section#three img{
	width: 100%;
}

section#three img{
	margin-top: 3rem;
	margin-bottom: 3rem;
}

/* section-two */
.button.primary {
	background-color: #F9F9F9;
	color: #999;
	float: left;
	border: 2px solid #EEE;
	border-radius: 0;
    border: 0;
}

.button.primary:hover {
	background-color: #F9F9F9;
}

div.intro a {
	width: 25%;
	padding: 0;
}

div.explain {
	clear: both;
}

div.column {
	float: left;
	width: 50%;
}

div.column-title {
	float: left;
	width: 40%;
	border-width: 0 1px 1px 0;
	border-style: solid;
	border-color: #E9E9E9;
	background-color: #F5F3F1;
	padding: 0 1rem;
	height: 3rem;
    line-height: 3rem;
}

div.column-value {
	float: left;
	width: 60%;
	border-width: 0 1px 1px 0;
	border-style: solid;
	border-color: #E9E9E9;
	padding: 0 1rem;
	height: 3rem;
    line-height: 3rem;
}

.column-wrap {
	border-width: 1px 0 0 1px;
	border-style: solid;
	border-color: #E9E9E9;
}

.button.primary.click.clicked{
	background-color:#8AAAE5;
	color: #ffffff;
}

/* section three */
.table-wrap {
	text-align: center;
}

table td {
	padding: 0;
	text-align: center;
	height: 3rem;
	line-height: 3rem;
}

table thead tr th{
	 background-color: rgba(144, 144, 144, 0.1);
}
table th {
	padding: 0;
	text-align: center;
	height: 3rem;
	line-height: 3rem;
}

.span {
	color:#585858; 
	font-weight:700;
}

.faq {
	text-align: center;
}

.button.primary.fit {
	width:50%
}
</style>
</head>
<body>
	<div>
			<jsp:include page="/header.jsp"/>
		</div> 
	<article>
		<div id="second-wrap">
			<section id="one">
				<div>
					<img
						src="https://woozoo.s3.amazonaws.com/uploads/image/data/14623/468-1886-1644303902-1.jpg">
				</div>
			</section>

			<section id="two">
				<div class="intro">
					<a href="#two" class="button primary click">지점 소개</a>
					 <a href="#three" class="button primary click">방 정보</a> 
					 <a href="#four" class="button primary click">세부정보</a> 
					 <a href="#five" class="button primary click">FAQ</a>
				</div>
				<div class="tab">
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
					</section>
					<section id="three" class="tab">
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
- 미성년자 또는 41세 이상, 회원 가입시 개인정보가 계약자와 다를 경우 입주 불가능
- 운영관리비와 선불공과금은 매월 별도 납부 함 [자세히 알아보기]
- '투어신청'은 두 지점까지 가능
- '투어신청'은 입주가능일 45일 전부터 가능
- '투어가능알림' 신청 후 투어가 가능해질 때 '투어신청가능'으로 SMS 자동문자 발송
- 우주의 하우스는 반전세 적용이 가능합니다.
  (보증금 1,000만원 상향 시 월세 5만원 할인)
- 경우에 따라 반전세 적용이 불가한 하우스도 있으니 반드시 확인 부탁드립니다.[자세히 알아보기]</pre>
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
				</div>
			</section>
			<section id="four" class="tab">
				<div id="map" style="width: 100%; height: 350px;"></div>

				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50e9a68c5f5c2321311332ee213eaf6e"></script>
				<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = {
						center : new kakao.maps.LatLng(37.54699, 127.09598), // 지도의 중심좌표
						level : 4
					// 지도의 확대 레벨
					};

					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

					var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다    
					imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
					imageOption = {
						offset : new kakao.maps.Point(27, 69)
					}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

					// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
					var markerImage = new kakao.maps.MarkerImage(imageSrc,
							imageSize, imageOption), markerPosition = new kakao.maps.LatLng(
							37.54699, 127.09598); // 마커가 표시될 위치입니다

					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
						position : markerPosition,
						image : markerImage
					// 마커이미지 설정 
					});

					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);
				</script>
			</section>
			<section id="five" class="tab">
				<div class="faq">FAQ</div>
				<div>
					<a href="#" class="button primary fit">입주관련</a> 
					<a href="#" class="button primary fit">계약관련</a>
				</div>
				<div>
					<ul>
						<li><details>
							<summary>
								1. 입주신청서를 제출했습니다. 이후 과정은 어떻게 되나요?
							</summary> 
						<span>
입주 신청서를 제출하면 접수 확인 문자가 발송됩니다. 신규 지점을 신청하신 경우 본인이 선택한 우주 하우스 투어 하루 전 날 확인 전화를 드리며,<br>
기존 지점을 신청하신 경우 입주 신청 후 2 일 내에 하우스 매니저가 우주 하우스 투어 일정 조율을 위해 전화를 드립니다.<br>
우주 하우스 투어 일정이 확정되면 해당 일시에 희망 지점을 방문하여 집을 둘러보고, 하우스 매니저와 간단한 인터뷰 시간을 가지게 됩니다.</span>
						</details></li>
						<li>
							<details>
								<summary>2. 보증금과 월세 외에 다른 비용에는 무엇이 있나요?</summary>
								<span>
지점 운영 관리비와 선불 공과금(전기, 가스, 수도요금, 건물관리비)을 별도로 납부 해주셔야 합니다. [선불공과금이란?]
계약기간 내 납부해주신 선불 공과금은 퇴실 시 정산하고 정산후 생긴 차액은 반환 되거나 혹은 보증금에서 차감됩니다.
공과금의 경우, 정산 방식은 1(쉐어하우스 인원수)/ N(실제공과금)로 사용하시는만큼 청구가 됩니다.
청구된 공과금은 입주자 분들의 납부 및 정산 편의를 위해 매달 임대료(월세)와 별도로 받고 있습니다.
일반적으로, 운영관리비는 3만원, 선불공과금은 5만원이지만 해당 금액은 지점별로 상이할 수 있으니 이 점 꼭 참고해주세요!									
								</span>
							</details> </li>
						<li><details>
							<summary>3. 공과금은 어떻게 처리하나요?</summary>
						<span>
							계약 시 안내 된 선불 공과금을 매월 납부하고 퇴실 시에 실제 사용금액과 비교해 정산하게 됩니다.
						</span>
						</details></li>
						<li><details>
							<summary>4. 공과금을 왜 '선불 공과금'이라고 부르나요? 이게 왜 필요하죠?</summary>
						<span>
							선불 공과금이란 입주 계약기간 동안 일정 금액으로 정해진 예상 공과금을 선불로 납부하는 것을 말합니다.
사용량만큼 후불로 청구되는 공과금 특성 상, 매월 다른 금액이 청구되어 정기 요금 납부 때마다 일일이 액수를 신경 써야 한다는 불편이 있습니다. 우주는 이 점을 개선하고자 우주인이 미리 지정된 고정 금액을 매달 선불로 납부하는 방식으로 공과금 제도를 운영하고 있습니다.
						</span>
						</details></li>
					</ul>
				</div>

			</section>

		</div>
	</article>
	 <div>
			<jsp:include page="/footer.jsp"/>
		</div> 
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
<script>
	/* var btn = document.querySelectorAll(".button.primary.click"); */
	var btn = document.getElementsByClassName("click");

	// $(btn[0]).on("click", function(){
	// 	$(this).css("background-color", "#8AAAE5");
	// 	$(this).css("color", "#ffffff");
	// 	$(btn[1]).css("background-color", "#F9F9F9");
	// 	$(btn[1]).css("color", "#999");
	// 	$(btn[2]).css("background-color", "#F9F9F9");
	// 	$(btn[2]).css("color", "#999");
	// 	$(btn[3]).css("background-color", "#F9F9F9");
	// 	$(btn[3]).css("color", "#999");
	// });
	// $(btn[1]).on("click", function(){
	// 	$(this).css("background-color", "#8AAAE5");
	// 	$(this).css("color", "#ffffff");
	// 	$(btn[0]).css("background-color", "#F9F9F9");
	// 	$(btn[0]).css("color", "#999");
	// 	$(btn[2]).css("background-color", "#F9F9F9");
	// 	$(btn[2]).css("color", "#999");
	// 	$(btn[3]).css("background-color", "#F9F9F9");
	// 	$(btn[3]).css("color", "#999");
	// });
	// $(btn[2]).on("click", function(){
	// 	$(this).css("background-color", "#8AAAE5");
	// 	$(this).css("color", "#ffffff");
	// 	$(btn[1]).css("background-color", "#F9F9F9");
	// 	$(btn[1]).css("color", "#999");
	// 	$(btn[0]).css("background-color", "#F9F9F9");
	// 	$(btn[0]).css("color", "#999");
	// 	$(btn[3]).css("background-color", "#F9F9F9");
	// 	$(btn[3]).css("color", "#999");
	// });
	// $(btn[3]).on("click", function(){
	// 	$(this).css("background-color", "#8AAAE5");
	// 	$(this).css("color", "#ffffff");
	// 	$(btn[1]).css("background-color", "#F9F9F9");
	// 	$(btn[1]).css("color", "#999");
	// 	$(btn[2]).css("background-color", "#F9F9F9");
	// 	$(btn[2]).css("color", "#999");
	// 	$(btn[0]).css("background-color", "#F9F9F9");
	// 	$(btn[0]).css("color", "#999");
	// });


function success() {
  for (var i = 0; i < btn.length; i++) {
		btn[i].addEventListener("click", function click(event) {
		console.log(this);
  
		for (var i = 0; i < btn.length; i++) {
	 	 btn[i].classList.remove("clicked");
		}
		this.classList.add("clicked");
	});
  }
}
success();

// function click(event) {
// 	console.log(this);
//   if(this.classList[1] === "clicked") {
// 	this.classList.remove("clicked");
//   } else {
// 	for (var i = 0; i < btn.length; i++) {
// 	  btn[i].classList.remove("clicked");
// 	}
// 	this.classList.add("clicked");
//   }
// }
// function success() {
//   for (var i = 0; i < btn.length; i++) {
// 	btn[i].addEventListener("click", click);
//   }
// }
// success();

</script>
</html>
