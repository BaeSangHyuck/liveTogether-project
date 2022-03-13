<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/noticeWrite.css" />
<title>가치살자 공지사항 내용</title>
</head>
<body>
	<c:set var="board" value="${board}" />
	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />

	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />

	<article class="noticeDetail-first-wrap">
		<div class="second-wrap">
			<div class="third-wrap">
				<form
					action="${pageContext.request.contextPath}/board/BoardUpdateOk.bo"
					name="updateForm" method="post" enctype="multipart/form-data">
					<input type="hidden" name="boardNumber"
						value="${board.getBoardNumber()}">
					<div class="gradation-div-wrap">
						<p id="first-p">가치살자 공지사항</p>
						<div class="gradation-div"></div>
					</div>
					<input type="text" placeholder="제목 입력" name="boardTitle"
						value="${board.getBoardTitle()}">
					<div id="writer">
						<p>관리자</p>
					</div>

					<div class="files">
						<div class="file-wrap">
							<label for="board_file1" style="display: inline;"> <img
								id="board_file1Img"
								src="${pageContext.request.contextPath}/images/파일첨부.png"
								width="110px" height="110px" style="display: inline;">
							</label> <input id="board_file1" name="board_file1" type="file">
							<input type="button" onclick="cancelFile('board_file1')"
								value="첨부 삭제">
						</div>
						<div class="file-wrap">
							<label for="board_file2" style="display: inline;"> <img
								id="board_file2Img"
								src="${pageContext.request.contextPath}/images/파일첨부.png"
								width="110px" height="110px" style="display: inline;">
							</label> <input id="board_file2" name="board_file2" type="file">
							<input type="button" onclick="cancelFile('board_file2')"
								value="첨부 삭제">
						</div>
						<div class="file-wrap">
							<label for="board_file3" style="display: inline;"> <img
								id="board_file3Img"
								src="${pageContext.request.contextPath}/images/파일첨부.png"
								width="110px" height="110px" style="display: inline;">
							</label> <input id="board_file3" name="board_file3" type="file">
							<input type="button" onclick="cancelFile('board_file3')"
								value="첨부 삭제">
						</div>
					</div>

					<div id="textAreaWrap">
						<textarea id="textArea" name="boardContent" placeholder="내용 작성"
							style="resize: none;" rows="15">${board.getBoardContent()}</textarea>
					</div>
					<div id="button-wrapper">
						<input type="button" id="buttonWrite"
							onclick="updateForm.submit();" value="글 쓰기"> <input
							type="button" id="buttonBack" onclick="history.back();"
							value="취소">
					</div>
				</form>
			</div>
		</div>
	</article>

	<jsp:include page="../fix/footer.jsp" />
</body>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script>
	var contextPath = "${pageContext.request.contextPath}";
</script>
<script
	src="${pageContext.request.contextPath}/assets/js/noticeWrite.js"></script>
</html>