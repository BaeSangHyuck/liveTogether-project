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
	href="${pageContext.request.contextPath}/assets/css/hostmypagetour.css" />
</head>

<!-- Header -->

<jsp:include page="../fix/header.jsp" />

<!-- Aside -->
<jsp:include page="../fix/aside.jsp" />

<body class="is-preload">
	<c:set var="roomList" value="${roomList}" />
	<c:set var="guestList" value="${guestList}" />
	<c:set var="member" value="${member}" />
	<article id="main">

		<div id="mypageheader">
			<div class="inner">
				<div class="inner_ab">
					<span class="my_span01">${member.getMemberName()}</span>님의 마이페이지
					입니다.
				</div>
			</div>
		</div>



		<div class="mypage">

			<div class="mypagetool">
				<ul class="mypagebar">
					<li class="num1"><a
						href="${pageContext.request.contextPath}/member/MemberMypageOk.me">내
							정보조회</a></li>
					<li class="num2"><a
						href="${pageContext.request.contextPath}/member/HostMyPageOk.me">내
							정보수정</a></li>
					<li class="num3"><a
						href="${pageContext.request.contextPath}/member/HostMyPageTourOk.me">진행사항</a>
					</li>
					<li class="num4"><a
						href="${pageContext.request.contextPath}/member/HostMemberListOk.me">입주자목록</a>
					</li>
					<li class="num4"><a
						href="${pageContext.request.contextPath}/house/HostForSaleListOk.ho">하우스 관리</a>
					</li>
				</ul>
			</div>


			<div class="my">
				<div class="wrapper">
					<div class="mypagecontents">
						<div class="mypagebook">
							<div class="info-title">진행사항</div>
							<div class="book-list">
								<div class="process ">
									<div class="process-title">
										<a
											href="${pageContext.request.contextPath}/member/HostMyPageTourOk.me">투어신청
											목록</a>
									</div>
								</div>
								<div class="process ">
									<div class="process-title">
										<a
											href="${pageContext.request.contextPath}/member/HostMyPageReadyOk.me">투어확정
											목록</a>
									</div>
								</div>
								<div class="process active">
									<div class="process-title">
										<a
											href="${pageContext.request.contextPath}/member/HostMyPageCompleteOk.me">입주예정
											목록</a>
									</div>
								</div>
								<div class="process ">
									<div class="process-title">
										<a
											href="${pageContext.request.contextPath}/member/HostRejectListOk.me">거절 목록</a>
									</div>
								</div>
							</div>
						</div>
						<div class="myconheader3">
							<div class="info-title">입주 예정 목록</div>
							<div class="table-wrap">
								<table>
									<thead>
										<tr>
											<th class="th1">방 번호</th>
											<th class="th2">방 이름</th>
											<th class="th3">타입</th>
											<th class="th4">방 성별</th>
											<th class="th5">신청인</th>
											<th class="th6">성별</th>
											<th class="th7">전화번호</th>
											<th class="th8">승인 버튼</th>
										</tr>
									</thead>
									<tbody>
										<c:choose>
											<c:when test="${roomList != null and fn:length(roomList) >0}">
												<c:forEach var="room" items="${roomList}">
													<tr>
														<td class="td1">${room.getHouseNumber()}</td>
														<td class="td2">${room.getRoomName()}</td>
														<td class="td3">${room.getRoomType()}</td>
														<td class="td4">${room.getRoomGender()}</td>
														<td class="td5">${room.getMemberName()}</td>
														<td class="td6">${room.getMemberGender()}</td>
														<td class="td7">${room.getMemberPhone()}</td>
														<td><button
																onclick="location.href='${pageContext.request.contextPath}/member/HostStatusThirdOk.me?houseNumber=${room.getHouseNumber()}'">수락</button>
															<button
																onclick="location.href='${pageContext.request.contextPath}/member/HostDeleteThirdOk.me?houseNumber=${room.getHouseNumber()}'">거절</button></td>
													</tr>
												</c:forEach>
											</c:when>
											<c:otherwise><tr class="anotherTr"><td>목록이 없습니다.</td></tr></c:otherwise>
										</c:choose>
									</tbody>
								</table>
								<table id="paging">
									<tr>
										<c:choose>
											<c:when test="${search != null}">
												<td><c:if test="${startPage > 1}">
														<a
															href="${pageContext.request.contextPath}/member/HostMyPageCompleteOk.me?page=1">&lt;&lt;&nbsp;&nbsp;</a>
														<a
															href="${pageContext.request.contextPath}/member/HostMyPageCompleteOk.me?page=${startPage -1}">&lt;&nbsp;&nbsp;</a>
													</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${i eq page}">
																<c:out value="${i}" />&nbsp;&nbsp;
								</c:when>
															<c:otherwise>
																<a
																	href="${pageContext.request.contextPath}/member/HostMyPageCompleteOk.me?page=${i}"><c:out
																		value="${i}" /></a>&nbsp;&nbsp;
								</c:otherwise>
														</c:choose>
													</c:forEach> <c:if test="${endPage < realEndPage}">
														<a
															href="${pageContext.request.contextPath}/member/HostMyPageCompleteOk.me?page=${endPage + 1}">&nbsp;&nbsp;&gt;</a>
														<a
															href="${pageContext.request.contextPath}/member/HostMyPageCompleteOk.me?page=${realEndPage}">&nbsp;&nbsp;&gt;&gt;</a>
													</c:if></td>
											</c:when>
											<c:otherwise>
												<td><c:if test="${startPage > 1}">
														<a
															href="${pageContext.request.contextPath}/member/HostMyPageCompleteOk.me?page=1">&lt;&lt;&nbsp;&nbsp;</a>
														<a
															href="${pageContext.request.contextPath}/member/HostMyPageCompleteOk.me?page=${startPage -1}">&lt;&nbsp;&nbsp;</a>
													</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${i eq page}">
																<c:out value="${i}" />&nbsp;&nbsp;
								</c:when>
															<c:otherwise>
																<a
																	href="${pageContext.request.contextPath}/member/HostMyPageCompleteOk.me?page=${i}"><c:out
																		value="${i}" /></a>&nbsp;&nbsp;
								</c:otherwise>
														</c:choose>
													</c:forEach> <c:if test="${endPage < realEndPage}">
														<a
															href="${pageContext.request.contextPath}/member/HostMyPageCompleteOk.me?page=${endPage + 1}">&nbsp;&nbsp;&gt;</a>
														<a
															href="${pageContext.request.contextPath}/member/HostMyPageCompleteOk.me?page=${realEndPage}">&nbsp;&nbsp;&gt;&gt;</a>
													</c:if></td>
											</c:otherwise>
										</c:choose>
									</tr>
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