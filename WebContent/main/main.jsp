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

	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />

	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />


	<!-- Banner -->
	<section id="banner">
		<div class="inner">
			<div class="inner-wrap">

				<div class="filter">
					<form id="filter-form">
						<div id="filter-container">
							<div id="input-wrap" class="flex_wrap">
								<div id="hash-tag">
									<span>#</span>
								</div>
								<div id="filter-input">
									<input type="text">
								</div>
							</div>
							<div id="slide-wrap">
								<div class="flex_wrap">
									<div class="slide-cell">성신여대쉐어하우스</div>
									<div class="slide-cell">가양역쉐어하우스</div>
									<div class="slide-cell">개포동쉐어하우스</div>
									<div class="slide-cell">상혁쉐어하우스</div>
									<div class="slide-cell">승근쉐어하우스</div>
									<div class="slide-cell">현준쉐어하우스</div>
								</div>
							</div>
							<div id="slide-wrap-mobile">
								<div class="flex_wrap-mobile">
									<div class="slide-cell-mobile">성신여대쉐어하우스</div>
									<div class="slide-cell-mobile">가양역쉐어하우스</div>
									<div class="slide-cell-mobile">개포동쉐어하우스</div>
									<div class="slide-cell-mobile">상혁쉐어하우스</div>
									<div class="slide-cell-mobile">승근쉐어하우스</div>
									<div class="slide-cell-mobile">현준삼쉐어하우스</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- main -->
	<section id="two">
		<div id="info_wrap">
			<div id="img_wrap">
				<img src="../images/poster.png">
			</div>
			<div id="text_wrap">
				<div id="check_img">
					<img src="../images/checkList.png">
				</div>
			</div>
		</div>
	</section>

<article>
	<section id="three">
		<div id="intro_wrap">
			<div id="intro_text">
				<span> 2030에 대한 이해에서 출발한 가치살자!<br> 집을 구하는 상황과 조건에 맞춘 집을
					만들었어요.
				</span>
				<div id="under_line1"></div>
				<div id="under_line2"></div>
			</div>'
			<div id="intro_border">
				<div id="border_wrap">
					<div class="flex_wrap">
						<div class="border_content">#초역세권</div>
						<div class="border_content">#아파트</div>
						<div class="border_content">#프리미엄 1인실</div>
						<div class="border_content">#단기계약 3개원</div>
					</div>
					<div class="flex_wrap">
						<div class="border_content">#대학인근</div>
						<div class="border_content">#가성비 다인실</div>
						<div class="border_content">#건물전체</div>
					</div>
				</div>
			</div>
			<div id="intro_img">
				<div class="intro_img">
					<div id="img1"></div>
					<div class="text-align">
						<span> 아직 주거지를 정하기 어려운<br> <strong>인턴, 고시생</strong>
						</span>
					</div>
				</div>
				<div class="intro_img">
					<div id="img2"></div>
					<div class="text-align">
						<span> 통학, 통근 거리가 부담스러운<br> <strong>대학생, 직장인</strong>
						</span>
					</div>
				</div>
				<div class="intro_img">
					<div id="img3"></div>
					<div class="text-align">
						<span>실용적인 주거 형태를 추구하는<br> <strong>1인 가구</strong>
						</span>
					</div>
				</div>
			</div>
		</div>
	</section>
</article>


	<section id="one" class="wrapper alt style2">
		<div class="title">최근 등록된 가치살집</div>
		<div class="arrow_btn prev">
			<img src="../images/prev.png">
		</div>
		<div id="slide-wrap">
			<ul id="content-wrap">
				<li class="content-wrap">
					<div class="content">
						<a href="../house/roomDetail.jsp"> <img
							src="https://woozoo.s3.amazonaws.com/uploads/house/main_image/291/m-1567072647.jpg">
							<span>180호점</span>
						</a>
					</div>
				</li>
				<li class="content-wrap">
					<div class="content">
						<a href="../house/roomDetail.jsp"> <img
							src="https://woozoo.s3.amazonaws.com/uploads/house/main_image/390/m-1601018080.jpg">
							<span>181호점</span>
						</a>
					</div>
				</li>
				<li class="content-wrap">
					<div class="content">
						<a href="../house/roomDetail.jsp"> <img
							src="https://woozoo.s3.amazonaws.com/uploads/house/main_image/391/m-1601018252.jpg">
							<span>182호점</span>
						</a>
					</div>
				</li>
				<li class="content-wrap">
					<div class="content">
						<a href="../house/roomDetail.jsp"> <img
							src="https://woozoo.s3.amazonaws.com/uploads/house/main_image/372/m-1607324588.png">
							<span>183호점</span>
						</a>
					</div>
				</li>
				<li class="content-wrap">
					<div class="content">
						<a href="../house/roomDetail.jsp"> <img
							src="https://woozoo.s3.amazonaws.com/uploads/house/main_image/323/m-1580372741.jpg">
							<span>184호점</span>
						</a>
					</div>
				</li>
			</ul>
		</div>
		<div class="arrow_btn next">
			<img src="../images/next.png">
		</div>
	</section>


	<!-- footer -->
	<jsp:include page="../fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../assets/js/mainpage.js"></script>
</html>