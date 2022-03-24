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
	href="${pageContext.request.contextPath}/assets/css/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/noticeDetail.css" />
<title>가치살자 문의 내용</title>
</head>
<body>
	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />

	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />

	<article class="noticeDetail-first-wrap">
		<div class="second-wrap">
			<div class="third-wrap">
				<div class="gradation-div-wrap">
					<p id="first-p">가치살자 문의 내용</p>
					<div class="gradation-div"></div>
				</div>
				<br>
				<p id="second-p">${inquiry.getMemberId()}의문의</p>
				<br>
				<div id="span-wrapper">
					<div id="content-wrapper">
						<pre id="inquiryContent">${inquiry.getInquiryContent()}</pre>
					</div>
				</div>
			</div>
				<c:choose>
				<c:when test="${memberType eq 'a'}">
			<div id="reply-wrap">
				<div class="header">
					<h2>관리자의 답변</h2>
				</div>
				<div>
					<c:set var="reply" value="${inquiry.getInquiryResponse()}" />
					<c:choose>
					<c:when test="${empty reply}">
						<form method="post" action="${pageContext.request.contextPath}/board/InquiryReplyUpdateOk.bo" class="replyForm" name="inquiryResponse">
							<input type="hidden" name="inquiryNumber" value="${inquiry.getInquiryNumber()}">
							<textarea name="inquiryResponse" id="reply" placeholder="답변 내용을 적어주세요."
								rows="5"></textarea>
								<button id="replyRegister">답변등록</button>
						</form>
					</c:when>
					<c:otherwise>
						<div id="replyList">
							<div class="replyContent">
								<pre>${inquiry.getInquiryResponse()}</pre>
							</div>
							<button class="replyContentButton" onclick="location.href='${pageContext.request.contextPath}/board/InquiryReplyDeleteOk.bo?inquiryNumber=${inquiry.getInquiryNumber()}'">삭제</button>
						</div>
					</c:otherwise>
					</c:choose>
				</div>
			</div>
				</c:when>
				</c:choose>
		</div>
	</article>

	<jsp:include page="../fix/footer.jsp" />
</body>
</html>