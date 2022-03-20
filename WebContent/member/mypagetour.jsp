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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypagetour.css" />
</head>

<!-- Header -->

<jsp:include page="../fix/header.jsp" />

<!-- Aside -->
<jsp:include page="../fix/aside.jsp" />

<body class="is-preload">
<c:set var="member" value="${member}"/>
	<article id="main">

		<div id="mypageheader">
			<div class="inner">
				<div class="inner_ab">
					<span class="my_span01">${member.getMemberName()}</span>님의 마이페이지 입니다.
				</div>
			</div>
		</div>



		<div class="mypage">		
				
					<div class="mypagetool">
						<ul class="mypagebar">
							<li class="num1">
								<a href="${pageContext.request.contextPath}/member/MemberMypageOk.me">내 정보조회</a>
							</li>
							<li class="num2">
								<a href="${pageContext.request.contextPath}/member/MemberMypageUpdate.me">내 정보수정</a>
							</li>
							<li class="num3">
								<a href="${pageContext.request.contextPath}/member/mypagetour.jsp">진행사항</a>
							</li>
							<li class="num4">
								<a href="${pageContext.request.contextPath}/member/mypagecontract.jsp">계약서 출력</a>
							</li>
						</ul>
							</div>
							
							
					<div class="my">		
						<div class="wrapper">
							<div class="mypagenotice">
투어신청을 통해 접수하신 접수 현황을 확인하실 수 있습니다. 여러 지점을 접수하신 분들은 신청하신 순서대로 나열됩니다.
<br>투어신청이 완료된 후 통화를 통해 우주 타임(하우스 투어) 일정이 정해지고 현장 방문 후 계약 완료가 되면 진행 중인 신청현황은 상단의 계약서 페이지로 이동하게 됩니다.
							</div>
						
						<div class="mypagecontents">
							<div class="myconheader">
								<span class="myhousename">1호점</span>
								<span class="myhousecode">198D</span>
								<a class="mybtn">투어신청 취소</a>
							</div>
						<div class="mypagebook">
							<div class="info-title">진행사항</div>
							<div class="book-list">
								<div class="process active">
									<div class="process-title">입주신청완료</div>	
								</div>
								<div class="process active">
									<div class="gt">&gt;</div>
									</div>
								<div class="process ">
									<div class="process-title">방문예정</div>
								</div>
									<div class="gt">&gt;</div>
								<div class="process ">
									<div class="process-title">입주예정</div>
								</div>
									<div class="gt">&gt;</div>
								<div class="process ">
									<div class="process-title">입주완료</div>
								</div>
							</div>
						</div>
						
						<div class="mypagebook1">
							<div class="before">안내</div>
							<div class="notice-content">투어 신청을 완료했습니다.</div>
						</div>
						
						<div class="myconheader2">
							<div class="info-title">신청 지점 정보</div>
							<div class="house-info-wrapper">
							<!-- 	<img class="myhouse" src="https://woozoo.s3.amazonaws.com/uploads/house/main_image/426/m-1638259637.png"> -->
							<div class="column-wrap">
							<div class="column">
								<div class="column-title">주소</div>
								<div class="column-value">${house.getHouseAddress()}</div>
							</div>
							<div class="column">
								<div class="column-title">성별</div>
								<div class="column-value">
									<c:choose>
										<c:when test="${house.getHouseGender() eq 'm' }">남성 전용</c:when>
										<c:when test="${house.getHouseGender() eq 'w'}">여성 전용</c:when>
										<c:otherwise>
								남녀 공용
								</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="column">
								<div class="column-title">최대 인원</div>
								<div class="column-value">${house.getHouseMax()}</div>
							</div>
							<div class="column">
								<div class="column-title">주택유형</div>
								<div class="column-value">
									<c:choose>
										<c:when test="${house.getHouseType() eq 'a' }">아파트</c:when>
										<c:when test="${house.getHouseType() eq 'v'}">빌라</c:when>
										<c:when test="${house.getHouseType() eq 'd'}">단독 주택</c:when>
										<c:when test="${house.getHouseType() eq 'o'}">기타</c:when>
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
							<c:choose>
								<c:when test="${room != null and fn:length(room) > 0}">
									<c:forEach var="room" items="${room}">
										<tr>
											<td>${room.getRoomName()}</td>
											<td><c:choose>
													<c:when test="${room.getRoomGender() eq 'm' }">남성전용	</c:when>
													<c:when test="${room.getRoomGender() eq 'w'}">여성전용</c:when>
												</c:choose></td>
											<td>${room.getRoomType()}인실</td>
											<td>${room.getRoomArea()}m²</td>
											<td>${room.getRoomDeposit()}만원</td>
											<td>${room.getRoomMonthly()}만원</td>
											<td>${room.getRoomDate()}</td>
											<!-- <td><button class="button-tour">투어신청</button></td>
											<td><button class="button-profile">펼쳐보기</button></td> -->
										</tr>
									<!-- 프로필 	
									<tr class="tr-wrap1">
											<td colspan="9"><div id="profile">
													<div class="profile-wrap">
														<div class="profile">
															<div class="profile-name">
																<b>홍만두</b>
																<p>(남자)</p>
															</div>
															<div class="profile-intro">
																<span>"안녕하세요 저는 착한만두 홍만두입니다. 만찐두빵먹자 친추부탁드립니다."</span>
															</div>
														</div>
														<div class="profile">
															<div class="profile-name">
																<b>상냥이</b>
																<p>(남자)</p>
															</div>
															<div class="profile-intro">
																<span>"안녕하세요 안상냥이 상냥이입니다. 3팀 팀장 배상혁 잘부탁드립니다."</span>
															</div>
														</div>
														<div class="profile">
															<div class="profile-name">
																<b>다크준형</b>
																<p>(남자)</p>
															</div>
															<div class="profile-intro">
																<span>"여러분 코로나 조심하세요. 목이 너무 아파요ㅠㅠ 아프지 마세요 여러분"</span>
															</div>
														</div>
													</div>
												</div></td>
										</tr> -->
									</c:forEach>
								</c:when>
							</c:choose>


						</tbody>
					</table>

				</div>
				</div>
						</div>
						
						
						</div>
						
					</div>
						</div>


	</article>



	<jsp:include page="../fix/footer.jsp" /> 


	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/mypagetour.js"></script>
</body>
</html>