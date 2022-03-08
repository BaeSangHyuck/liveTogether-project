<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../assets/css/footer.css" />
<link rel="stylesheet" href="../assets/css/notice.css" />
    <title>가치살자 공지사항</title>
</head>
<body>
	<!-- Header -->

	<jsp:include page="../fix/header.jsp" />
	
	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />
	
  <article class="notice-first-wrap">
    <div class="second-wrap">
      <div class="third-wrap">
      	<div class="gradation-div-wrap">
        <p class="first-ptag">가치살자 공지사항<div class="gradation-div"></div><br>
        </div>
        <form action="" id="search">
          <input type="search" maxlength="150" class="first-input" placeholder="검색어를 입력하세요">
          <button type="button" class="img1"></button>
      </form>
        <table class="table" id="first-table">
          <tbody class="table-tbody">
            <tr class="table-tr">
              <th class="first-th"></th>
              <th class="second-th"></th>
              <th class="third-th"></th>
            </tr>
            <tr class="first-table-tr">
              <th class="fisrt-first-th" id="first-th">*</th>
              <th class="first-second-th" id="second-th">비대면 투어 전환</th>
              <th class="first-third-th" id="third-th">22/02/04</th>
            </tr>
            <tr class="second-table-tr">
              <th class="second-first-th" id="first-th">*</th>
              <th class="second-second-th" id="second-th">[계약] 중도해지 신청 가이드</th>
              <th class="second-third-th" id="third-th">21/09/02</th>
            </tr>
            <tr class="third-table-tr">
              <th class="third-first-th" id="first-th">*</th>
              <th class="third-second-th" id="second-th">[계약] 재계약 신청 안내</th>
              <th class="third-third-th" id="third-th">21/07/15</th>
            </tr>
          </tbody>
        </table>
   </div>
  </div>
  </article>
  
<jsp:include page="../fix/footer.jsp"/>
</body>
</html>