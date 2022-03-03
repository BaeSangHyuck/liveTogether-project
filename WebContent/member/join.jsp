<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
        Tactile by Pixelarity
        pixelarity.com | hello@pixelarity.com
        License: pixelarity.com/license
    -->
<html>
<head>
<title>가치살자 - 회원가입</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/join.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@100&display=swap"
	rel="stylesheet">
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
	<section id="main">
		<div id="box">
			<ul id="choices">
				<li class="choice one" style="background-color: #ddd;"><a
					id="loginTab" href="login.jsp">로그인</a></li>
				<li class="choice two"><a id="joinTab" href="join.jsp">회원가입</a></li>
			</ul>
			<div id="mArticle">
				<div class="wrap_form">
					<div id="trans">
						<form id="login-form" name="joinForm" action="#">
							<div class="login_kakaomail">
								<div id="loginEmailField">
									<input placeholder="이메일(아이디)" class="tf_g tf_email"
										name="email" id="id_email_2" autocomplete="off">
									<p id="result">가치살다에서 사용하실 이메일을 입력해주세요.</p>
								</div>
							</div>
							<div class="item_tf item_inp">
								<input placeholder="비밀번호" data-type="password" class="tf_g "
									name="password" type="password" id="id_password_3"> <input
									placeholder="비밀번호 확인" data-type="password" class="tf_g "
									name="password" type="password" id="id_password_3">
							</div>
							<div id="nickname_wrap">
								<input placeholder="닉네임" class="nickname" name="nickname"
									type="text" id="nickname" autocomplete="off">
							</div>
							<div id="nickname_wrap">
								<input placeholder="전화번호" class="nickname" name="phoneNum"
									type="text" id="phoneNum" autocomplete="off">
							</div>

							<div id="term-wrap">
							<div style="margin-top: 6%;">
								<input type="checkbox" id="term" name="term"> <label
									for="term" style="font-size: 1.1em; font-weight: bold;">전체
									동의합니다.</label>
							</div>
							<div class="col-12" style="display: flex; justify-content: space-between; height:25px;">
								<div>
									<input type="checkbox" id="term1" name="term1" class="terms">
									<label for="term1">서비스 이용약관 </label>
								</div>
								<div>
									<a class="showTerm" href="term1-content">펼쳐보기</a>
								</div>
							</div>
							<textarea class="term-content" name="term1-content" id="term1-content" rows="3"
								style="display: none;">안녕하세요</textarea>
							<br>
							<div class="col-12"	style="display: flex; justify-content: space-between; height:25px;">
								<div>
									<input type="checkbox" id="term2" name="term2" class="terms">
									<label for="term2">개인정보 수집 및 이용</label>
								</div>
								<div>
									<a class="showTerm" href="term2-content">펼쳐보기</a>
								</div>
							</div>
							<textarea class="term-content" name="term2-content"	id="term2-content" rows="3"	style="display: none;"></textarea>
							<br>
					</div>
							</div>

					<div class="wrap_btn">
						<button class="btn_g btn_confirm submit" type="button"
							aria-disabled="false" onclick="send();">가입 하기</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<jsp:include page="../fix/footer.jsp" />

	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script>
		// 아이디 중복검사
		function checkId(memberId) {
			if (!email) {
				$("#result").text("아이디를 입력해주세요.");
				$("#result").css("color", "red");
				return;
			}

			$.ajax({
						url : contextPath + "/member/MemberCheckIdOk.me?email="+ email,
						type : "get",
						dataType : "json",
						success : function(result) {
							if (result.status == "ok") {
								$("#result").text("사용한 가능한 아이디입니다.");
								$("#result").css("color", "blue");
								check = true;
							} else {
								$("#result").text("중복된 아이디입니다.");
								$("#result").css("color", "red");
								$("input#email").focus();
							}
						},
						error : function() {
							console.log("중복검사 오류");
						}
					});
		}

		// 회원가입 유효성 검사
		function send() {

			if (!check) {
				alert("아이디를 확인해주세요.");
				return;
			}

			if (!joinForm.memberPw.value) {
				alert("패스워드를 확인해주세요.");
				return;
			}

			if (!joinForm.memberName.value) {
				alert("이름을 확인해주세요.");
				return;
			}

			if (!joinForm.memberAge.value) {
				alert("나이를 확인해주세요.");
				return;
			}

			joinForm.submit();
		}

		// 이용 약관
		const $all = $("#term");
		const $inputs = $(".terms");

		$all.on('click', function() {
			if ($(this).is(":checked")) {
				$inputs.prop('checked', true);
			} else {
				$inputs.prop('checked', false);
			}
		});

		$inputs.on('click', function() {
			var check = true;
			if (!$(this).is(":checked")) {
				$all.prop('checked', false);
			}

			if ($inputs.filter(":checked").length == 2) {
				$all.prop('checked', true);
			}
		});

		// 약관 펼쳐보기
		const aTags = $("a.showTerm");
		const textAreas = $("textArea.term-content");
		var check = -1;
		aTags.on('click', function(e) {
			e.preventDefault();

			if ($(this).attr("href") == "term1-content") {
				$("#term1-content").slideToggle(function() {
					check *= -1;
					$(aTags[0]).text(check > 0 ? "닫기" : "펼쳐보기");
				});

			} else if ($(this).attr("href") == "term2-content") {
				$("#term2-content").slideToggle(function() {
					check *= -1;
					$(aTags[1]).text(check > 0 ? "닫기" : "펼쳐보기");
				});
			}
		});
	</script>
</body>
</html>