<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/header.css" />
<title>header</title>
</head>
<body>
	<header id="header">
		<div id="container">
			<a> <img src="images/header_textLogo.png">
			</a> <img class="mouseover" id="slogun" src="images/header_slogun.png">
			<ul class="menu-btn-list">
				<li class="btn p_menu"><a href="#">방 찾기</a></li>
				<li class="btn p_menu"><a href="#">호스팅 하기</a></li>
				<li class="btn p_menu"><a href="#">서비스 안내</a>
					<div>
					<ul class="mouseover">
						<li><a>가치살자 소개</a></li>
						<li><a>서비스 소개</a></li>
						<li><a>공지사항</a></li>
					</ul>
				</div>
				</li>
				<li class="btn p_menu"><a href="#">로그인</a> <a
					class="login_status" href="/notices">로그아웃</a>
					<div>
					<ul class="mouseover">
						<li class="login_status"><a>마이페이지</a></li>
						<li><a>회원가입</a></li>
					</ul></li>
				</div>
			</ul>
			<div id="subTitle"></div>
		</div>
	</header>
</body>
<script src="assets/js/header.js"></script>
</html>