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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypagetour.css" />
</head>

<!-- Header -->

<jsp:include page="../fix/header.jsp" />

<!-- Aside -->
<jsp:include page="../fix/aside.jsp" />

<body class="is-preload">
<c:set var="member" value="${member}"/>
	<article id="main">

		<div id="mypageheader">
			<div class="inner">
				<div class="inner_ab">
					<span class="my_span01">${member.getMemberName()}</span>님의 마이페이지 입니다.
				</div>
			</div>
		</div>



		<div class="mypage">		
				
					<div class="mypagetool">
						<ul class="mypagebar">
							<li class="num1">
								<a href="${pageContext.request.contextPath}/member/MemberMypageOk.me">내 정보조회</a>
							</li>
							<li class="num2">
								<a href="${pageContext.request.contextPath}/member/MemberMypageUpdate.me">내 정보수정</a>
							</li>
							<li class="num3">
								<a href="${pageContext.request.contextPath}/member/mypagetour.jsp">진행사항</a>
							</li>
							<li class="num4">
								<a href="${pageContext.request.contextPath}/member/mypagelook.jsp">계약서 출력</a>
							</li>
						</ul>
							</div>
							
							
					<div class="my">		
						<div class="wrapper">
							<div class="mypagenotice">
투어신청을 통해 접수하신 접수 현황을 확인하실 수 있습니다. 여러 지점을 접수하신 분들은 신청하신 순서대로 나열됩니다.
<br>투어신청이 완료된 후 통화를 통해 우주 타임(하우스 투어) 일정이 정해지고 현장 방문 후 계약 완료가 되면 진행 중인 신청현황은 상단의 계약서 페이지로 이동하게 됩니다.
							</div>
						
						<div class="mypagecontents">
							<div class="myconheader">
								<span class="myhousename">1호점</span>
								<span class="myhousecode">198D</span>
								<a class="mybtn">투어신청 취소</a>
							</div>
						<div class="mypagebook">
							<div class="info-title">진행사항</div>
							<div class="book-list">
								<div class="process active">
									<div class="process-title">입주신청완료</div>	
								</div>
								<div class="process active">
									<div class="gt">&gt;</div>
									</div>
								<div class="process ">
									<div class="process-title">방문예정</div>
								</div>
									<div class="gt">&gt;</div>
								<div class="process ">
									<div class="process-title">입주예정</div>
								</div>
									<div class="gt">&gt;</div>
								<div class="process ">
									<div class="process-title">입주완료</div>
								</div>
							</div>
						</div>
						
						<div class="mypagebook1">
							<div class="before">안내</div>
							<div class="notice-content">투어 신청을 완료했습니다.</div>
						</div>
						
						<div class="myconheader2">
							<div class="info-title">신청 지점 정보</div>
							<div class="house-info-wrapper">
								<img class="myhouse" src="https://woozoo.s3.amazonaws.com/uploads/house/main_image/426/m-1638259637.png">
								<div class="column-wrap">
							<div class="column">
								<div class="column-title">주소</div>
								<div class="column-value">서울 중구 광희동 2가</div>
							</div>
							<div class="column">
								<div class="column-title">성별</div>
								<div class="column-value">남녀공용</div>
							</div>
							<div class="column">
								<div class="column-title">지점계약종료일</div>
								<div class="column-value">2023-04-30</div>
							</div>
							<div class="column">
								<div class="column-title">최대거주인원</div>
								<div class="column-value">8명</div>
							</div>
							<div class="column">
								<div class="column-title">주택유형</div>
								<div class="column-value">기타</div>
							</div>
							<div class="column">
								<div class="column-title">구조</div>
								<div class="column-value">-</div>
							</div>
						</div>
							</div>
						</div>
						
						<div class="myconheader3">
						<div class="info-title">신청 방 정보</div>
							<div class="table-wrap">
					<table>
						<thead>
							<tr>
								<th>이름</th>
								<th>성별</th>
								<th>타입</th>
								<th>면적</th>
								<th>보증금</th>
								<th>월세</th>
								<th>입주가능일</th>

								<th>입주자 프로필</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Room A</td>
								<td>여성전용</td>
								<td>1인실</td>
								<td>9.5m²</td>
								<td>1,000,000원</td>
								<td>400,000원</td>
								<td>2022-03-01</td>
							
								<td><button class="button-profile">펼쳐보기</button></td>
							</tr>
							<tr class="tr-wrap1">
								<td colspan="9"><div id="profile">
										<div class="profile-wrap">
											<div class="profile">
												<div class="profile-name">
													<b>박상아</b>
													<p>(여자)</p>
												</div>
												<div class="profile-intro">
													<span>"안녕하세요 3팀의 바보 박상아입니다. 바붜양"</span>
												</div>
											</div>
											<div class="profile">
												<div class="profile-name">
													<b>한서현</b>
													<p>(여자)</p>
												</div>
												<div class="profile-intro">
													<span>"안녕하세요 무밍입니다. 3팀의 무밍맘 한서현♥"</span>
												</div>
											</div>
											
										</div>
									</div></td>
							</tr>
							<tr>
								<td>Room B</td>
								<td>여성전용</td>
								<td>1인실</td>
								<td>9.5m²</td>
								<td>1,000,000원</td>
								<td>400,000원</td>
								<td>2022-03-01</td>
								
								<td><button class="button-profile">펼쳐보기</button></td>
							</tr>
							
							<tr>
								<td>Room C</td>
								<td>여성전용</td>
								<td>1인실</td>
								<td>9.5m²</td>
								<td>1,000,000원</td>
								<td>400,000원</td>
								<td>2022-03-01</td>
							
								<td><button class="button-profile">펼쳐보기</button></td>
							</tr>
							
						</tbody>
					</table>
</div>
				</div>
						</div>
						
						
						</div>
						
					</div>
						</div>


	</article>



	<jsp:include page="../fix/footer.jsp" /> 


	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/mypagetour.js"></script>
</body>
</html>