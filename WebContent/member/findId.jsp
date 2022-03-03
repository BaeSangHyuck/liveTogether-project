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
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/login.css" />
</head>

<style>
label.screen_out{
	font-size:13px;
}

button.btn_tistory{
	background-color: #8AAAE5;
	color: #fff;
}

button.btn_tistory:hover{

	border: none !important ;
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
	<section id="content">
		<div id="box">
			<ul id="choices">
				<li class="choice one"><a id="loginTab" href="findId.jsp">아이디찾기</a></li>
				<li class="choice two" style="background-color: #ddd;"><a
					id="joinTab" href="findPw.jsp">비밀번호찾기</a></li>
			</ul>
			<div id="mArticle">
				<div class="content_account">
					<form id="findLoginId" method="post" action="/member/find/loginId">					
						<fieldset class="fld_tistory">
							<div class="cont_data">

								<div class="inp_text">
									<label for="findUrlOrNickname" class="screen_out">가입시
										등록한 이름과 이메일을 입력해주세요.</label> <input type="text" id="findUrlOrNickname"
										name="url" placeholder="이름" value="" tabindex="3"> <input
										type="email" id="findUrlOrNickname" name="url"
										placeholder="이메일" value="" tabindex="3">
										
								</div>
							</div>
							<div class="wrap_btn">
								<button type="submit" class="btn_tistory btn_tistory_type5"									">확인</button>
							</div>
						</fieldset>
					</form>	
					<div id="find_join">
						<div class="find_another">
							<a href="login.jsp" class="link_find">로그인</a>
							<!-- <a href="findPw"	class="link_find">회원가입</a> -->
						</div>
						<div class="find_another join">
							<a href="join.jsp" class="link_find">회원가입</a>
						</div> 
					</div>				
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->

	<jsp:include page="../fix/footer.jsp" />


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>