<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="assets/css/inquiry.css" />
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
	
		p#first-p{
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
	
		input[type=text]#first-input, input[type=text]#second-input, input[type=text]#third-input, input[type=text]#fourth-input{
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
			width: 104%;
			font-size: 22px;
			letter-spacing: -0.5px;
		}
	
	</style>
	</head>
	<body>
		<div id="first-wrap">
			<div id="second-wrap">
				<div id="third-wrap">
				<p id="first-p">문의하기</p>
				<p id="second-p">아래 내용으로 문의 주시면 검토하여 답변드립니다.</p>
				<br>
				<div id="hr-tag"></div>
			<form action="">
				<div>
					<input type="text" id="first-input" placeholder="이름">
				</div>
				<div>
					<input type="text" id="second-input" placeholder="연락처">
				</div>
				<div>
					<input type="text" id="third-input" placeholder="물건 주소">
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
					<input type="text" id="fourth-input" placeholder="ex. 50평, 방3, 화장실2">
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
			</div>
			</div>
		</div>
	</body>
	</html>