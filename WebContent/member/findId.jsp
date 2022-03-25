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

p#open{
        border-radius: 4px;
    border: none !important;
    background-color: #1187CF;
    color: #fff;
    height: 50px;
        font-weight: 700;
    margin:0;
        overflow: hidden;
            letter-spacing: 0.07em;
    line-height: 3.35em;
    text-align:center;
        display: inline-block;
        cursor: pointer;
    }

#modal{
	display:none;
    background-color: #0f0f0f99;
    width: 100%;
    height: 100vh;
    position: fixed;
    top: 0;
    z-index: 1000;
    left: 0;
}
#modal-inner{
 width: 40%;
    height: 100vh;
    margin: 0 auto;
    left: 30%;
    top: 0;
    position: absolute;

    }
 #modal-box{
 height: 50%;
    width: 80%;
    margin-top: 25%;
    margin-left: 10%;
    background: #fff;
    border: 1px solid;
    border-radius: 5px;
    }
    
    .modal-content{
        text-align: center;
        position: relative;
    }
    div#m-title.modal-content{

    margin-top: 10%;
    }
     div#mid.modal-content{
	border-top: 2px solid #eee;
    border-bottom: 2px solid #eee;
    padding: 2rem;
    margin: 0 auto;
    margin-top: 3em;
    margin-bottom: 3em;
    width: 50%;
    }
    
    
     .modal-content h3{
	margin:0 0 0.5em 0 !important;
    }
    
  
    div#m-id.modal-content{
   	font-weight: 600;
    font-family: fangsong;
    }
    .modal-content input[type="button"]{
    border: 1px solid #eee !important;
    background: #1187CF;
    color: #fff;
}
	span.m-span{
	font-size:smaller;
	}
	
 	div#m-btn.modal-content{
	border: 1px solid #eee;
    cursor: pointer;
    width: 50%;
    margin: 0 auto;
    border-radius: 4px;
    box-shadow: 0 1px 10px rgb(0 0 0 / 20%);
	} 
	


</style>

<body class="is-preload">


	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />

	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />

<div id="modal">
	<div id="modal-inner">
		<div id="modal-box">
			<div id="modal-contents">
				<div class="modal-content" id="m-title"><span></span><h3>아이디 찾기</h3></div>
				 <div class="modal-content"><span class="m-span">회원님의 정보와 일치하는 아이디 결과입니다.</span><br></div>
				<div class="modal-content" id="mid">
				</div>
				<div class="modal-content" id="m-btn">확인</div>
			</div>
		</div>
	</div>
</div>

	

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
					<form id="findLoginId" method="post">
						<fieldset class="fld_tistory">
							<div class="cont_data">

								<div class="inp_text">
									<label for="findUrlOrNickname" class="screen_out">가입시
										등록한 이름과 전화번호를 입력해주세요.</label> 
										<input type="text" id="findUrlOrNickname" class="memberName"
										name="memberName" placeholder="이름" value="" tabindex="3" autocomplete="off">
										
										 <input
										type="text" id="findUrlOrNickname" name="memberPhone"
										placeholder="전화번호" value="" tabindex="3" class="memberPhone" autocomplete="off">

								</div>
								

							</div>
							<div id="kakaochoice">
								<ul class="actions fit kakaochoice">
									<li><p id="open">확인</p></li>
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
	<script src="${pageContext.request.contextPath}/assets/js/findId.js"></script>
	<script>var contextPath = "${pageContext.request.contextPath }";
	
	</script>
	
</body>
</html>