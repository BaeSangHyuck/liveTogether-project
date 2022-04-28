<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/hostforsalelist.css" />
<title>관리자페이지</title>
</head>
<!-- Header -->

<jsp:include page="../fix/header.jsp" />

<!-- Aside -->
<jsp:include page="../fix/aside.jsp" />

<body class="is-preload">
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
						href="${pageContext.request.contextPath}/member/HostMyPageLookOk.me">내
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
					<li class="num5"><a
						href="${pageContext.request.contextPath}/house/HostForSaleListOk.ho">하우스
							관리</a></li>
							<li class="num6"><a
						href="${pageContext.request.contextPath}/member/HostQuestionOk.me">문의사항</a></li>
				</ul>
			</div>
		</div>
	</article>
	<c:choose>
		<c:when test="${total eq 0}">
			<!-- 정보가 없을때 기본값 -->
			<div id=no>
				<div id="none">
					<div id="nonebox">
						<div id="nonehtag">
							<h4>현재 등록한 하우스가 없습니다.</h4>
							<h6>호스팅을 했는지 확인해주세요.</h6>
						</div>
					</div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div id="first-wrapper">
				<div id="second-wrapper">
					<p class="first-p">나의 하우스 관리</p>
					<div class="table-wrapper">
						<form
							action="${pageContext.request.contextPath}/house/HostForSaleListOk.ho">
							<table class="table">
								<tr>
									<td class="td td1"><input type="checkbox" id="term"
										name="term"></td>
									<td class="td td2">하우스</td>
									<td class="td td3">성별</td>
									<td class="td td4">타입</td>
									<td class="td td5">인원수</td>
									<td class="td td6">보증금</td>
									<td class="td td7">월세</td>
									<td class="td td8">입주일</td>
									<td class="td9">상태변경</td>
								</tr>
								<c:choose>
									<c:when test="${houseList != null and fn:length(houseList) >0}">
										<c:forEach var="house" items="${houseList}">
											<tr>
												<td class="ttd ttd1"><input type="checkbox" id="term1"
													name="term1" class="terms"
													value="${house.getHouseNumber()}"></td>
												<td class="ttd ttd2">${house.getHouseNumber()}호점</td>
												<td class="ttd ttd3"><c:choose>
														<c:when test="${house.getHouseGender() eq 'm' }">남성전용</c:when>
														<c:when test="${house.getHouseGender() eq 'w'}">여성전용</c:when>
														<c:when test="${house.getHouseGender() eq 'o'}">남녀공용</c:when>
													</c:choose></td>
												<td class="ttd ttd4"><c:choose>
														<c:when test="${house.getHouseType() eq 'a' }">아파트</c:when>
														<c:when test="${house.getHouseType() eq 'v'}">빌라</c:when>
														<c:when test="${house.getHouseType() eq 'd'}">단독 주택</c:when>
														<c:when test="${house.getHouseType() eq 'o'}">기타</c:when>
													</c:choose></td>
												<td class="ttd ttd5">${house.getHouseMax()}명</td>
												<td class="ttd ttd6">${house.getRoomDeposit()}만원</td>
												<td class="ttd ttd7">${house.getRoomMonthly()}만원</td>
												<td class="ttd ttd8">${house.getRoomDate()}</td>
												<td class="ttd ttd9"><div class="button2-wrapper">
														<button type="button" class="button2"
															onclick="location.href='${pageContext.request.contextPath}/house/HouseRegisterUpdate.ho?houseNumber=${house.getHouseNumber()}'">수정</button>
														<button type="button" class="button2"
															onclick="location.href='${pageContext.request.contextPath}/house/AdminDeleteStandByOk.ho?houseNumber=${house.getHouseNumber()}'">삭제</button>
													</div></td>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose>
							</table>
							<div id="width100">
								<div>
									<button class="button2 blue">선택삭제</button>
								</div>
							</div>
						</form>
						<!-- 페이징 처리 -->
						<table id="paging">
							<tr>
								<c:choose>
									<c:when test="${search != null}">
										<td><c:if test="${startPage > 1}">
												<a
													href="${pageContext.request.contextPath}/house/AdminDetailOk.ho?page=1">&lt;&lt;&nbsp;&nbsp;</a>
												<a
													href="${pageContext.request.contextPath}/house/AdminDetailOk.ho?page=${startPage -1}">&lt;&nbsp;&nbsp;</a>
											</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
												<c:choose>
													<c:when test="${i eq page}">
														<c:out value="${i}" />&nbsp;&nbsp;
								</c:when>
													<c:otherwise>
														<a
															href="${pageContext.request.contextPath}/house/AdminDetailOk.ho?page=${i}"><c:out
																value="${i}" /></a>&nbsp;&nbsp;
								</c:otherwise>
												</c:choose>
											</c:forEach> <c:if test="${endPage < realEndPage}">
												<a
													href="${pageContext.request.contextPath}/house/AdminDetailOk.ho?page=${endPage + 1}">&nbsp;&nbsp;&gt;</a>
												<a
													href="${pageContext.request.contextPath}/house/AdminDetailOk.ho?page=${realEndPage}">&nbsp;&nbsp;&gt;&gt;</a>
											</c:if></td>
									</c:when>
									<c:otherwise>
										<td><c:if test="${startPage > 1}">
												<a
													href="${pageContext.request.contextPath}/house/AdminDetailOk.ho?page=1">&lt;&lt;&nbsp;&nbsp;</a>
												<a
													href="${pageContext.request.contextPath}/house/AdminDetailOk.ho?page=${startPage -1}">&lt;&nbsp;&nbsp;</a>
											</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
												<c:choose>
													<c:when test="${i eq page}">
														<c:out value="${i}" />&nbsp;&nbsp;
								</c:when>
													<c:otherwise>
														<a
															href="${pageContext.request.contextPath}/house/AdminDetailOk.ho?page=${i}"><c:out
																value="${i}" /></a>&nbsp;&nbsp;
								</c:otherwise>
												</c:choose>
											</c:forEach> <c:if test="${endPage < realEndPage}">
												<a
													href="${pageContext.request.contextPath}/house/AdminDetailOk.ho?page=${endPage + 1}">&nbsp;&nbsp;&gt;</a>
												<a
													href="${pageContext.request.contextPath}/house/AdminDetailOk.ho?page=${realEndPage}">&nbsp;&nbsp;&gt;&gt;</a>
											</c:if></td>
									</c:otherwise>
								</c:choose>
							</tr>
						</table>
					</div>
				</div>
			</div>
			</c:otherwise>
			</c:choose>
			<jsp:include page="../fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/adminProp.js"></script>
</html>