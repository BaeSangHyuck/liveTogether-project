<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/mainpage.css" />
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=75a25b651aa07a1facbfaf92c4d784fa&libraries=services,clusterer,drawing"></script>
<title>가치살자 - 메인페이지</title>
</head>
<body>
	<c:set var="bannerList" value="${bannerList}" />

	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />

	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />


	<!-- Banner -->
	<section id="banner">
		<div class="inner">
			<div class="inner-wrap">

				<div class="filter">
					<form name="searchForm" id="searchForm"
						action="${pageContext.request.contextPath}/house/FindRoomOk.ho">
						<div id="filter-container">
							<div id="input-wrap" class="flex_wrap">
								<div id="hash-tag">
									<span>#</span>
								</div>
								<div id="filter-input">
									<input id="searchInput" name="search" type="text"
										autocomplete="off" />
								</div>
							</div>
							<div id="slide-wrap">
								<div class="flex_wrap">
									<div class="slide-cell">장소로 검색하기</div>
									<div class="slide-cell">도로명 검색하기</div>
									<div class="slide-cell">지번으로 검색하기</div>
									<div class="slide-cell">건물로 검색하기</div>
									<div class="slide-cell">역으로 검색하기</div>
									<div class="slide-cell">학교로 검색하기</div>
								</div>
							</div>
							<div id="slide-wrap-mobile">
								<div class="flex_wrap-mobile">
									<div class="slide-cell-mobile">장소로 검색하기</div>
									<div class="slide-cell-mobile">도로명 검색하기</div>
									<div class="slide-cell-mobile">지번으로 검색하기</div>
									<div class="slide-cell-mobile">건물로 검색하기</div>
									<div class="slide-cell-mobile">역으로 검색하기</div>
									<div class="slide-cell-mobile">학교로 검색하기</div>
								</div>
							</div>
						</div>
					</form>
				</div>


				<div id="result-wrap">
					<div id="result-container">
						<div id="flex-wrap">
							<div id="result-flex">
								<span id="result">검색결과가 0건 있습니다.</span>
								<button onclick="search()">검색하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- main -->
	<section id="two">
		<div id="info_wrap">
			<div id="img_wrap">
				<img src="${pageContext.request.contextPath}/images/poster.png">
			</div>
			<div id="text_wrap">
				<div id="check_img">
					<img src="${pageContext.request.contextPath}/images/checkList.png">
				</div>
			</div>
		</div>
	</section>

	<article>
		<section id="three">
			<div id="intro_wrap">
				<div id="intro_text">
					<span> 2030에 대한 이해에서 출발한 가치살자!<br> 집을 구하는 상황과 조건에 맞춘 집을
						만들었어요.
					</span>
					<div id="under_line1"></div>
					<div id="under_line2"></div>
				</div>
				'
				<div id="intro_border">
					<div id="border_wrap">
						<div class="flex_wrap">
							<div class="border_content">#초역세권</div>
							<div class="border_content">#아파트</div>
							<div class="border_content">#프리미엄 1인실</div>
							<div class="border_content">#단기계약 3개원</div>
						</div>
						<div class="flex_wrap">
							<div class="border_content">#대학인근</div>
							<div class="border_content">#가성비 다인실</div>
							<div class="border_content">#건물전체</div>
						</div>
					</div>
				</div>
				<div id="intro_img">
					<div class="intro_img">
						<div id="img1"></div>
						<div class="text-align">
							<span> 아직 주거지를 정하기 어려운<br> <strong>인턴, 고시생</strong>
							</span>
						</div>
					</div>
					<div class="intro_img">
						<div id="img2"></div>
						<div class="text-align">
							<span> 통학, 통근 거리가 부담스러운<br> <strong>대학생, 직장인</strong>
							</span>
						</div>
					</div>
					<div class="intro_img">
						<div id="img3"></div>
						<div class="text-align">
							<span>실용적인 주거 형태를 추구하는<br> <strong>1인 가구</strong>
							</span>
						</div>
					</div>
				</div>
			</div>
		</section>
	</article>
	<div id="map" style="display:'none'"></div>

	<section id="one" class="wrapper alt style2">
		<div class="title">최근 등록된 가치살집</div>
		<div class="arrow_btn prev">
			<img src="${pageContext.request.contextPath}/images/prev.png">
		</div>
		<div id="slide-wrap">
			<ul id="content-wrap">
				<c:forEach begin="0" end="5" varStatus="status">
					<li class="content-wrap">
						<div class="content">
							<a
								href="${pageContext.request.contextPath}/house/HouseDetailOk.ho?houseNumber=${bannerList[status.index].getHouseNumber()}">
								<img
								src="${pageContext.request.contextPath}/upload/${bannerList[status.index ].getHousefileName()}">
								<span>${bannerList[status.index].getHouseNumber()}호점</span>
							</a>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
		<div class="arrow_btn next">
			<img src="${pageContext.request.contextPath}/images/next.png">
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../fix/footer.jsp" />
</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=75a25b651aa07a1facbfaf92c4d784fa"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/mainpage.js"></script>
</html>