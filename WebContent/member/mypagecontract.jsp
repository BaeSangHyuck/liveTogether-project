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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/mypagecontract.css" />
</head>
<style>
#down1 {
	display: none;
}

#down2 {
	display: none;
}

#down3 {
	display: none;
}

#mypageName {
	border: 1px solid;
	display: inline-block;
	width: 8%;
	height: 50px;
	text-align: center;
	line-height: 50px;
	color: #fff;
	background: #1187cf;
}
</style>
<!-- Header -->

<jsp:include page="../fix/header.jsp" />

<!-- Aside -->
<jsp:include page="../fix/aside.jsp" />

<body class="is-preload">
	<c:set var="member" value="${member}" />
	<article id="main">

		<div id="mypageheader">
			<div class="inner">
				<div class="inner_ab">
					<span class="my_span01">${memberName}</span>님의 마이페이지입니다.
				</div>
			</div>
		</div>

		<div class="mypage">

			<div class="mypagetool">
				<ul class="mypagebar">
					<li class="num1"><a
						href="${pageContext.request.contextPath}/member/MemberMypageOk.me">내
							정보조회</a></li>
					<li class="num2"><a
						href="${pageContext.request.contextPath}/member/MemberMypageUpdate.me">내
							정보수정</a></li>
					<li class="num3"><a
						href="${pageContext.request.contextPath}/member/MemberMypageTour.me">진행사항</a>
					</li>
					<li class="num4"><a
						href="${pageContext.request.contextPath}/member/mypagecontract.jsp">계약서
							출력 </a></li>
					<li class="num5"><a
						href="${pageContext.request.contextPath}/member/MemberQuestionListOk.me">문의사항
					</a></li>
				</ul>
			</div>


			<div class="my" id="target">
				<div class="wrapper">
					<div class="mypagecontract">
						<div class="contract-table">
							<div class="tab1">
								<div class="b1 active a1" role="tabpanel" id="lease">
									<img
										src="${pageContext.request.contextPath}/images/contract_0.png">
								</div>
								<div class="a1 a2" role="tabpanel" id="bargain">
									<img
										src="${pageContext.request.contextPath}/images/contract_1.png">
								</div>
								<div class="a1 a2" role="tabpanel" id="housing">
									<img
										src="${pageContext.request.contextPath}/images/contract_2.png"
										style="width: 540px">
								</div>
								<div class="a1 a2" role="tabpanel" id="store">
									<img
										src="${pageContext.request.contextPath}/images/contract_3.png"
										style="width: 540px">
								</div>
							</div>

							<div class="tab2">
								<div id="tab2-container">
									<div class="contract-title2">계약서쓰기 어렵지 않아요</div>
									<div class="contract-contents">
										안전한 거래를 위해 가치살자의 방 찾기에서 제공하는 계약서 양식입니다.<br>필요한 계약서를 다운받아
										이용하세요.
									</div>
									<ul class="contract-btn" role="tablist">
										<li role="presentation" class="contract-btn-li active"><a
											href="#target" class="btns" id="leaseBtn"
											aria-controls="부동산임대차" role="tab" data-toggle="tab"
											aria-expanded="true"> 부동산 임대차 계약서 </a></li>

										<li role="presentation" class="contract-btn-li"><a
											href="#target" class="btns" id="bargainBtn"
											aria-controls="부동산매매" role="tab" data-toggle="tab"
											aria-expanded="true"> 부동산 매매 계약서 </a></li>

										<li role="presentation" class="contract-btn-li"><a
											href="#target" class="btns" id="housingBtn"
											aria-controls="주택임대차" role="tab" data-toggle="tab"
											aria-expanded="true"> 주택 임대차 계약서 </a></li>

										<li role="presentation" class="contract-btn-li"><a
											href="#target" class="btns" id="storeBtn"
											aria-controls="상가임대차" role="tab" data-toggle="tab"
											aria-expanded="true"> 상가건물 임대차 계약서 </a></li>
									</ul>

									<div role="tabpanel" id="lease" class="tab-pane active">
										<div class="tab-pane-title" id="title">부동산 임대차 계약서</div>
										<table class="contract-table2">
											<tbody>
												<tr>
													<td class="t-subject">거래형태</td>
													<td class="t-content" id="trade">임대(월세)</td>
												</tr>

												<tr>
													<td class="t-subject">건물형태</td>
													<td class="t-content" id="build">주택, 상가건물 등 부동산 전반</td>
												</tr>

												<tr>
													<td class="t-subject">구성</td>
													<td class="t-content" id="construction">임차주택의 표시,
														계약내용, 특약사항</td>
												</tr>

												<tr>
													<td class="t-subject">제공</td>
													<td class="t-content" id="offer">보급형(부동산 중개사무소에서 자주써요)</td>
												</tr>
											</tbody>
										</table>

										<!-- 다운로드 -->
										<div class="contract-download-btn" id="down1">
											<a
												href="${pageContext.request.contextPath}/upload/부동산임대차계약서.doc"
												target="_blank"> <img
												src="${pageContext.request.contextPath}/images/wordDownload.png">
											</a> <a
												href="${pageContext.request.contextPath}/upload/부동산임대차계약서.hwp"
												target="_blank"> <img
												src="${pageContext.request.contextPath}/images/hngDownload.png">
											</a>
										</div>

										<div class="contract-download-btn" id="down2">
											<a
												href="${pageContext.request.contextPath}/upload/부동산매매계약서.docx"
												target="_blank"> <img
												src="${pageContext.request.contextPath}/images/wordDownload.png">
											</a> <a
												href="${pageContext.request.contextPath}/upload/부동산매매계약서.hwp"
												target="_blank"> <img
												src="${pageContext.request.contextPath}/images/hngDownload.png">
											</a>
										</div>

										<div class="contract-download-btn" id="down3">
											<a
												href="${pageContext.request.contextPath}/upload/주택임대차계약서.docx"
												target="_blank"> <img
												src="${pageContext.request.contextPath}/images/wordDownload.png">
											</a> <a
												href="${pageContext.request.contextPath}/upload/주택임대차계약서.hwp"
												target="_blank"> <img
												src="${pageContext.request.contextPath}/images/hngDownload.png">
											</a>
										</div>

										<div class="contract-download-btn" id="down4">
											<a
												href="${pageContext.request.contextPath}/upload/상가건물임대차계약서.docx"
												target="_blank"> <img
												src="${pageContext.request.contextPath}/images/wordDownload.png">
											</a> <a
												href="${pageContext.request.contextPath}/upload/상가건물임대차계약서.hwp"
												target="_blank"> <img
												src="${pageContext.request.contextPath}/images/hngDownload.png">
											</a>
										</div>
									</div>


								</div>




							</div>
						</div>





					</div>

					<div class="cardwrap">
						<div class="contract-card">
							<div class="card-title">등기부등본 확인</div>
							<div class="card-subtitle">깡통전세, 중복계약, 먹튀 직거래 사기꾼을 피하는 방법,
								첫번째! 계약서 싸인하고 도장 찍기 전에 등기부등본부터 먼저 확인하세요.</div>
							<a href="http://www.iros.go.kr/PMainJ.jsp" target="_blank"
								class="card-link-btn">대법원 인터넷 등기소 등기부등본 열람 &nbsp;&nbsp;&gt;</a>
						</div>
					</div>



				</div>
			</div>

		</div>



	</article>



	<jsp:include page="../fix/footer.jsp" />


	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/mypagecontract.js"></script>
</body>
</html>