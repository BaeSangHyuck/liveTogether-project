<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>

<html>
<head>
<title>가치살자</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/mypagelook.css" />
</head>
	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />
	
	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />
	
<body class="is-preload">
	<article id="main">

		<div class="inner">
			<div class="inner_ab">
			<span class="my_span01">(지구인)</span>님의 마이페이지 입니다. 
			</div>
		</div>

		<div id="box">	
		<div id="navigation_wraper">
			<div class="navigation">
				<a href="mypage.jsp">
					<div class="menu-btn">내 정보 수정</div>
				</a> <a href="mypagelook.jsp">
					<div class="menu-btn2">내 정보 조회</div>
				</a>
			</div>
		</div>


		<!-- 	<div class="box"> -->
		<div class="wrapper">
			<div class="container">
				<div id="change_info">
					<div class="content-wrapper">
						<div class="content">
							<form class="info-form" action="" accept-charset="UTF-8"
								method="post">

								<div class="column-wrapper email">
									<label class="col01">이메일</label>
									<div class="static">tkdgur1996@naver.com</div>
								</div>

								<div class="column-wrapper name">
									<label class="col02">이름</label>
									<div class="user_name">배상혁</div>
								</div>

								<div class="column-wrapper phone">
									<label class="active">전화번호</label>
									<div class="user_phone">01040625261</div>
								</div>

								<div class="column-wrapper">
									<label class="gender-input">성별</label>
									<div class="gender-btn-wrapper">
										<input class="gender-input" type="radio" value="m"	name="user[gender]" id="user_gender_m" checked> 
										<label	class="gender-btn" for="user_gender_m">남</label> 
										<input class="gender-input" type="radio" value="f" name="user[gender]" id="user_gender_f" onclick="return false"> 
										<label class="gender-btn" for="user_gender_f">여</label>
									</div>
								</div>
								
								<div class="column-wrapper profile">
									<label class="col05">한 줄 소개</label> 
									<div class="user_pro">
									나는 바보입니다.
									</div>
								</div>

							<!-- 	<input id="leave-button" type="button" class="update-btn"
									value="확인"> -->







							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- </div> -->
	</article>

	<!-- 	</div> -->


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