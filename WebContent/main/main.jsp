<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/mainpage.css" />
<title>가치살자 - 메인페이지</title>
</head>
<body>
	<jsp:include page="../fix/header.jsp" />
	<jsp:include page="../fix/aside.jsp" />


	<!-- Banner -->
	<section id="banner">
		<div class="inner">
			<div class="inner-wrap">
				<div class="content">
					어디에서<br> 살고싶나요?
				</div>
				<div class="filter">
					<form>
						<div class="text-wrap">
							<input type="text" name="" id="" placeholder="지역, 지하철역을 입력하시오">
						</div>
						<div class="gender-wrap" id="room">
							<div id="gender-wrap" onclick="change1(this.id)">
								성별형태 <input type="checkbox" class="arrow" id="gender"> <label
									for="gender-wrap"> <span> </span> <span> </span>
								</label>
							</div>
							<div class="choice">
								<ul>
									<li>선택안함</li>
									<li>남성전용</li>
									<li>여성전용</li>
									<li class="last">남녀전용</li>
								</ul>
							</div>

						</div>
						<div class="gender-wrap" id="room">
							<div id="room-wrap" onclick="change2(this.id)">
								룸 형태 <input type="checkbox" class="arrow" id="gender"> <label
									for="room-wrap"> <span> </span> <span> </span>
								</label>
							</div>
							<div class="choice">
								<ul>
									<li>선택안함</li>
									<li>1인실</li>
									<li>2인실</li>
									<li class="last">3인실</li>
								</ul>
							</div>

						</div>
						<div class="gender-wrap" id="house">
							<div id="house-wrap" onclick="change3(this.id)">
								주거형태 <input type="checkbox" class="arrow" id="gender"> <label
									for="house-wrap"> <span> </span> <span> </span>
								</label>
							</div>
							<div class="choice">
								<ul>
									<li>선택안함</li>
									<li>아파트</li>
									<li>단독주택</li>
									<li>빌라</li>
									<li class="last">기타</li>
								</ul>
							</div>

						</div>

						<div class="submit-button">
							<input type="submit" value="">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="../fix/footer.jsp" />
</body>
<script src="../assets/js/mainpage.js"></script>
</html>