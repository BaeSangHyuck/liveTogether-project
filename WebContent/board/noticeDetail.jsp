<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/css/footer.css" />
    <link rel="stylesheet" href="../assets/css/noticeDetail.css" />
        <title>가치살자 공지사항 내용</title>
    </head>
    <body>
	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />
	
	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />
	
      <article class="noticeDetail-first-wrap">
        <div class="second-wrap">
          <div class="third-wrap">
          	<div class="gradation-div-wrap">
            <p id="first-p">가치살자 공지사항</p>
            <div class="gradation-div"></div>
            </div>
            <br>
            <p id="second-p">비대면 투어 전환</p>
            <br>
            <div id="hr-tag"></div>
            <div id="span-wrapper">
            <form action="">
            <pre>안녕하세요, 셰어하우스 가치살자입니다.
    
현재 코로나 19 바이러스의 확산으로 인해 빠른 처리와 접촉 최소화를 위해
일부 지점에 한해 방문 없는 비대면 전화상담 계약을 진행하고 있습니다.
    
아래 지역구에 해당하는 지점들을 시작으로
추후 다른 지점들 또한 비대면 투어로 전환 및 진행될 예정이오니 입주신청 시 참고 부탁드립니다.
    
-비대면 투어 전환지점-
마포구, 서대문구, 은평구, 용산구
            </pre><br>
            <div id="hr-tag"></div>
            <br><br>
            <div id="button-wrapper">
            <input type="button" id="buttonBack" onclick="history.back();" value="뒤로가기">
            </div>
        </form>
            </div>
       </div>
      </div>
      </article>
      
    <jsp:include page="../fix/footer.jsp"/>
    </body>
    </html>