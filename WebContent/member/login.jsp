<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css" />
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"
	rel="stylesheet">
</head>
<body class="is-preload" onkeypress="javascript:enterLogin();">
	<c:if test="${not empty param.code}">
		<script>
			alert("아이디 또는 비밀번호를 다시 확인해주세요");
		</script>
	</c:if>
	<c:if test="${not empty param.access}">
		<script>
			alert("이미 탈퇴된 계정입니다");
		</script>
	</c:if>

	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />

	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />
	<!-- Main -->
	<section id="login-wrap">
		<div id="box">
			<div id="houseIcon">
				<span></span>
			</div>
			<ul id="choices">
				<li class="choice one"><a id="loginTab" href="${pageContext.request.contextPath}/member/Login.me">로그인</a></li>
				<li class="choice two"
					style="background-color: rgba(221, 221, 221, 0.521);"><a
					id="joinTab" href="${pageContext.request.contextPath}/member/Join.me">회원가입</a></li>
			</ul>
			<div id="mArticle">
				<form id="findLoginId" method="post" action="${pageContext.request.contextPath}/member/MemberLoginOk.me" name="loginForm">
				 <!-- onsubmit="return frm_check();" -->
					<div class="content_account">
						<div class="inp_text">
							<input type="text" id="findUrlOrNickname" name="memberId"
								placeholder="이메일(아이디)" value=<c:out value="${param.forwardurl}"/> >
								<input type="password"
								id="findUrlOrNickname" name="memberPw" placeholder="비밀번호" 
								value=<c:out value="${param.forwardurl}"/>>
						</div>
					<!-- 	<div id="loginStatus">
							<input type="checkbox" name="saveId" value="true" id="saveId">
							<label for="saveId">아이디 저장</label> <input type="checkbox"
								name="autoLogin" value="true" id="autoLogin"> <label
								for="autoLogin" style="margin-left: 12px;">자동 로그인</label>
						</div> -->
<%-- 		<!-- 쿠키의 객체를 가져온다. -->
		<!-- 로그인 상태 -->
		<c:if test="${not empty cookie.memberId}">
		
			</c:if>
			<!-- 로그인 안된상태  -->
			<c:if test="${empty cookie.memberId}">
	
			</c:if> --%>
						<div id="kakaochoice">
							<ul class="actions fit kakaochoice">
								<li><a href="#" class="button alt fit tstory" onclick="loginForm.submit()" id="login"><span>로그인</span></a></li>
								<li><a id="kakao_btn" href="#"
									class="button alt fit kakao"><img src="../images/카카오톡.jpg"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;카카오계정
											로그인</span></a></li>
								<li><a href="findId.jsp" class="button alt fit tstory find"><span>아이디
											찾기</span></a></li>
								<li><a href="findPw.jsp" class="button alt fit tstory find"><span>비밀번호
											찾기</span></a></li>
							</ul>
						</div>
					</div>
				</form>
			</div>
			<div id="login_banner">
				<img src="${pageContext.request.contextPath}/images/login_banner.png">
			</div>
		</div>
	</section>

	<!-- Footer -->

	<jsp:include page="../fix/footer.jsp" />


	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
		/* Kakao.init("3df76abdd7389be0cf0063fa01b6ffb4");
		
		$("#kakao_btn").on("click", function(){
		    //1. 로그인 시도
		    Kakao.Auth.login({
				scope : 'profile_nickname, account_email, gender',
		        success: function(authObj) {
		         	console.log(authObj);
		          //2. 로그인 성공시, API 호출
		         Kakao.API.request({
		            url: '/v2/user/me',
		            success: function(res) {
		            	
		            	/* $.each({
		            		
		            	)}; */
		            	const kakao_account = res.kakao_account;
		            	console.log(kakao_account);
		              var id = res.id;
		              console.log(id);
		              console.log(res.profile_nickname);
		              alert("로그인 성공");
		              location.href="${pageContext.request.contextPath}/main/main.jsp?code=" + id;
						         
		        }
		          })
		          console.log(authObj);
		          var token = authObj.access_token;
		        },
		        fail: function(err) {
		          alert(JSON.stringify(err));
		        }
		      });
		        
		})  */
	</script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/login.js"></script>
</body>
</html>