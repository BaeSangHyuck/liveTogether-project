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
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/login.css" />
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">
</head>
<body class="is-preload">

	<!-- Header -->

		<jsp:include page="header.jsp"/>


	<!-- Menu -->
	<nav id="menu">
		<ul class="links">
			<li><a href="index.html">Home</a></li>
			<li><a href="generic.html">Generic</a></li>
			<li><a href="elements.html">Elements</a></li>
		</ul>
		<ul class="actions stacked">
			<li><a href="#" class="button fit primary">Sign Up</a></li>
			<li><a href="#" class="button fit">Log In</a></li>
		</ul>
	</nav>

	<!-- Main -->
	<section id="content">
        <div id="total">
		<div id="mArticle">
			<form id="findLoginId" method="post" action="/member/find/loginId">
				<div class="content_account">
					<div class="inp_text">
						<a id='logo_img' href="#"><img src="images/logo_login.png"></a>
						<input type="text" id="findUrlOrNickname" name="url"
							placeholder="ID" value="" tabindex="3"> 
                        <input
							type="password" id="findUrlOrNickname" name="url"
							placeholder="Password" value="" tabindex="3">
					</div>
				</div>

				<div id="kakaochoice">
					<ul class="actions fit kakaochoice">
						<li><a href="#" class="button alt fit tstory"><span>로그인</span></a></li>
						<li><a href="#" class="button alt fit kakao"><img
								src="images/카카오톡.jpg"><span>&nbsp;&nbsp;&nbsp;&nbsp;카카오계정
									로그인</span></a></li>
					</ul>
				</div>
			</form>
			<div id="find_join">
				<div class="find_another">
					<a href="#" class="link_find">아이디 찾기</a> <a href="#"
						class="link_find">비밀번호 찾기</a>
				</div>
				<div class="find_another join">
					<a href="#" class="link_find">회원가입</a>
				</div>
			</div>
		</div>
    </div>

	</section>

	<!-- Footer -->

		<jsp:include page="footer.jsp"/>


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>