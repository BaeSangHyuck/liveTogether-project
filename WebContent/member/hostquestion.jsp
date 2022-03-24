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
<style>
#none {
    height: 500px;
}
#nonebox {
    display: flex;
    flex-direction: column;
    background-color: #fff;
    border: 1px solid #edeff0;
    border-radius: 1em;
    box-shadow: 0px 0px 10px #0000001a;
    border-width: 0;
    width: 40%;
    margin: 40px auto;
    position: relative;
    height: 200px;
}
#nonebox h4 {
    margin: 0 0 0 0;
}
#nonebox h6 {
    margin: 0 0 0 0;
    color: #afabab;
}
#nonehtag {
    margin: 0 auto;
    margin-top: 4em;
}
#no {
    margin-top: 10em;
}
</style>

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
					<span class="my_span01">${memberName}</span>님의 마이페이지 입니다. 
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
					<li class="num4"><a
						href="${pageContext.request.contextPath}/house/HostForSaleListOk.ho">하우스관리</a></li>
					<li class="num5"><a
						href="${pageContext.request.contextPath}/member/HostQuestionOk.me">문의사항</a></li>
			</ul>
		</div>

<c:choose>
<c:when test="${inquiryList != null and fn:length(inquiryList) >0}">
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
											<th class="th7">답변상태</th>
											
										</tr>
									</thead>
									<tbody>
									<tbody>
										<c:choose>
											<c:when test="${inquiryList != null and fn:length(inquiryList) >0}">
												<c:forEach var="inquiry" items="${inquiryList}" varStatus="status">
													<tr>
														
														<td><a href="${pageContext.request.contextPath}/board/InquiryDetailOk.bo?inquiryNumber=${inquiry.getInquiryNumber()}">${status.count}</a></td>
														<td><a href="${pageContext.request.contextPath}/board/InquiryDetailOk.bo?inquiryNumber=${inquiry.getInquiryNumber()}">${inquiry.getHouseNumber()}</a></td>
														<td><a href="${pageContext.request.contextPath}/board/InquiryDetailOk.bo?inquiryNumber=${inquiry.getInquiryNumber()}">
														<c:choose>
												<c:when test="${inquiry.getHouseType() eq 'a' }">아파트</c:when>
												<c:when test="${inquiry.getHouseType() eq 'v'}">빌라</c:when>
												<c:when test="${inquiry.getHouseType() eq 'd'}">단독 주택</c:when>
												<c:when test="${inquiry.getHouseType() eq 'o'}">기타</c:when>
												<c:otherwise>
													선택안함
												</c:otherwise>
													</c:choose>
													</a>
													</td>
														<td><a href="${pageContext.request.contextPath}/board/InquiryDetailOk.bo?inquiryNumber=${inquiry.getInquiryNumber()}">${inquiry.getTypeOption()}</a></td>
														<td><a href="${pageContext.request.contextPath}/board/InquiryDetailOk.bo?inquiryNumber=${inquiry.getInquiryNumber()}">${inquiry.getMemberPhone()}</a></td>
														<td><a href="${pageContext.request.contextPath}/board/InquiryDetailOk.bo?inquiryNumber=${inquiry.getInquiryNumber()}">${inquiry.getInquiryContent()}</a></td>
														
														<c:choose>
											<c:when test="${inquiry.getStatus() eq 0}">
										<td class="ttd ttd2"><a href="${pageContext.request.contextPath}/board/InquiryDetailOk.bo?inquiryNumber=${inquiry.getInquiryNumber()}">답변대기</a></td>
											</c:when>
											<c:when test="${inquiry.getStatus() eq 1}">
										<td class="ttd ttd2"><a href="${pageContext.request.contextPath}/board/InquiryDetailOk.bo?inquiryNumber=${inquiry.getInquiryNumber()}">답변완료</a></td>
											</c:when>
										</c:choose>
														
													</tr>
												</c:forEach>
											</c:when>
											<%-- <c:otherwise>
												<tr class="anotherTr">
													<td>목록이 없습니다.</td>
												</tr>
											</c:otherwise> --%>
										</c:choose>
									</tbody>
								</table>
								
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
								<h4>등록된 문의사항이 없습니다.</h4>
								<h6>궁금한 사항은 가치살자에 문의해주세요!</h6>
							</div>
						</div>
					</div>
				</div>
			</c:otherwise>
			</c:choose>
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