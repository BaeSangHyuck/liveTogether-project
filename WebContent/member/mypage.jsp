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
<link rel="stylesheet" href="../assets/css/mypage.css" />
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

		<div class="navigation">
			<a href="mypage.jsp">
			<div class="menu-btn">내 정보 수정</div></a>
			<a href="mypagelook.jsp">
			<div class="menu-btn2">내 정보 조회</div></a>
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
									<label>이메일</label>
									<div class="static">tkdgur1996@naver.com</div>
								</div>

								<div class="column-wrapper name">
									<label>이름</label> <input type="text" id="user_name"
										name="user[name]" value>
								</div>

								<div class="column-wrapper phone">
									<label class="active">전화번호</label> <input type="text"
										id="user_phone" name="user[phone]" value="01040625261">
								</div>

								<div class="column-wrapper">
									<label>성별</label>
									<div class="gender-btn-wrapper">
										<input class="gender-input" type="radio" value="m"
											name="user[gender]" id="user_gender_m"> <label
											class="gender-btn" for="user_gender_m">남</label> <input
											class="gender-input" type="radio" value="f"
											name="user[gender]" id="user_gender_f"> <label
											class="gender-btn" for="user_gender_f"> 여 </label>
									</div>
								</div>





								<div class="column-wrapper current-password">
									<label>기존 비밀번호</label> <input type="password"
										id="user_current_password" name="user[current_password]">
								</div>

								<div class="column-wrapper password" style="margin-bottom: 2em;">
									<label>새로운 비밀번호(8자리 이상)</label> <input type="password"
										id="user_password" name="user[password]">
								</div>

								<div class="agreement-list">
									<div class="agreement">
										<input type="checkbox" id="user_allow_newsletter"
											name="user[allow_newsletter]" class="agreement-input" checked>
										<label class="agreement-content" for="user_allow_newsletter">
											<div class="content">
												<span class="my_check">(선택)</span> 새로운 지점 소식을 뉴스레터로 구독
											</div>
										</label>
									</div>

									<div class="agreement">
										<input type="checkbox" id="user_allow_serve_privacy"
											name="user[allow_serve_privacy]" class="agreement-input"
											checked> <label class="agreement-content"
											for="user_allow_serve_privacy">
											<div class="content">
												<span class="my_check">(선택)</span> <a class="privacy-btn"
													href="/serve_privacy" target="_blank">개인정보 제3자 제공</a> 에
												동의합니다.
											</div>
										</label>
									</div>
								</div>

								<ul class="notice-list">
									<li class="notice">* 정보 수정 시 기존 비밀번호를 입력하셔야 합니다.</li>
								</ul>
								<input type="submit" class="update-btn" name="commit"
									value="내 정보 수정 완료"> <input id="leave-button"
									type="button" class="update-btn" value="탈퇴하기">
								<!-- <script type="text/javascript">

$('#leave-button').click(function(e) {
  if(confirm('정말로 탈퇴 하시겠습니까?')) {
    $.ajax({
      url: '/users/leave',
      type: 'DELETE',
      success: function() {
        $.ajax({
          url: '/users/sign_out',
          type: 'DELETE',
          success: function() {
            location.href = '/';
          }
        });
      }
    });
  }
});

</script> -->




							</form>
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