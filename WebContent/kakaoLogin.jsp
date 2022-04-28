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
<title>가치살자 - 카카오로그인</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/join.css" />
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
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
    <section id="main">



		<div id="mArticle">
			<div>
				<div class="wrap_form">
					<h1 id="kakaoServiceLogo">
						<span class="ir_wa"><img src="images/kakaoFont.png" style="width: 90px;"></span>
					</h1>
					<div class="login_kakaomail">
						<form id="login-form" action="#">
							<div id="loginEmailField">
								<input placeholder="카카오메일 아이디, 이메일, 전화번호" data-type="text"
									class="tf_g tf_email" name="email"
									validator="email_or_phone_or_kakaoid" type="text"
									id="id_email_2">
								<p>카카오메일이 있다면 메일 아이디만 입력해 보세요.</p>
							</div>
					</div>
					<div class="item_tf item_inp" >
						<input placeholder="비밀번호" data-type="password" class="tf_g "
							name="password" type="password" id="id_password_3">

					</div>
					<div class="set_login">
						<div class="item_inp item_check ">
							<input type="checkbox" id="staySignedIn" name="stay_signed_in"
								value="true" class="inp_g inp_check"> <label
								class="lab_g lab_check" for="staySignedIn"> <span
								class="ico_account ico_check"></span> <span tabindex="-1"
								style="outline: none" class="txt_check tooltip_link"
								data-target=".set_login .item_check">로그인 상태 유지</span></label>
						</div>
					</div>



					<div class="wrap_btn">
						<button class="btn_g btn_confirm submit" type="button"
							aria-disabled="false">로그인</button>
						<span class="line_or"><span class="txt_or">또는</span></span>
						<button id="move_to_qr" class="btn_g" type="button"
							formaction="/qr_login?continue=https%3A%2F%2Fkauth.kakao.com%2Foauth%2Fauthorize%3Fis_popup%3Dfalse%26ka%3Dsdk%252F1.41.0%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttps%25253A%25252F%25252Fwww.tistory.com%26auth_tran_id%3Drtr98mxv6trb8aef3eeb03fa312b81795386484f051kyzshl2w%26response_type%3Dcode%26state%3DaHR0cHM6Ly93d3cudGlzdG9yeS5jb20v%26redirect_uri%3Dhttps%253A%252F%252Fwww.tistory.com%252Fauth%252Fkakao%252Fredirect%26prompt%3Dlogin%26client_id%3Db8aef3eeb03fa312b81795386484f051"
							value="test">
							<span class="ico_account ico_qr"><img src="images/QR.png"></span>
							QR코드 로그인
						</button>
					</div>
					</fieldset>
					</form>
					<div class="info_user">
						<a
							href="join.html"
							class="link_join">회원가입</a>
						<ul class="list_user">
							<li><a
								href="findId.html"
								class="link_user">아이디 찾기</a></li>
							<li><a
								href="findPw.html"
								class="link_user">비밀번호 찾기</a></li>
						</ul>
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