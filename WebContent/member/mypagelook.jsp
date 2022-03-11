<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<c:set var="member" value="${member}" />
	<article id="main">

		<div class="inner">
			<div class="inner_ab">
			<span class="my_span01">${member.getMemberName()}</span>님의 마이페이지 입니다. 
			</div>
		</div>
		
	
	<div class="mypagelook">
		<div id="box">	
		<div id="navigation_wraper">
			<div class="navigation">
				<a href="${pageContext.request.contextPath}/member/MemberMypageUpdate.me">
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
									<div class="static">${member.getMemberId()}</div>
								</div>

								<div class="column-wrapper name">
									<label class="col02">이름</label>
									<div class="user_name">${member.getMemberName()}</div>
								</div>

								<div class="column-wrapper phone">
									<label class="active">전화번호</label>
									<div class="user_phone">${member.getMemberPhone()}</div>
								</div>

								<div class="column-wrapper">
									<label class="gender-input">성별</label>
									<div class="gender-btn-wrapper">
									<c:choose>
										<c:when test="${member.getMemberGender() eq 'm'}">
											남자
										</c:when>
										<c:otherwise>
											여자
										</c:otherwise>
									</c:choose>
									</div>
								</div>
								
								<div class="column-wrapper nickname">
									<label class="col06">닉네임</label> 
									<div class="user_nickname">
									${member.getMemberNickname()}
									</div>
								</div>
								
								<div class="column-wrapper profile">
									<label class="col05">한 줄 소개</label> 
									<div class="user_pro">
									${member.getMemberProfile()}
									</div>
								</div>

							</form>
						</div>
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