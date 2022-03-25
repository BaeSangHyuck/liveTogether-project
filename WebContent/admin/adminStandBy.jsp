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
	href="${pageContext.request.contextPath}/assets/css/adminStandBy.css" />
<title>관리자페이지</title>
</head>
<body>
	<c:set var="houseList" value="${houseList}" />
	<jsp:include page="../fix/header.jsp" />
	<div id="first-wrapper">
		<div id="second-wrapper">
			<p class="first-p">가치살자의 좋은방 구하기 매물관리</p>
			<div class="button-wrapper">
				<button class="button button-approve">등록대기</button>
				<button class="button button-list"
					onclick="location.href='${pageContext.request.contextPath}/house/AdminDetailOk.ho'">등록매물</button>
			</div>
			<div class="table-wrapper">
				<form
					action="${pageContext.request.contextPath}/house/AdminCheckStandByDeleteOk.ho"
					name="clickDelete">
					<table class="table">
						<tr>
							<td class="td td1"><input type="checkbox" id="term"
								name="term"></td>
							<td class="td td2">하우스 이름</td>
							<td class="td td3">성별</td>
							<td class="td td4">타입</td>
							<td class="td td5">총 인원수</td>
							<td class="td td6">보증금</td>
							<td class="td td7">월세</td>
							<td class="td td8">입주 가능일</td>
							<td class="td9">상태변경</td>
						</tr>
						<c:choose>
							<c:when test="${houseList != null and fn:length(houseList) >0}">
								<c:forEach var="house" items="${houseList}">
									<tr>
										<td class="ttd ttd1"><input type="checkbox" id="term1"
											name="term1" class="terms" value="${house.getHouseNumber()}"></td>
										<td class="ttd ttd2">${house.getHouseNumber()}호점</td>
										<c:choose>
											<c:when test="${house.getHouseGender() eq 'm'}">
												<td class="ttd ttd3">남성전용</td>
											</c:when>
											<c:when test="${house.getHouseGender() eq 'w'}">
												<td class="ttd ttd3">여성전용</td>
											</c:when>
											<c:otherwise>
												<td class="ttd ttd3">남녀공용</td>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${house.getHouseType() eq 'a'}">
												<td class="ttd ttd4">아파트</td>
											</c:when>
											<c:when test="${house.getHouseType() eq 'v'}">
												<td class="ttd ttd4">빌라</td>
											</c:when>
											<c:when test="${house.getHouseType() eq 'd'}">
												<td class="ttd ttd4">단독주택</td>
											</c:when>
											<c:when test="${house.getHouseType() eq 'o'}">
												<td class="ttd ttd4">기타</td>
											</c:when>
										</c:choose>
										<td class="ttd ttd5">${house.getHouseMax()}명</td>
										<td class="ttd ttd6">${house.getRoomDeposit()}만원</td>
										<td class="ttd ttd7">${house.getRoomMonthly()}만원</td>
										<td class="ttd ttd8">${house.getRoomDate()}</td>
										<td class="ttd ttd9"><div class="button2-wrapper">
												<button type="button" class="button2"
													onclick="location.href='${pageContext.request.contextPath}/house/AdminUpdateStatusOk.ho?houseNumber=${house.getHouseNumber()}'">승인</button>
												<button type="button" class="button2"
													onclick="location.href='${pageContext.request.contextPath}/house/AdminDeleteStandByOk.ho?houseNumber=${house.getHouseNumber()}'">거절</button>
											</div></td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</table>
					<div id="width100">
						<div>
							<button class="button2 blue" type="button" onclick="send()">선택
								삭제</button>
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
	<jsp:include page="../fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/adminProp.js"></script>
</html>