<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/mainpage.css" />
<title>가치살자 - 메인페이지</title>
</head>
<body>
	<jsp:include page="/header.jsp"/>


	<!-- Banner -->
    <section id="banner">
        <div class="inner">
            <div class="inner-wrap">
                <div class="content">
                    어디에서<br>
                    살고싶나요?
                </div>
                <div class="filter">
                    <form>
                        <div class="text-wrap">
                            <input type="text" name="" id="" placeholder="지역, 지하철역을 입력하시오">
                        </div>
                        <div class="gender-wrap">
                            성별타입 <span class="arrow">∧</span>
                        </div>
                        <div class="gender-wrap">
                            룸 형태 <span class="arrow">∧</span>
                        </div>
                        <div class="house-wrap">
                            주거유형 <span class="arrow">∧</span>
                        </div>
                        <div class="submit-button">
							<input type="submit" value="">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

	<jsp:include page="/footer.jsp"/>
</body>
</html>