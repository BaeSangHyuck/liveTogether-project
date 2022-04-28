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
	href="${pageContext.request.contextPath}/assets/css/adminInquiry.css" />
<title>관리자페이지</title>
</head>
<body>
	<c:set var="inquiryList" value="${inquiryList}" />
	<jsp:include page="../fix/header.jsp" />
	<div id="first-wrapper">
		<div id="second-wrapper">
			<p class="first-p">가치살자의 문의관리</p>
			<div class="table-wrapper">
				<form
					action="${pageContext.request.contextPath}/board/InquiryAdminCheckDeleteOneOk.bo" name="clickDelete">
					<table class="table">
						<tr>
							<td class="td td1"><input type="checkbox" id="term"
								name="term"></td>
							<td class="td td2">답변 상태</td>
							<td class="td td2">아이디</td>
							<td class="td td3">번호</td>
							<td class="td td4">참고 호점</td>
							<td class="td td5">집 유형</td>
							<td class="td td5">타입</td>
							<td class="td td6">삭제</td>
						</tr>
						<c:choose>
							<c:when test="${inquiryList != null and fn:length(inquiryList) >0}">
								<c:forEach var="inquiry" items="${inquiryList}">
									<tr>
										<td class="ttd ttd1"><input type="checkbox" id="term1"
											name="term1" class="terms" value="${inquiry.getInquiryNumber()}"></td>
										<c:choose>
											<c:when test="${inquiry.getStatus() eq 0}">
										<td class="ttd ttd2">대기중</td>
											</c:when>
											<c:when test="${inquiry.getStatus() eq 1}">
										<td class="ttd ttd2">완료됨</td>
											</c:when>
										</c:choose>
										<td class="ttd ttd2">${inquiry.getMemberId()}</td>
												<td class="ttd ttd3">${inquiry.getMemberPhone()}</td>
										<td class="ttd ttd4">${inquiry.getHouseNumber()}</td>
										<c:choose>
											<c:when test="${inquiry.getHouseType() eq 'a'}">
												<td class="ttd ttd5">아파트</td>
											</c:when>
											<c:when test="${inquiry.getHouseType() eq 'v'}">
												<td class="ttd ttd5">빌라</td>
											</c:when>
											<c:when test="${inquiry.getHouseType() eq 'd'}">
												<td class="ttd ttd5">단독주택</td>
											</c:when>
											<c:when test="${inquiry.getHouseType() eq 'o'}">
												<td class="ttd ttd5">기타</td>
											</c:when>
										</c:choose>
										<c:choose>
											<c:when test="${inquiry.getMemberType() eq 'a'}">
												<td class="ttd ttd5">관리자</td>
											</c:when>
											<c:when test="${inquiry.getMemberType() eq 'h'}">
												<td class="ttd ttd5">호스트</td>
											</c:when>
											<c:when test="${inquiry.getMemberType() eq 'n'}">
												<td class="ttd ttd5">게스트</td>
											</c:when>
										</c:choose>
										<td class="ttd ttd6"><div class="button2-wrapper">
												<button type="button" class="button2"
													onclick="location.href='${pageContext.request.contextPath}/board/InquiryDetailOk.bo?inquiryNumber=${inquiry.getInquiryNumber()}'">보기</button>
												<button type="button" class="button2"
													onclick="location.href='${pageContext.request.contextPath}/board/InquiryDeleteOneOk.bo?inquiryNumber=${inquiry.getInquiryNumber()}'">삭제</button>
											</div></td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</table>
					<div id="width100">
						<div>
							<button class="button2 blue" type="button" onclick="send()">선택 삭제</button>
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
											href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo?page=1">&lt;&lt;&nbsp;&nbsp;</a>
										<a
											href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo?page=${startPage -1}">&lt;&nbsp;&nbsp;</a>
									</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
										<c:choose>
											<c:when test="${i eq page}">
												<c:out value="${i}" />&nbsp;&nbsp;
								</c:when>
											<c:otherwise>
												<a
													href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo?page=${i}"><c:out
														value="${i}" /></a>&nbsp;&nbsp;
								</c:otherwise>
										</c:choose>
									</c:forEach> <c:if test="${endPage < realEndPage}">
										<a
											href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo?page=${endPage + 1}">&nbsp;&nbsp;&gt;</a>
										<a
											href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo?page=${realEndPage}">&nbsp;&nbsp;&gt;&gt;</a>
									</c:if></td>
							</c:when>
							<c:otherwise>
								<td><c:if test="${startPage > 1}">
										<a
											href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo?page=1">&lt;&lt;&nbsp;&nbsp;</a>
										<a
											href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo?page=${startPage -1}">&lt;&nbsp;&nbsp;</a>
									</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
										<c:choose>
											<c:when test="${i eq page}">
												<c:out value="${i}" />&nbsp;&nbsp;
								</c:when>
											<c:otherwise>
												<a
													href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo?page=${i}"><c:out
														value="${i}" /></a>&nbsp;&nbsp;
								</c:otherwise>
										</c:choose>
									</c:forEach> <c:if test="${endPage < realEndPage}">
										<a
											href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo?page=${endPage + 1}">&nbsp;&nbsp;&gt;</a>
										<a
											href="${pageContext.request.contextPath}/board/InquiryAdminOneOk.bo?page=${realEndPage}">&nbsp;&nbsp;&gt;&gt;</a>
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