<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../assets/css/inquiry.css" />
	<title>가치살자 문의하기</title>
	</head>
	<body>
	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />
	
		<div id="first-wrap">
			<div id="second-wrap">
				<div id="third-wrap">
					<div id="shadow-wrap">
				<p id="first-p">문의하기</p>
				<p id="second-p">아래 내용으로 문의 주시면 검토하여 답변드립니다.</p>
				<br>
				<div id="hr-tag"></div>
			<form action="">
				<div>
					<input type="text" id="first-input" placeholder="이름" autocomplete="off">
				</div>
				<div>
					<input type="text" id="second-input" placeholder="연락처" autocomplete="off">
				</div>
				<div>
					<input type="text" id="third-input" placeholder="건물 주소" autocomplete="off">
				</div>
				<!-- 번호 참고하도록 함. (강사님 피드백)-->
				<div>
					<input type="text" id="bonus-input" placeholder="참고 호점(선택)" autocomplete="off">
				</div>
				<br>
				<p id="third-p">집 유형*</p>
				<div class="div-wrap">
				<div>
				<label class="first-label">
				<input type="radio" name="house"> 아파트
				</label>
				</div>
				<div>
				<label class="first-label">
				<input type="radio" name="house"> 단독
				</label>
				</div>
				<div>
				<label class="first-label">
				<input type="radio" name="house"> 다가구
				</label>
				</div>
				<div>
				<label class="first-label">
				<input type="radio" name="house"> 다세대
				</label>
				</div>
				<div>
				<label class="first-label">
				<input type="radio" name="house"> 기타
				</label>
				</div>
				</div>
				<br>
					<p id="fourth-p">평수 및 구조*</p>
					<input type="text" id="fourth-input" placeholder="ex. 50평, 방3, 화장실2" autocomplete="off">
				<br><br><br>
				<p id="fifth-p">요청사항</p>
				<textarea name="" id="content" rows="7"></textarea>
				<br><br><br>
				<div id="final-div">
				<label id="second-label">
				<input type="checkbox" id="first-checkbox"> 개인정보 제공 이용약관에 동의합니다.
				</label>
				</div>
				<br><br><br>
				<button id="button-submit">문의하기</button>
			</div>
			</form>
				<br><br><br><br><br><br>
				<div id="hr-tag"></div>
				<br><br><br><br>
				<div id="question-p1-wrap">
				<p id="question-p1">자주 묻는 질문</p>
				<button type="button" class="img2"></button>
				</div>
			<br>
			</div>
            <div id="question-p2-wrap">
            <p id="question-p2">지방은 불가능한가요?</p>
			<button type="button" class="img3"></button>
            </div>
			<div id="hr-tag2"></div>
            <div id="question-p3-wrap">
            <p id="question-p3">입주자에게 어느정도 임대료(수익)를 받을 수 있을까요?</p>
			<button type="button" class="img3"></button>
            </div>
			<div id="hr-tag2"></div>
            <div id="question-p4-wrap">
			<p id="question-p4">임대인인 제가 실거주하면서, 임차인들을 받아서 실제 동거 형태로 위탁도 가능한가요?</p>
			<button type="button" class="img3"></button>
            </div>
			<div id="hr-tag2"></div>
            <div id="question-p5-wrap">
            <p id="question-p5">근생 건물에서 셰어하우스는 불가능 한가요?</p>
			<button type="button" class="img3"></button>
			<div id="hr-tag3"></div>
			</div>
			<br><br><br><br><br><br><br><br><br>
			</div>
		</div>

	<!-- footer -->
	<jsp:include page="../fix/footer.jsp" />
	</body>
	</html>