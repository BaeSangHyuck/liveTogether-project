<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
		Tactile by Pixelarity
		pixelarity.com | hello@pixelarity.com
		License: pixelarity.com/license
	-->
<html>
<head>
<title>가치살자 - 로그인</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css" />
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">
</head>
<body class="is-preload">

	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />

	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />


	
<!-- Menu -->
<!-- 	<nav id="menu">
		<ul class="links">
			<li><a href="index.html">Home</a></li>
			<li><a href="generic.html">Generic</a></li>
			<li><a href="elements.html">Elements</a></li>
		</ul>
		<ul class="actions stacked">
			<li><a href="#" class="button fit primary">Sign Up</a></li>
			<li><a href="#" class="button fit">Log In</a></li>
		</ul>
	</nav>  -->

 
	<!-- Main -->
	<section id="login-wrap">
		<div id="box">
			<div id="houseIcon">
				<span></span>
			</div>
			<ul id="choices">
				<li class="choice one"><a id="loginTab" href="login.jsp">로그인</a></li>
				<li class="choice two"
					style="background-color: rgba(221, 221, 221, 0.521);"><a
					id="joinTab" href="join.jsp">회원가입</a></li>
			</ul>
			<div id="mArticle">
				<form id="findLoginId" method="post" action="${pageContext.request.contextPath}/member/MemberLoginOk.me" name="loginForm">
					<div class="content_account">
						<div class="inp_text">
							<input type="text" id="findUrlOrNickname" name="memberId"
								placeholder="이메일(아이디)"<%--  value="${memberId}" --%>> 
								<input type="password"
								id="findUrlOrNickname" name="memberPw" placeholder="비밀번호" <%-- value="${memberPw} --%>">
						</div>
						<div id="loginStatus">
							<input type="checkbox" name="saveId" value="true" id="saveId">
							<label for="saveId">아이디 저장</label> <input type="checkbox"
								name="autoLogin" value="true" id="autoLogin"> <label
								for="autoLogin" style="margin-left: 12px;">자동 로그인</label>
						</div>

						<div id="kakaochoice">
							<ul class="actions fit kakaochoice">
								<li><a href="#" class="button alt fit tstory" onclick="loginForm.submit()"><span>로그인</span></a></li>
								<li onclick="kakaoLogin();"><a id="kakao_btn" href="#"
									class="button alt fit kakao"><img src="../images/카카오톡.jpg"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;카카오계정
											로그인</span></a></li>
								<li><a href="findId.jsp" class="button alt fit tstory find"><span>아이디
											찾기</span></a></li>
								<li><a href="findPw.jsp" class="button alt fit tstory find"><span>비밀번호
											찾기</span></a></li>
							</ul>
						</div>
					</div>
				</form>
			</div>
			<div id="login_banner">
				<img src="${pageContext.request.contextPath}/images/login_banner.png">
			</div>
		</div>
	</section>

	<!-- Footer -->

	<jsp:include page="../fix/footer.jsp" />


	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/login.js"></script>
</body>
</html>