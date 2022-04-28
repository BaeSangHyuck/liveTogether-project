<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML>

<html>
<head>
<title>가치살자</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/mypagetour.css" />
</head>
<style>
input::-webkit-input-placeholder {
	text-align: center;
	font-size: medium;
	color: #555 !important;
}

#review-1 {
	height: 64px;
	line-height: 64px;
}

.star-rating {
	display: flex;
	flex-direction: row-reverse;
	font-size: 2.25rem !important;
	justify-content: space-around;
	padding: 0 0.2em;
	text-align: center;
	width: 5em;
	margin-right: 1em;
}

.star-rating label#getstar {
	-webkit-text-stroke-width: 1px;
	-webkit-text-stroke-color: #555;
	-webkit-text-fill-color: yellow;
}

.star-rating input {
	display: none;
}

.star-rating label {
	-webkit-text-fill-color: transparent;
	-webkit-text-stroke-width: 2.3px;
	-webkit-text-stroke-color: #555;
	cursor: pointer;
}

.star-rating :checked ~ label {
	-webkit-text-fill-color: yellow;
}

.star-rating label:hover, .star-rating label:hover ~ label {
	-webkit-text-fill-color: yellow;
}

input[type="radio"]+label {
	text-decoration: none;
	cursor: pointer;
	display: inline-block;
	content: none !important;
	padding-left: 0;
	padding-right: 0;
}

input[type="radio"]+label:before {
	content: none !important;
}

.mybtn:hover {
	background-color: #1187cfbf;
}


</style>

<!-- Header -->

<jsp:include page="../fix/header.jsp" />

<!-- Aside -->
<jsp:include page="../fix/aside.jsp" />

<body class="is-preload">

	<c:set var="myTourHouse" value="${myTourHouse}" />
	<c:set var="myTourHouseRoom" value="${myTourHouseRoom}" />

	<article id="main">




		<div id="mypageheader">
			<div class="inner">
				<div class="inner_ab">
					<span class="my_span01">${memberName}</span>님의 마이페이지 입니다. 
				</div>
			</div>
		</div>



		<div class="mypagetool">
			<ul class="mypagebar">
				<li class="num1"><a
					href="${pageContext.request.contextPath}/member/MemberMypageOk.me">내
						정보조회</a></li>
				<li class="num2"><a
					href="${pageContext.request.contextPath}/member/MemberMypageUpdate.me">내
						정보수정</a></li>
				<li class="num3"><a
					href="${pageContext.request.contextPath}/member/MemberMypageTour.me">진행사항</a>
				</li>
				<li class="num4"><a
					href="${pageContext.request.contextPath}/member/mypagecontract.jsp">계약서 출력
				</a></li>
				<li class="num5"><a
					href="${pageContext.request.contextPath}/member/mypagequestion.jsp">문의사항
				</a></li>
			</ul>
		</div>


		<c:choose>
			<c:when test="${total eq 1}">

				<div class="mypage">

					<div class="my" id="tourgo">
						<div class="wrapper">
							<div class="mypagenotice">
								투어신청을 통해 접수하신 접수 현황을 확인하실 수 있습니다. 여러 지점을 접수하신 분들은 신청하신 순서대로
								나열됩니다. <br>투어신청이 완료된 후 통화를 통해 우주 타임(하우스 투어) 일정이 정해지고 현장 방문
								후 계약 완료가 되면 진행 중인 신청현황은 상단의 계약서 페이지로 이동하게 됩니다.
							</div>

							<div class="mypagecontents">
								<div class="myconheader">
									<span class="myhousename">가치하우스${myTourHouse.getHouseNumber()}호점</span>
									<span class="myhousecode">${myTourHouseRoom.getRoomName()}</span>
									<c:choose>
										<c:when test="${myTourHouse.getStatus() eq '0'}">
											<a class="mybtn" id="tourCancel"
												href="${pageContext.request.contextPath}/member/MemberTourCancelOk.me">투어신청
												취소</a>
										</c:when>
										<c:when test="${myTourHouse.getStatus() eq  '1'}">
											<a class="mybtn" id="checkIn"
												href="${pageContext.request.contextPath}/member/MemberCheckinOk.me">입주
												신청</a>
										</c:when>
										<c:when test="${myTourHouse.getStatus() eq '2'}">
											<a class="mybtn" id="tourCancel"
												href="${pageContext.request.contextPath}/member/MemberTourCancelOk.me">입주신청
												취소</a>
										</c:when>
										<c:when test="${myTourHouse.getStatus() eq '3'}">
										</c:when>
									</c:choose>
								</div>
								<div class="mypagebook">
									<div class="info-title">진행사항</div>
									<div class="book-list">
										<div class="process active tourOk">
											<div class="process-title ">투어신청완료</div>
										</div>
										<div class="process ">
											<div class="gt tourOk active1">&gt;</div>
										</div>
										<div class="process tourWait">
											<div class="process-title ">방문예정</div>
										</div>
										<div>
											<div class="gt tourWait">&gt;</div>
										</div>
										<div class="process checkInWait">
											<div class="process-title ">입주신청완료</div>
										</div>
										<div>
											<div class="gt checkInWait">&gt;</div>
										</div>
										<div class="process checkInOk">
											<div class="process-title ">입주완료</div>
										</div>
									</div>
								</div>

								<div class="mypagebook1">
									<div class="before">안내</div>
									<c:choose>
										<c:when test="${myTourHouse.getStatus() eq '0'}">
											<div class="notice-content">투어 신청을 완료했습니다.</div>
										</c:when>
										<c:when test="${myTourHouse.getStatus() eq '1'}">
											<div class="notice-content">투어 대기중입니다.</div>
										</c:when>
										<c:when test="${myTourHouse.getStatus() eq '2'}">
											<div class="notice-content">입주 신청을 완료했습니다.</div>
										</c:when>
										<c:when test="${myTourHouse.getStatus() eq '3'}">
											<div class="notice-content">
												<!-- style="display:flex;" -->
												<div id="1" style="line-height: 2;">입주 완료했습니다.</div>
												<div id="2"
													style="color: red; font-size: small; margin-top: -1rem;">후기는
													최대 30일 이내 작성해주세요.</div>
											</div>
										</c:when>
									</c:choose>
								</div>

								<div class="myconheader2">
									<div class="info-title">신청 지점 정보</div>
									<div class="house-info-wrapper">
										<div class="column-wrap">
											<div class="column">
												<div class="column-title">주소</div>
												<div class="column-value">${myTourHouse.getHouseAddress()}</div>
											</div>
											<div class="column">
												<div class="column-title">성별</div>
												<div class="column-value">
													<c:choose>
														<c:when test="${myTourHouse.getHouseGender() eq 'm' }">남성 전용</c:when>
														<c:when test="${myTourHouse.getHouseGender() eq 'w'}">여성 전용</c:when>
														<c:otherwise>
								남녀 공용
								</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="column">
												<div class="column-title">최대 인원</div>
												<div class="column-value">${myTourHouse.getHouseMax()}</div>
											</div>
											<div class="column">
												<div class="column-title">주택유형</div>
												<div class="column-value">
													<c:choose>
														<c:when test="${myTourHouse.getHouseType() eq 'a' }">아파트</c:when>
														<c:when test="${myTourHouse.getHouseType() eq 'v'}">빌라</c:when>
														<c:when test="${myTourHouse.getHouseType() eq 'd'}">단독 주택</c:when>
														<c:when test="${myTourHouse.getHouseType() eq 'o'}">기타</c:when>
													</c:choose>
												</div>
											</div>
										</div>
									</div>






									<div class="myconheader3">
										<div class="info-title">신청 방 정보</div>
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
														<td>${myTourHouseRoom.getRoomName()}</td>
														<td><c:choose>
																<c:when
																	test="${myTourHouseRoom.getRoomGender() eq 'm' }">남성전용</c:when>
																<c:when test="${myTourHouseRoom.getRoomGender() eq 'w'}">여성전용</c:when>
															</c:choose></td>
														<td>${myTourHouseRoom.getRoomType()}인실</td>
														<td>${myTourHouseRoom.getRoomArea()}m²</td>
														<td>${myTourHouseRoom.getRoomDeposit()}만원</td>
														<td>${myTourHouseRoom.getRoomMonthly()}만원</td>
														<td>${myTourHouseRoom.getRoomDate()}</td>
													</tr>

												</tbody>
											</table>

										</div>
									</div>

									<div class="myconheader4">
										<c:choose>
											<c:when test="${myTourHouseRoom.getStar() eq '0'}">
												<div class="info-title">후기 작성하기</div>
												<div id="review-form">
													<div class="star-rating auto">
														<input type="radio" id="5-stars" name="rating" value="5" />
														<label for="5-stars" class="star pr-4">★</label> <input
															type="radio" id="4-stars" name="rating" value="4" /> <label
															for="4-stars" class="star">★</label> <input type="radio"
															id="3-stars" name="rating" value="3" /> <label
															for="3-stars" class="star">★</label> <input type="radio"
															id="2-stars" name="rating" value="2" /> <label
															for="2-stars" class="star">★</label> <input type="radio"
															id="1-star" name="rating" value="1" /> <label
															for="1-star" class="star">★</label>

													</div>
													<div id="review">
														<input type="text" id="reviewText" name="reviewText"
															placeholder="후기를 등록해주세요.(최대 30자이내)" maxlength='30'>
													</div>
													<input type="button" id="reviewbtn" value="완료">
												</div>
											</c:when>
											<c:otherwise>
												<div class="info-title">후기</div>
												<div id="review-form">
													<div class="star-rating auto">
														<label id="getstar"><c:forEach begin="1"
																end="${myTourHouseRoom.getStar()}">★</c:forEach></label>
													</div>
													<div id="review">
														<div id="review-1">${myTourHouseRoom.getReview()}</div>
													</div>
													<div class="btns-wrap">
													<a id="reviewbtn1" class='btns' onclick="updateReview()">수정</a> <a id="reviewbtn2" 
														class='btns' onclick='deleteReview()'>삭제</a>
													</div>
												</div>
											</c:otherwise>
										</c:choose>
									</div>



								</div>




							</div>

						</div>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<!-- 정보가 없을때 기본값 -->
				<div id=no>
					<div id="none">
						<div id="nonebox">
							<div id="nonehtag">
								<h4>현재 진행중인 투어가 없습니다.</h4>
								<h6>상단의 방 찾기를 통해 투어신청을 진행해주세요.</h6>
							</div>
						</div>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</article>



	<jsp:include page="../fix/footer.jsp" />

	<!-- Scripts -->
	<script>
		var status = "${myTourHouse.getStatus()}";
		var contextPath = "${pageContext.request.contextPath}";
		var reviewfrm = "${myTourHouseRoom.getStar()}";
		var star = "${myTourHouseRoom.getStar()}";
		var review = "${myTourHouseRoom.getReview()}"
	</script>

	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/mypagetour.js"></script>
</body>
</html>