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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noticeDetail.css" />
<title>가치살자 공지사항 내용</title>
</head>
<body>
	<c:set var="board" value="${board}" />
	<c:set var="files" value="${files}" />
	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />

	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />

	<article class="noticeDetail-first-wrap">
		<div class="second-wrap">
			<div class="third-wrap">
				<div class="gradation-div-wrap">
					<p id="first-p">가치살자 공지사항</p>
					<div class="gradation-div"></div>
				</div>
				<br>
				<p id="second-p">${board.getBoardTitle()}</p>
				<br>
				<div id="span-wrapper">
					<div id="img-wrapper">
						<c:choose>
							<c:when test="${files != null and fn:length(files) > 0}">
								<c:forEach var="file" items="${files}">
									<img src="${pageContext.request.contextPath}/upload/${file.getFileName()}">
								</c:forEach>
							</c:when>
						</c:choose>
					</div>
					<div id="content-wrapper">
						<pre>${board.getBoardContent()}</pre>
					</div>
					<div id="button-wrapper">
						<input type="button" class="btns" id="buttonBack"
							onclick="history.back();" value="목록"> <input
							type="button" class="btns" id="buttonUpdate"
							onclick="location.href = '${pageContext.request.contextPath}/board/BoardUpdate.bo?boardNumber=${board.getBoardNumber()}'"
							value="수정"> <input type="button" class="btns"
							id="buttonDelete"
							onclick="location.href = '${pageContext.request.contextPath}/board/BoardDeleteOk.bo?boardNumber=${board.getBoardNumber()}'"
							value="삭제">
					</div>
				</div>
			</div>
		</div>
	</article>

	<jsp:include page="../fix/footer.jsp" />
</body>
</html>