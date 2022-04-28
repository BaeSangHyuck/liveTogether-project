<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/header.css" />
<title>header</title>
<style>
	#container1{
	max-width: 1320px;
    width: 70%;
    margin: 0 auto;
    padding: 0;
    box-sizing: border-box;
	}
	
	#mainImage{
	float:left;
	width:100%;
	padding:0 1rem;
	box-sizing:border-box
	}
	
	table.table1 {
  	border-collapse: separate;
  	border-spacing: 0;
  	text-align: left;
  	line-height: 1.5;
  	border-top: 1px solid #ccc;
  	border-left: 1px solid #ccc;
  	margin : 20px 10px;
  	font-size : 1px;
	}

	table.table1 th {
  	width: 100px;
  	padding: 10px;
  	font-weight: 100;
  	vertical-align: top;
  	border-right: 1px solid #ccc;
  	border-bottom: 1px solid #ccc;
  	border-top: 1px solid #fff;
  	border-left: 1px solid #fff;
  	background: #eee;
	}
	
	table.table1 td {
  	width: 200px;
  	padding: 10px;
  	vertical-align: top;
  	border-right: 1px solid #ccc;
  	border-bottom: 1px solid #ccc;
	}
	
	table.table2 {
  border-collapse: separate;
  border-spacing: 1px;
  text-align: center;
  line-height: 1.5;
  margin: 20px 10px;
  font-size:1px;
  border-top: 1px solid #ccc;
  border-left: 1px solid #ccc;
}
table.table2 th {
  width: 155px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  background: #eee;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}
table.table2 td {
  width: 155px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  border-right: 1px solid #ccc;
}
	
/* 	#imageSlider{
	position:relative;
	padding-top:62.5%;
	overflow:hidden
	}
	
	.list{
	width:100%;
	display:block;
	margin-bottom:1%
	}
	
	.imagelist{
	width:100%;
	display:block;
	} */
</style>
</head>
<body>
	<header id="header">
		<div id="container">
			<a> <img src="images/header_textLogo.png">
			</a> <img class="mouseover" id="slogun" src="images/header_slogun.png">
			<ul class="menu-btn-list">
				<li class="btn p_menu"><a href="#">방 찾기</a></li>
				<li class="btn p_menu"><a href="#">호스팅 하기</a></li>
				<li class="btn p_menu"><a href="#">서비스 안내</a>
					<ul class="mouseover">
						<li><a>가치살자 소개</a></li>
						<li><a>서비스 소개</a></li>
						<li><a>공지사항</a></li>
					</ul></li>
				<li class="btn p_menu"><a href="#">로그인</a> <a
					class="login_status" href="/notices">로그아웃</a>
					<ul class="mouseover">
						<li class="login_status"><a>마이페이지</a></li>
						<li><a>회원가입</a></li>
					</ul></li>
			</ul>
			<div id="subTitle"></div>
		</div>
		<div id="container1">
		<div id="mainImage" style="position:relative;">
		이미지 올리는곳
		</div>
		<div>
		지점 소개 문구를 올려주세요
		
		<table class="table1">
  		<tr>
    		<th scope="row">주소</th>
    		<td>내용이 들어갑니다.</td>
    		<th scope="row">성별</th>
    		<td>내용이 들어갑니다.</td>
  		</tr>
  		<tr>
    		<th scope="row">지점계약종료</th>
    		<td>내용이 들어갑니다.</td>
    		<th scope="row">최대거주인원</th>
    		<td>내용이 들어갑니다.</td>
  		</tr>
  		<tr>
    		<th scope="row">주택유형</th>
    		<td>내용이 들어갑니다.</td>
    		<th scope="row">구조</th>
    		<td>내용이 들어갑니다.</td>
  		</tr>
		</table>
		방 도면도 사진
		
		<table class="table2">
  <thead>
  <tr>
    <th scope="cols">이름</th>
    <th scope="cols">성별</th>
    <th scope="cols">타입</th>
    <th scope="cols">면적</th>
    <th scope="cols">보증금</th>
    <th scope="cols">월세</th>
    <th scope="cols">입주가능일</th>
    <th scope="cols">투어신청</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>내용</th>
    <td>내용</th>
    <td>내용</th>
    <td>내용</th>
    <td>내용</th>
    <td>내용</th>
    <td>내용</th>
    <td>내용</th>
  </tr>
  </tbody>
</table>

<script src="assets/js/header.js"></script>

 <script>
    
         </script>
</html>