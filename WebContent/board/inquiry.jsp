<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../assets/css/inquiry.css" />
	<title>가치살자 문의하기</title>
	<style>
		div#second-wrap{
			width: 40%;
			margin: 0 auto;
			--shd: 0.00px 1.00px 24px 4px rgba(0,0,0,0.07);
			--bg: 255,255,255;
		}
	
		div#third-wrap{
			width: 85%;
			margin: 0 auto;
			text-align: center;
		}
	
		p#first-p, #question-p1{
			color: #393939;
			font-size: 25px;
			font-weight: 550;
		}
	
		p#second-p{
			font-size: 15px;
			letter-spacing: -0.5px;
		}
		
		p#fourth-p{
			text-align: left;
		}
	
		p#fifth-p{
			font-size: 15px;
			letter-spacing: -0.5px;
			color: #757575;
			text-align: left;
		}
		
		p#third-p{
			text-align: left;
		}
		
	
		div#hr-tag{
			border-bottom: 1px solid #f4f4f4;
			width: 100%;
		}
		
		div#hr-tag2{
			border-bottom: 1px solid #f4f4f4;
			width: 715px;
		}

		input[type=text]#first-input, input[type=text]#second-input, input[type=text]#third-input, input[type=text]#fourth-input, input[type=text]#bonus-input {
			width: 100%;
			height: 50px;
			border: 0;
			border-bottom: 2.5px solid #8AAAE5;
			padding: 3px 3px 3px 14px;
		}
	
		input::placeholder{
			font-size: 15px;
			letter-spacing: -0.5px;
		}
	
		input[type=radio]:checked {
			width: 16px;
			height: 16px;
			color: #8AAAE5;
		}
	
		label.first-label{
			font-size: 20px;
			letter-spacing: -3.5px;
		}
	
		div.div-wrap{
			display: flex;
			justify-content: space-between;
		}
		
		textarea#content{
			width: 100%;
			resize: none;
			border: 1px solid #f6f6f6;
			border-radius: 5px;
		}
	
		div#final-div{
			text-align: left;
		}
	
		button#button-submit{
			height: 3.5rem;
			background: #8AAAE5;
			color: white;
			border-radius: 40px;
			padding: 0 2.5rem;
			border: none;
			font-weight: bold;
			width: 100%;
			font-size: 22px;
			letter-spacing: -0.5px;
		}

		p#question-p2, p#question-p3, p#question-p4, p#question-p5{
			font-size: 17px;
		}
		
		input:focus{
			outline: none;
		}

		textarea:focus{
			outline: none;
			background: #f6f6f6;
		}

		div#question-p1-wrap, div#question-p2-wrap, div#question-p3-wrap, div#question-p4-wrap, div#question-p5-wrap{
			position: relative;
		}

		button.img2{
			background-image: url("../images/search.png");
	    	background-size: cover;
			background-color: white;
			position: absolute;
	    	border: none;
	    	width: 20px;
	    	height: 20px;
			top: 8.5px;
    		right: -70px;
		}

		button.img3{
			background-image: url("../images/inquiryPlus.png");
	    	background-size: cover;
			background-color: white;
			position: absolute;
	    	border: none;
	    	width: 20px;
	    	height: 20px;
			top: 8.5px;
    		right: -19px;
		}

		input[type="checkbox"]:checked + label#second-label:before, input[type="radio"]:checked + label.first-label:before {
    		background-color: #ffffff !important;
    		border-color: #ffffff !important;
    		color: #8AAAE5 !important;
    		border: 0.5px solid !important;
		}
	</style>
	</head>
	<body>
	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />
	
		<div id="first-wrap">
			<div id="second-wrap">
				<div id="third-wrap">
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
			<div id="hr-tag2"></div>
			<br><br><br><br><br><br><br><br><br>
            </div>
			</div>
		</div>

	<!-- footer -->
	<jsp:include page="../fix/footer.jsp" />
	</body>
	</html>