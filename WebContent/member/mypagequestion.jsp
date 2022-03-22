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
	href="${pageContext.request.contextPath}/assets/css/mypagequestion.css" />
</head>

<!-- Header -->

<jsp:include page="../fix/header.jsp" />

<!-- Aside -->
<jsp:include page="../fix/aside.jsp" />

<body class="is-preload">
		<c:set var="inquiryList" value="${inquiryList}" />
	<article id="main">

		<div id="mypageheader">
			<div class="inner">
				<div class="inner_ab">
					<%-- <span class="my_span01">${member.getMemberName()}</span>님의 마이페이지
					입니다. --%>
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
					href="${pageContext.request.contextPath}/member/MemberMypageUpdate.me">내
						정보수정</a></li>
				<li class="num3"><a
					href="${pageContext.request.contextPath}/member/MemberMypageTour.me">진행사항</a>
				</li>
				<li class="num4"><a
					href="${pageContext.request.contextPath}/member/mypagecontract.jsp">계약서
						출력 </a></li>
				<li class="num5"><a
					href="${pageContext.request.contextPath}/member/MemberQuestionListOk.me">문의사항
						 </a></li>
			</ul>
		</div>

			<div class="my">
				<div class="wrapper">
					<div class="mypagecontents">
						<div class="myconheader3">
							<div class="info-title">문의사항</div>
							<div class="table-wrap">
								<table>
									<thead>
										<tr>
											<th class="th1">문의번호</th>
											<th class="th2">호점</th>
											<th class="th3">방 유형</th>
											<th class="th4">옵션</th>
											<th class="th5">전화번호</th>
											<th class="th6">문의내용</th>
											
										</tr>
									</thead>
									<tbody>
									<tbody>
										<c:choose>
											<c:when test="${inquiryList != null and fn:length(inquiryList) >0}">
												<c:forEach var="inquiry" items="${inquiryList}" varStatus="status">
													<tr>
														<td>${status.count}</td>
														<td>${inquiry.getHouseNumber()}호점</td>
														<td>
														<c:choose>
												<c:when test="${inquiry.getHouseType() eq 'a' }">아파트</c:when>
												<c:when test="${inquiry.getHouseType() eq 'v'}">빌라</c:when>
												<c:when test="${inquiry.getHouseType() eq 'd'}">단독 주택</c:when>
												<c:when test="${inquiry.getHouseType() eq 'o'}">기타</c:when>
												<c:otherwise>
													선택안함
												</c:otherwise>
													</c:choose>
													</td>
														<td>${inquiry.getTypeOption()}</td>
														<td>${inquiry.getMemberPhone()}</td>
														<td>${inquiry.getInquiryContent()}</td>
													</tr>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<tr class="anotherTr">
													<td>목록이 없습니다.</td>
												</tr>
											</c:otherwise>
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

</body>
</html>