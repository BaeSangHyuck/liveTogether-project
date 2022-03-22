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
	href="${pageContext.request.contextPath}/assets/css/adminReviewList.css" />
<title>관리자페이지</title>
</head>
<body>
	<c:set var="houseList" value="${houseList}" />
	<c:set var="reviewList" value="${reviewList}"/>

	<jsp:include page="../fix/header.jsp" />

	<div id="first-wrapper">
		<div id="second-wrapper">
			<p class="first-p">가치살자의 하우스 리뷰 목록</p>
			<div class="table-wrapper">
				<form
					action="${pageContext.request.contextPath}/house/AdminCheckDeleteOk.ho">
					<table class="table">
						<tr>
							<td class="td td1">번호</td>
							<td class="td td2">하우스 이름</td>
							<td class="td td3">방 이름</td>
							<td class="td td4">아이디</td>
							<td class="td td5">별점</td>
							<td class="td td6">리뷰</td>
						</tr>
						<c:choose>
							<c:when test="${reviewList != null and fn:length(reviewList) >0}">
								<c:forEach var="review" items="${reviewList}" varStatus="status">
									<tr>
										<td class="ttd ttd1">${status.count}</td>
										<td class="ttd ttd2"><a href="${pageContext.request.contextPath}/house/HouseDetailOk.ho?houseNumber=${review.getHouseNumber()}" target="_blank">${review.getHouseNumber()}호점</a></td>
										<td class="ttd ttd3"><a href="${pageContext.request.contextPath}/house/HouseDetailOk.ho?houseNumber=${review.getHouseNumber()}" target="_blank">${review.getRoomName()}</a></td>
										<td class="ttd ttd4"><a href="${pageContext.request.contextPath}/house/HouseDetailOk.ho?houseNumber=${review.getHouseNumber()}" target="_blank">${review.getMemberId()}</a></td>
										<td class="ttd ttd5"><a href="${pageContext.request.contextPath}/house/HouseDetailOk.ho?houseNumber=${review.getHouseNumber()}" target="_blank">${review.getStar()}점</a></td>
										<td class="ttd ttd6"><a href="${pageContext.request.contextPath}/house/HouseDetailOk.ho?houseNumber=${review.getHouseNumber()}" target="_blank">${review.getReview()}</a></td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</table>
				</form>
				
				
				
				
				
				<!-- 페이징 처리 -->
				<%-- <table id="paging">
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
				</table> --%>
			</div>
		</div>
	</div>
	<jsp:include page="../fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/adminProp.js"></script>
</html>