<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/inquiry.css" />
	<title>가치살자 문의하기</title>
	</head>
	<body>
	<jsp:include page="../fix/header.jsp" />
	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />
		<div id="inquiry-first-wrap">
			<div id="second-wrap">
				<div id="third-wrap">
					<div id="shadow-wrap">
				<p id="first-p">문의하기</p>
				<p id="second-p">아래 내용으로 문의 주시면 검토하여 답변드립니다.</p>
				<br>
				<div id="hr-tag"></div>
			<form action="${pageContext.request.contextPath}/board/InquiryDeliveryOk.bo" id="inquiryForm">
				<div class="inquiryIdWrapper">
					<div class="inquiryId">${memberId}</div>
				</div>
				<div class="inquiryPhoneWrapper">
					<div class="inquiryPhone">${memberPhone}</div>
				</div>
				<!-- 번호 참고하도록 함. (강사님 피드백)-->
				<div>
					<input type="text" id="bonus-input" placeholder="참고 호점(선택)" autocomplete="off" name="houseNumber">
				</div>
				<br>
				<p id="third-p">집 유형*</p>
				<div class="div-wrap">
				<div>
				<label class="first-label">
				<input type="radio" name="houseType" value="a"> 아파트
				</label>
				</div>
				<div>
				<label class="first-label">
				<input type="radio" name="houseType" value="v"> 빌라
				</label>
				</div>
				<div>
				<label class="first-label">
				<input type="radio" name="houseType" value="d"> 단독주택
				</label>
				</div>
				<div>
				<label class="first-label">
				<input type="radio" name="houseType" value="o"> 기타
				</label>
				</div>
				</div>
				<br>
					<p id="fourth-p">평수 및 구조</p>
					<input type="text" id="fourth-input" placeholder="ex. 50평, 방3, 화장실2 (선택 사항)" autocomplete="off" name="typeOption">
				<br><br><br>
				<p id="fifth-p">요청사항*</p>
				<textarea name="inquiryContent" id="content" rows="7"></textarea>
				<br><br><br>
				<div id="final-div">
				<label id="second-label">
				<input type="checkbox" id="first-checkbox" name="agree"> 개인정보 제공 이용약관에 동의합니다.
				</label>
				</div>
				<br><br><br>
				<button type="button" id="button-submit" onclick="send()">문의하기</button>
			</form>
			</div>
				<br><br><br><br><br><br>
				<div id="hr-tag"></div>
				<br><br><br><br>
				<div id="question-p1-wrap">
				<p id="question-p1">자주 묻는 질문</p>
				</div>
			<br>
			</div>
			<div id="faq">
				<input type="radio" name="live" id="faq-question1">
				<label for="faq-question1" class="check">지방은 불가능한가요?<em><img src="${pageContext.request.contextPath}/images/inquiryPlus.png"></em></label>
				<div><p>
현재는 서울지역만 확장중에 있으며, 추후 서울외곽, 경기 지역도 확장을 검토중에 있습니다.
	</p></div>
				<input type="radio" name="live" id="faq-question2">
				<label for="faq-question2" class="check">입주자에게 어느정도 임대료(수익)를 받을 수 있을까요?<em><img src="${pageContext.request.contextPath}/images/inquiryPlus.png"></em></label>
				<div><p>
지역마다 상이하며, 보통 단독 1인실의 경우 평균 50만원, 다인실의 경우 평균 38만원 입니다.</p></div>
<input type="radio" name="live" id="faq-question3">
<label for="faq-question3" class="check">임대인인 제가 실거주하면서, 임차인들을 받아서 실제 동거 형태로 위탁도 가능한가요?<em><img src="${pageContext.request.contextPath}/images/inquiryPlus.png"></em></label>
<div><p>
불가능 합니다. 우주는 원칙 적으로 동성 관계에서 셰어하우스 운영이 가능하며  입주자에게는 임대인의 위탁을 위임 받은 ‘우주’ 라는 브랜드 만을 노출하게 되며, 실제로  접촉하는 것도 우주와의 접촉만 가능합니다.
</p></div>
<input type="radio" name="live" id="faq-question4">
<label for="faq-question4" class="check">근생 건물에서 셰어하우스는 불가능 한가요?<em><img src="${pageContext.request.contextPath}/images/inquiryPlus.png"></em></label>
<div><p>
건축물 대장상 2종근린생활시설 중 고시원(다중주택)의 경우 셰어하우스로 검토 가능합니다.
</p></div>
			</div>
			<br><br><br><br><br><br><br><br><br>
			</div>
		</div>

	<!-- footer -->
	<jsp:include page="../fix/footer.jsp" />
	</body>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/inquiry.js"></script>
	</html>