<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>가치살자</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<style>
/*  img{
object-fit:cover;
} 
 */

#change_info .content-wrapper .content {
	display: table-cell;
	padding: 3rem;
	text-align: left;
	vertical-align: middle;
}
/* div {display: block;} */
#change_info .content-wrapper .content .info-form .gender-btn-wrapper .gender-btn
	{
	float: left;
	width: 50%;
	height: 3rem;
	background-color: #EEE;
	box-shadow: inset 0 0 0 1px #ddd;
	cursor: pointer;
}

input[type="checkbox"]:checked + label:before, input[type="radio"]:checked + label:before {
    background-color: #8AAAE5;
    border-color: #8AAAE5;
    color: #ffffff;
}

#change_info .content-wrapper .content .info-form .gender-btn-wrapper {
	text-align: center;
	margin-bottom: 1rem;
	overflow: hidden;
}

#change_info .content-wrapper .content .info-form .column-wrapper label
	{
	display: block;
	color: #8AAAE5;
	font-size: 1.1rem;
	margin-top: 1.5rem;
}

#change_info .content-wrapper .content .info-form .gender-btn-wrapper {
	text-align: center;
	margin-bottom: 1rem;
	overflow: hidden;
}

#change_info .content-wrapper .content .info-form .agreement-list .agreement .agreement-content .content
	{
	color: #808080;
	font-size: 1.1rem;
	overflow: hidden;
	padding: 0rem;
}

#change_info .content-wrapper .content .info-form .agreement-list .agreement .privacy-btn
	{
	color: #8AAAE5;
	font-weight: 700;
}

#change_info .content-wrapper .content .info-form .update-btn {
	display: block;
	width: 100%;
	height: 3rem;
	line-height: 3rem;
	padding: 0 2rem;
	background-color: #8AAAE5;
	border: 0;
	border-radius: 0.5rem;
	color: #FFF;
	font-size: 1.1rem;
	box-sizing: border-box;
	cursor: pointer;
	
}

#change_info .content-wrapper .content .info-form .gender-btn-wrapper .gender-input:checked+.gender-btn .btn-content .btn-icon .check
	{
	visibility: visible;
}


 .navigation {
	color: #8AAAE5;
	background-color: #fff;
	font-weight: 600;
	padding: 1em 0 0 0;
}
input[type="radio"] + label:before {
    border-radius: 100%;
    margin-left: 5em;
    margin-top: 0.5em;
}

input[type="checkbox"]:checked + label:before, input[type="radio"]:checked + label:before {
    background-color: #ffffff;
    border-color: #ffffff;
    color: #8AAAE5;
    border: 0.5px solid;
}
 
input[type="text"]{
border:none;
border-bottom: 1px solid;
 background-color: #ffffff;
}
input[type="password"]{
border:none;
border-bottom: 1px solid;
 background-color: #ffffff;
}
 .inner{
background-image:url('images/mypage01.jpg');
background-color:#fff;
 background-repeat : no-repeat;
 background-size : cover;
 margin-left:-10em;
} 
a{
text-decoration-line: none;}
</style>
	<jsp:include page="header.jsp"/>
<body class="is-preload">
		<article id="main">
		
<!-- <header 헤더라고 쓰면 자꾸 다른게 변경됨> -->
	<div class="inner" style="text-align:center;  height:400px; background-color:#fffff;">
	</div>
<!-- </header> -->


		<div class="navigation" style="text-align: center; margin: 0 auto; font-size: 1.1rem;">내 정보수정</div>


	<div class="wrapper" style="margin-top:-6.5em;">
		<div class="container" style="margin:0 auto; width:50%">
			<div id="change_info">
				<div class="content-wrapper" style="padding:0 0 0 12em;">
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
								<div class="gender-btn-wrapper" >
									<input class="gender-input" type="radio" value="m"
										name="user[gender]" id="user_gender_m"> 
										<label class="gender-btn" for="user_gender_m">남</label> 
									<input class="gender-input" type="radio" value="f"
										name="user[gender]" id="user_gender_f"> 
										<label class="gender-btn" for="user_gender_f"> 여	
									</label>
								</div>
							</div> 
							
							
							
							

							<div class="column-wrapper current-password">
								<label>기존 비밀번호</label> <input type="password"
									id="user_current_password" name="user[current_password]">
							</div>

							<div class="column-wrapper password" style="margin-bottom:2em;">
								<label>새로운 비밀번호(8자리 이상)</label> <input type="password"
									id="user_password" name="user[password]">
							</div>

							<div class="agreement-list">
								<div class="agreement">
									<input type="checkbox" id="user_allow_newsletter"
										name="user[allow_newsletter]" class="agreement-input" checked>
									<label class="agreement-content" for="user_allow_newsletter">
										<div class="content">(선택) 새로운 지점 소식을 뉴스레터로 구독</div>
									</label>
								</div>

								<div class="agreement">
									<input type="checkbox" id="user_allow_serve_privacy"
										name="user[allow_serve_privacy]" class="agreement-input"
										checked> <label class="agreement-content"
										for="user_allow_serve_privacy">
										<div class="content">
											(선택) <a class="privacy-btn" href="/serve_privacy"
												target="_blank">개인정보 제3자 제공</a> 에 동의합니다
										</div>
									</label>
								</div>
							</div>

							<ul class="notice-list">
								<li class="notice">* 정보 수정 시 기존 비밀번호를 입력하셔야 합니다</li>
							</ul>
							<input type="submit" class="update-btn" name="commit"
								value="내 정보 수정 완료"> <input id="leave-button"
								type="button"
								style="margin-top: 1rem; background-color: #D9D9D9"
								class="update-btn" value="탈퇴하기">
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
		</article>
		
<!-- 	</div> -->

	<jsp:include page="footer.jsp" />


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>