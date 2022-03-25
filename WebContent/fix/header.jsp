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
	href="${pageContext.request.contextPath}/assets/css/header.css" />
<title>header</title>
</head>
<body>
	<header id="header">
		<div id="container">
			<a href="${pageContext.request.contextPath}/house/MainBannerOk.ho">
				<img src="${pageContext.request.contextPath}/images/textLogo2.png">
			</a> <img class="mouseover" id="slogun"
				src="${pageContext.request.contextPath}/images/slogun.png"> <img
				class="mouseover" id="slogun2"
				src="${pageContext.request.contextPath}/images/slogun2.png">
			<ul class="menu-btn-list">
				<c:choose>
					<c:when test="${memberType eq 'h'}">
						<li class="btn p_menu"><a
							href="${pageContext.request.contextPath}/house/HouseRegister.ho">호스팅
								하기</a>
					</c:when>
				</c:choose>
				<li class="btn p_menu"><a
					href="${pageContext.request.contextPath}/house/FindRoom.ho">방
						찾기</a>
					<div>
						<ul class="mouseover">
							<li></li>
							<li></li>
						</ul>
					</div></li>
				</li>
				<li class="btn p_menu"><a
					href="${pageContext.request.contextPath}/board/info.bo">가치살자 소개</a></li>
				<li class="btn p_menu"><a
					href="${pageContext.request.contextPath}/board/BoardListOk.bo">공지사항</a></li>
				<c:choose>
					<c:when test="${memberType eq 'h'}">
						<li class="btn p_menu"><a
							href="${pageContext.request.contextPath}/board/InquiryOk.bo">문의하기</a>
					</c:when>
					<c:when test="${memberType eq 'n'}">
						<li class="btn p_menu"><a
							href="${pageContext.request.contextPath}/board/InquiryOk.bo">문의하기</a>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${memberId eq null}">
						<li class="btn p_menu"><a
							href="${pageContext.request.contextPath}/member/Login.me">로그인</a>
							<div>
								<ul class="mouseover">
									<li><a
										href="${pageContext.request.contextPath}/member/Join.me">회원가입</a></li>
								</ul>
							</div></li>
					</c:when>
					<c:otherwise>
						<li class="btn p_menu" id="memberId">${memberName}님
							<div>
								<ul class="mouseover">
									<li><a
										href="${pageContext.request.contextPath}/member/MemberLogoutOk.me">로그아웃</a></li>
									<c:choose>
										<c:when test="${memberType eq 'n'}">
											<li><a
												href="${pageContext.request.contextPath}/member/MemberMypageOk.me">마이페이지</a></li>
										</c:when>
										<c:when test="${memberType eq 'a'}">
											<li><a
												href="${pageContext.request.contextPath}/house/AdminOk.ho">관리자페이지</a></li>
										</c:when>
										<c:when test="${memberType eq 'h'}">
											<li><a
												href="${pageContext.request.contextPath}/member/HostMyPageLookOk.me">호스트페이지</a></li>
										</c:when>
									</c:choose>
								</ul>
							</div>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
		<div id="container-mobile">
			<a href="${pageContext.request.contextPath}/house/MainBannerOk.ho">
				<img src="${pageContext.request.contextPath}/images/textLogo2.png">
			</a>
			<div id="nav-wrap">
				<input type="checkbox" id="menuicon"> <label id="icon-label"
					for="menuicon"> <span></span> <span></span> <span></span>
				</label>
			</div>
		</div>
	</header>






	<!-- 미디어쿼리 -->
	<nav id="nav-mobile">
		<div id="container">
			<div id="nav-menu">
				<div id="button-wrap">
					<c:choose>
						<c:when test="${memberId eq null}">
							<input type="button" name="login" value="로그인"
								onclick="location.href='${pageContext.request.contextPath}/member/Login.me'">
							<input type="button" name="join" value="회원가입"
								onclick="location.href='${pageContext.request.contextPath}/member/Join.me'">
						</c:when>
						<c:when test="${memberType eq 'n'}">
							<input type="button" name="login" value="마이페이지"
								onclick="location.href='${pageContext.request.contextPath}/member/MemberMypageOk.me'">
							<input type="button" name="join" value="로그아웃"
								onclick="location.href='${pageContext.request.contextPath}/member/MemberLogoutOk.me'">
						</c:when>
						<c:when test="${memberType eq 'h'}">
							<input type="button" name="login" value="호스트페이지"
								onclick="location.href='${pageContext.request.contextPath}/member/HostMyPageLookOk.me'">
							<input type="button" name="join" value="로그아웃"
								onclick="location.href='${pageContext.request.contextPath}/member/MemberLogoutOk.me'">
						</c:when>
						<c:when test="${memberType eq 'a'}">
							<input type="button" name="login" value="관리자페이지"
								onclick="location.href='${pageContext.request.contextPath}/house/AdminOk.ho'">
							<input type="button" name="join" value="로그아웃"
								onclick="location.href='${pageContext.request.contextPath}/member/MemberLogoutOk.me'">
						</c:when>
					</c:choose>
				</div>
				<div id="menu-wrap">
					<div class="menu">
						<a href="${pageContext.request.contextPath}/house/FindRoom.ho">방
							찾기</a>
					</div>

					<c:if test="${memberType eq 'h'}">
						<div class="menu">
							<a
								href="${pageContext.request.contextPath}/house/HouseRegister.ho">호스팅
								하기</a>
						</div>
					</c:if>
					<div class="menu">
						<a href="${pageContext.request.contextPath}/board/info.bo">가치살자
							소개</a>
					</div>
					<div class="menu">
						<a href="${pageContext.request.contextPath}/board/BoardListOk.bo">공지사항</a>
					</div>
					<c:choose>
						<c:when test="${memberType eq 'h'}">
							<div class="menu">
								<a href="${pageContext.request.contextPath}/board/InquiryOk.bo">문의하기</a>
							</div>
						</c:when>
						<c:when test="${memberType eq 'n'}">
							<div class="menu">
								<a href="${pageContext.request.contextPath}/board/InquiryOk.bo">문의하기</a>
							</div>
						</c:when>

					</c:choose>
				</div>
			</div>
		</div>
	</nav>
</body>
<script src="${pageContext.request.contextPath}/assets/js/header.js"></script>
</html>