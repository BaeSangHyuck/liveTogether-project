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
	href="${pageContext.request.contextPath}/assets/css/notice.css" />
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
				<form
					action="${pageContext.request.contextPath}/board/BoardSearchOk.bo"
					method="post" name="searchForm" id="search">
					<input type="search" maxlength="150" class="first-input"
						placeholder="검색어를 입력하세요" name="boardTitle" value="${search}">
					<button type="button" class="img1" onclick="searchForm.submit()"></button>
				</form>
				<table class="table" id="first-table">
					<tbody class="table-tbody">
						<tr class="table-tr">
							<th class="first-th"></th>
							<th class="second-th"></th>
							<th class="third-th"></th>
						</tr>
						<c:choose>
							<c:when test="${boardList != null and fn:length(boardList) >0}">
								<c:forEach var="board" items="${boardList}">
									<tr>
										<th class="second-first-th" id="first-th">${board.getBoardNumber()}</th>
										<th class="second-second-th" id="second-th"><a
											href="${pageContext.request.contextPath}/board/BoardDetailOk.bo?boardNumber=${board.getBoardNumber()}">${board.getBoardTitle()}</a>
										</th>
										<th class="third-third-th" id="third-th">${board.getBoardDate()}</th>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
				</table>
				
				<c:choose>
				<c:when test="${memberType eq 'a'}">
				<div id="writeWrap">
					<button type="button" id="writeBtn"
						onclick="location.href='${pageContext.request.contextPath}/board/BoardWrite.bo'">글
						작성</button>
				</div>
				</c:when>
				</c:choose>

				<!-- 페이징 처리 -->
				<table id="paging">

					<tr>
						<c:choose>
							<c:when test="${search != null}">
								<td><c:if test="${startPage > 1}">
										<a
											href="${pageContext.request.contextPath}/board/BoardSearchOk.bo?page=1&boardTitle=${search}">&lt;&lt;&nbsp;&nbsp;</a>
										<a
											href="${pageContext.request.contextPath}/board/BoardSearchOk.bo?page=${startPage -1}&boardTitle=${search}">&lt;&nbsp;&nbsp;</a>
									</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
										<c:choose>
											<c:when test="${i eq page}">
												<c:out value="${i}" />&nbsp;&nbsp;
								</c:when>
											<c:otherwise>
												<a
													href="${pageContext.request.contextPath}/board/BoardSearchOk.bo?page=${i}&boardTitle=${search}"><c:out
														value="${i}" /></a>&nbsp;&nbsp;
								</c:otherwise>
										</c:choose>
									</c:forEach> <c:if test="${endPage < realEndPage}">
										<a
											href="${pageContext.request.contextPath}/board/BoardSearchOk.bo?page=${endPage + 1}&boardTitle=${search}">&nbsp;&nbsp;&gt;</a>
										<a
											href="${pageContext.request.contextPath}/board/BoardSearchOk.bo?page=${realEndPage}&boardTitle=${search}">&nbsp;&nbsp;&gt;&gt;</a>
									</c:if></td>
							</c:when>
							<c:otherwise>
								<td><c:if test="${startPage > 1}">
										<a
											href="${pageContext.request.contextPath}/board/BoardListOk.bo?page=1">&lt;&lt;&nbsp;&nbsp;</a>
										<a
											href="${pageContext.request.contextPath}/board/BoardListOk.bo?page=${startPage -1}">&lt;&nbsp;&nbsp;</a>
									</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
										<c:choose>
											<c:when test="${i eq page}">
												<c:out value="${i}" />&nbsp;&nbsp;
								</c:when>
											<c:otherwise>
												<a
													href="${pageContext.request.contextPath}/board/BoardListOk.bo?page=${i}"><c:out
														value="${i}" /></a>&nbsp;&nbsp;
								</c:otherwise>
										</c:choose>
									</c:forEach> <c:if test="${endPage < realEndPage}">
										<a
											href="${pageContext.request.contextPath}/board/BoardListOk.bo?page=${endPage + 1}">&nbsp;&nbsp;&gt;</a>
										<a
											href="${pageContext.request.contextPath}/board/BoardListOk.bo?page=${realEndPage}">&nbsp;&nbsp;&gt;&gt;</a>
									</c:if></td>
							</c:otherwise>
						</c:choose>

					</tr>
				</table>
			</div>
		</div>
	</article>

	<jsp:include page="../fix/footer.jsp" />
</body>
</html>