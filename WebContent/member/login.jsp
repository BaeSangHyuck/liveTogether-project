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
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/login.css" />
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
            <div id="houseIcon">
                <span></span>
            </div>
			<ul id="choices">
				<li class="choice one"><a id="loginTab" href="login.jsp">로그인</a></li>
				<li class="choice two" style="background-color: rgba(221, 221, 221, 0.521);"><a
					id="joinTab" href="join.jsp">회원가입</a></li>
			</ul>
			<div id="mArticle">
				<form id="findLoginId" method="post" action="/member/find/loginId">
					<div class="content_account">
						<div class="inp_text">
							<input type="text" id="findUrlOrNickname" name="url"
								placeholder="ID" value="" tabindex="3"> <input
								type="password" id="findUrlOrNickname" name="url"
								placeholder="Password" value="" tabindex="3">
						</div>
					</div>

					<div id="kakaochoice">
						<ul class="actions fit kakaochoice">
							<li><a href="#" class="button alt fit tstory"><span>로그인</span></a></li>
							<li onclick="kakaoLogin();"><a id="kakao_btn" href="#"
								class="button alt fit kakao"><img src="../images/카카오톡.jpg"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;카카오계정
										로그인</span></a></li>
                        <li><a href="findId.jsp" class="button alt fit tstory find"><span>아이디 찾기</span></a></li>
                        <li><a href="findPw.jsp" class="button alt fit tstory find"><span>비밀번호 찾기</span></a></li>
						</ul>
					</div>
				</form>
			</div>
            <div id="login_banner">
                <img src="../images/login_banner.png">
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
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
		//fd5a829552ba5aafe83249b169e62ba9

		Kakao.init("fd5a829552ba5aafe83249b169e62ba9");
		Kakao.isInitialized();
		
		function kakaoLogin() {
		    Kakao.Auth.login({
		    	/* scope:'profile, account_email, gender' , */
		    	success: function (response) {
		        Kakao.API.request({
		          url: '/v2/user/me',
		          success: function (response) {
		        	  console.log(response)
		          },
		          fail: function (error) {
		            console.log(error)
		          },
		        })
		      },
		      fail: function (error) {
		        console.log(error)
		      },
		    })
		  }
		</script>
</body>
</html>