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
<title>가치살자 - 아이디찾기</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css" />
</head>

<style>
label.screen_out {
	font-size: 13px;
}

button.btn_tistory {
	background-color: #1187CF;
	color: #fff;
}

button.btn_tistory:hover {
	border: none !important;
	background-color: #e7e7e7;
}
</style>

<body class="is-preload">

	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />

	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />


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
	<section id="login-wrap">
		<div id="box">
			<div id="houseIcon">
				<span></span>
			</div>
			<ul id="choices">
				<li class="choice one"><a id="loginTab" href="findId.jsp">아이디찾기</a></li>
				<li class="choice two"
					style="background-color: rgba(221, 221, 221, 0.521);"><a
					id="joinTab" href="findPw.jsp">비밀번호찾기</a></li>
			</ul>
			<div id="mArticle">
				<div class="content_account">
					<form id="findLoginId" method="post" action="${pageContext.request.contextPath}/member/memberFindIdOk.me">
						<fieldset class="fld_tistory">
							<div class="cont_data">

								<div class="inp_text">
									<label for="findUrlOrNickname" class="screen_out">가입시
										등록한 이름과 전화번호를 입력해주세요.</label> <input type="text" id="findUrlOrNickname"
										name="memberName" placeholder="이름" value="" tabindex="3"> <input
										type="text" id="findUrlOrNickname" name="memberPhone"
										placeholder="전화번호" value="" tabindex="3">

								</div>
							</div>
							<div id="kakaochoice">
								<ul class="actions fit kakaochoice">
									<li><a href="#" class="button alt fit tstory"><span>확인</span></a></li>
									<li><a href="login.jsp" class="button alt fit tstory find"><span>로그인</span></a></li>
									<li><a href="join.jsp" class="button alt fit tstory find"><span>회원가입</span></a></li>
								</ul>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
			<div id="login_banner">
				<img src="../images/login_banner.png">
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

</body>
</html>