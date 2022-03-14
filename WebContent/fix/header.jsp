<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />
<title>header</title>
</head>
<body>
	<header id="header">
		<div id="container">
			<a href="../main/main.jsp"> <img src="${pageContext.request.contextPath}/images/textLogo2.png"></a>
			<img class="mouseover" id="slogun" src="${pageContext.request.contextPath}/images/slogun.png">
			<img class="mouseover" id="slogun2" src="${pageContext.request.contextPath}/images/slogun2.png">
			<ul class="menu-btn-list">
				<li class="btn p_menu"><a href="${pageContext.request.contextPath}/house/findRoom.jsp">방 찾기</a></li>
				<li class="btn p_menu"><a href="${pageContext.request.contextPath}/house/houseRegister.jsp">호스팅
						하기</a></li>
				<li class="btn p_menu"><a href="#">서비스 안내</a>
					<div>
						<ul class="mouseover">
							<li><a href="${pageContext.request.contextPath}/board/info.jsp">가치살자 소개</a></li>
							<li><a
								href="${pageContext.request.contextPath}/board/BoardListOk.bo">공지사항</a></li>
						</ul>
					</div></li>
				<c:choose>
					<c:when test="${memberId eq null}">
						<li class="btn p_menu"><a href="${pageContext.request.contextPath}/member/login.jsp">로그인</a>
							<div>
								<ul class="mouseover">
									<li><a href="${pageContext.request.contextPath}/member/join.jsp">회원가입</a></li>
								</ul>
							</div>
						</li>
					</c:when>
				<c:otherwise>
						<li class="btn p_menu" id="memberId">${memberName}님
							<div>
								<ul class="mouseover">
									<li><a href="${pageContext.request.contextPath}/member/MemberLogoutOk.me">로그아웃</a></li>
									<li><a href="${pageContext.request.contextPath}/member/MemberMypageOk.me">마이페이지</a></li>
								</ul>
							</div>
						</li>
				</c:otherwise>
				</c:choose>
			</ul>
		</div>
		<div id="container-mobile">
			<a href="${pageContext.request.contextPath}/main/main.jsp"> <img src="${pageContext.request.contextPath}/images/textLogo2.png">
			</a>
			<div id="nav-wrap">
				<input type="checkbox" id="menuicon"> <label id="icon-label"
					for="menuicon"> <span></span> <span></span> <span></span>
				</label>
			</div>
		</div>
	</header>

	<nav id="nav-mobile">
		<div id="container">
			<div id="nav-menu">
				<div id="button-wrap">
					<input type="button" name="login" value="로그인"
						onclick="location.href='${pageContext.request.contextPath}/member/login.jsp'"> <input
						type="button" name="join" value="회원가입"
						onclick="location.href='${pageContext.request.contextPath}/member/join.jsp'">
				</div>
				<div id="menu-wrap">
					<div class="menu">
						<a href="${pageContext.request.contextPath}/house/findRoom.jsp">방 찾기</a>
					</div>
					<div class="menu">
						<a href="${pageContext.request.contextPath}/house/houseregister.jsp">호스팅 하기</a>
					</div>
					<div class="menu">
						<a href="${pageContext.request.contextPath}/board/info.jsp">가치살자 소개</a>
					</div>
					<div class="menu">
						<a href="${pageContext.request.contextPath}/board/notice.jsp">공지사항</a>
					</div>
				</div>
			</div>
		</div>
	</nav>
</body>
<script src="${pageContext.request.contextPath}/assets/js/header.js"></script>
</html>