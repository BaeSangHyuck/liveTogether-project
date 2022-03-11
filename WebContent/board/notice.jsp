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
<link rel="stylesheet" href="../assets/css/footer.css" />
<link rel="stylesheet" href="../assets/css/notice.css" />
<title>가치살자 공지사항</title>
</head>
<body>
	<c:set var="boardList" value="${boardList}" />
	<c:set var="page" value="${page}" />
	<c:set var="startPage" value="${startPage}" />
	<c:set var="endPage" value="${endPage}" />
	<c:set var="realEndPage" value="${realEndPage}" />
	<c:set var="total" value="${total}" />

	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />
	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />

	<article class="notice-first-wrap">
		<div class="second-wrap">
			<div class="third-wrap">
				<div class="gradation-div-wrap">
					<p class="first-ptag">가치살자 공지사항
					<div class="gradation-div"></div>
					<br>
				</div>
				<form action="" id="search">
					<input type="search" maxlength="150" class="first-input"
						placeholder="검색어를 입력하세요">
					<button type="button" class="img1"></button>
				</form>
				<table class="table" id="first-table">
					<tbody class="table-tbody">
						<tr class="table-tr">
							<th class="first-th"></th>
							<th class="second-th"></th>
							<th class="third-th"></th>
						</tr>
						<tr class="first-table-tr">
							<th class="fisrt-first-th" id="first-th">*</th>
							<th class="first-second-th" id="second-th">비대면 투어 전환</th>
							<th class="first-third-th" id="third-th">2022/02/04</th>
						</tr>
						<tr class="second-table-tr">
							<th class="second-first-th" id="first-th">*</th>
							<th class="second-second-th" id="second-th">[계약] 중도해지 신청 가이드</th>
							<th class="second-third-th" id="third-th">2021/09/02</th>
						</tr>
						<tr class="third-table-tr">
							<th class="third-first-th" id="first-th">*</th>
							<th class="third-second-th" id="second-th">[계약] 재계약 신청 안내</th>
							<th class="third-third-th" id="third-th">2021/07/15</th>
						</tr>
						<c:choose>
							<c:when test="${boardList != null and fn:length(boardList) >0}">
								<c:forEach var="board" items="${boardList}">
									<tr>
										<th class="second-first-th" id="first-th">${board.getBoardNumber()}</th>
										<th class="second-second-th" id="second-th"><a href="#">${board.getBoardTitle()}</a>
										</th>
										<th class="third-third-th" id="third-th">${board.getBoardDate()}</th>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
				</table>

				<!-- 페이징 처리 -->
				<table id="paging">

						<tr>
							<td>
							<c:if test="${startPage > 1}">
								<a href="${pageContext.request.contextPath}/board/BoardListOk.bo?page=${startPage -1}">&lt;</a>
							</c:if>
							
							<c:forEach var="i" begin="${startPage}" end="${endPage}">
									<c:choose>
										<c:when test="${i eq page}">
											<c:out value="${i}" />&nbsp;&nbsp;
								</c:when>
										<c:otherwise>
											<a 	href="${pageContext.request.contextPath}/board/BoardListOk.bo?page=${i}"><c:out value="${i}" /></a>&nbsp;&nbsp;
								</c:otherwise>
									</c:choose>
								</c:forEach>
								
								<c:if test="${endPage > realEndPage}">
									<a href="${pageContext.request.contextPath}/board/BoardListOk.bo?page=${endPage + 1}">&gt;</a>
								</c:if>
								</td>
						</tr>
<!-- 
					<tr>
						<td>1&nbsp;&nbsp;2&nbsp;&nbsp;3&nbsp;&nbsp;4&nbsp;&nbsp;5&nbsp;&nbsp;6&nbsp;&nbsp;7&nbsp;&nbsp;8&nbsp;&nbsp;9&nbsp;&nbsp;10</td>
					</tr> -->
				</table>

			</div>
		</div>
	</article>

	<jsp:include page="../fix/footer.jsp" />
</body>
</html>