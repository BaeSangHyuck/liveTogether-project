<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
        Tactile by Pixelarity
        pixelarity.com | hello@pixelarity.com
        License: pixelarity.com/license
    -->
<html>
<head>
<title>가치살자 - 회원가입</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/houseRegister2.css" />
</head>

<body>
	<!-- Header -->
	<jsp:include page="../fix/header.jsp" />

	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />

	<article id="houseRegister">
		<div class="register-container">
			<div id="register">
				<!-- <h1>방내놓기</h1> -->
				<img src="../images/roombanner.png">
				<ul id="register-info">
					<li>방 등록 시 방 정보와 계정정보(가입된 ID, 이름, 연락처 등)가 노출됩니다.</li>
					<li>허위(계약 완료, 중복 등록, 허위 정보 기재) 등록 및 중개매물, 원룸텔, 쉐어하우스 등록 시 서비스
						이용이 제한될 수 있습니다.</li>
				</ul>
			</div>
			<form>

				<!-- 위치정보 -->
				<div class="content-sub-title">
					<h2>위치 정보</h2>
				</div>
				<table>
					<tbody>
						<tr>
							<th>건물형태</th>
							<td>
								<div>
									<select class="typeSelect">
										<option>아파트</option>
										<option>단독주택</option>
										<option>빌라</option>
										<option>기타</option>
									</select>
								</div>

							</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<div id="address1">
									<input type="text" id="address" class="address"
										autocomplete="off">
									<button type="button" onclick="DaumPostcode()" id="findAddress">
										<em class="zbIcon icon-location"></em> <span>주소찾기</span>
									</button>
								</div>
								<div>
									· 주소와 단지명 모두 검색이 가능합니다.<br> · 주소 입력 시에는 동/읍/면 으로 검색해 주세요.
									예) 자곡동, 동읍면, 신월읍<br>
								</div>
							</td>
						</tr>
						<tr>
							<th>상세주소</th>
							<td><input type="text" id="address2" name="address2"
								class="address">
								<div class="item-map">
									<div id="map"></div>
									<div class="i-list">
										<ul id="list-agent"></ul>
									</div>
								</div></td>
						</tr>
						<tr>
							<th>지역</th>
							<td><input type="text" id="address3" class="address"
								name="local4"></td>
						</tr>
					</tbody>
				</table>

				<!-- 방정보 -->
				<div class="content-sub-title">
					<h2>방 정보</h2>
				</div>
				<table>
					<tbody>
						<tr>
							<th>방이름</th>
							<td>
								<div>
									<input type="text" value="Room 1" class="input-smallsize">
								</div>
							</td>
						</tr>
						<tr>
							<th>보증금</th>
							<td>
								<div class="flex">
									<input type="text" class="input-xsmallsize">
									<div>
										<span class="span-lineheight">&nbsp;&nbsp;만원</span>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>월세</th>
							<td>
								<div class="flex">
									<input type="text" class="input-xsmallsize">
									<div>
										<span class="span-lineheight">&nbsp;&nbsp;만원</span>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>전용 면적</th>
							<td>
								<div>
									<div id="roomsize-wrap">
										<input type="text" class="input-xsmallsize"><span
											class="span-lineheight">&nbsp;&nbsp;m<sup>2</sup>&nbsp;=&nbsp;&nbsp;
										</span> <input type="text" class="input-xsmallsize"><span
											class="span-lineheight">&nbsp;&nbsp;P</span>
									</div>
								</div>
							</td>
						</tr>
						<tr>

						</tr>
						<tr>
							<th>입주가능일</th>
							<td><input type="date"> <input type="checkbox"
								id="rightnow"> <label for="rightnow">즉시 입주</label></td>
						</tr>
						<tr>
							<th>추가옵션</th>
							<td>
								<div class="flex">
									<div>
										<input type="checkbox" id="parking" name="r" value="two">
										<label for="parking">주차가능</label>
									</div>
									<div>
										<input type="checkbox" id="elevator" name="r" value="two">
										<label for="elevator">엘리베이터</label>
									</div>
									<div class="check-wrap">
										<input type="checkbox" id="pet" name="r" value="two">
										<label for="pet">반려동물</label>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div>
					<div id="roomPlus">
						<button type="button">+ 방 추가</button>
					</div>
				</div>



				<!-- 시설 정보 -->
				<div class="content-sub-title">
					<h2>시설 정보</h2>
				</div>
				<table>
					<tbody>
						<tr>
							<th>냉·난방시설</th>
							<td>
								<div class="flex">
									<div>
										<input type="checkbox" id="fac1"> <label for="fac1">에어컨</label>
									</div>
									<div>
										<input type="checkbox" id="fac2"> <label for="fac2">중앙난방</label>
									</div>
									<div>
										<input type="checkbox" id="fac3"> <label for="fac3">지역난방</label>
									</div>
								</div>

							</td>
						</tr>
						<tr>
							<th>생활시설</th>
							<td>
								<div class="flex">
									<div>
										<input type="checkbox" id="refrigerator"> <label
											for="refrigerator">냉장고</label>
									</div>
									<div>
										<input type="checkbox" id="washer"> <label
											for="washer">세탁기</label>
									</div>
									<div>
										<input type="checkbox" id="gasrange"> <label
											for="gasrange">가스레인지</label>
									</div>
									<div>
										<input type="checkbox" id="induction"> <label
											for="induction">인덕션</label>
									</div>
								</div>
								<div class="flex">
									<div>
										<input type="checkbox" id="microwave"> <label
											for="microwave">전자레인지</label>
									</div>

									<div>
										<input type="checkbox" id="desk"> <label for="desk">책상</label>
									</div>
									<div>
										<input type="checkbox" id="doorlock"> <label
											for="doorlock">도어락</label>
									</div>
									<div>
										<input type="checkbox" id="bed"> <label for="bed">침대</label>
									</div>
								</div>
								<div class="flex">
									<div>
										<input type="checkbox" id="closet"> <label
											for="closet">옷장</label>
									</div>
									<div>
										<input type="checkbox" id="shoes"> <label for="shoes">신발장</label>
									</div>
									<div>
										<input type="checkbox" id="sink"> <label for="sink">씽크대</label>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>보안시설</th>
							<td>
								<div class="flex">
									<div>
										<input type="checkbox" id="interphone"> <label
											for="interphone">인터폰</label>
									</div>
									<div>
										<input type="checkbox" id="windowguard"> <label
											for="windowguard">방범창</label>
									</div>
									<div>
										<input type="checkbox" id="cctv"> <label for="cctv">CCTV</label>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>기타시설</th>
							<td>
								<div class="flex">
									<div>
										<input type="checkbox" id="veranda"> <label
											for="veranda">베란다</label>
									</div>
									<div>
										<input type="checkbox" id="deliverybox"> <label
											for="deliverybox">무인택배함</label>
									</div>
									<div>
										<input type="checkbox" id="firealarm"> <label
											for="firealarm">화재경보기</label>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>


				<!-- 사진 등록 -->
				<div class="content-sub-title">
					<h2>사진 등록</h2>
				</div>
				<table>
					<tbody>
						<tr>
							<td>
								<ul class="ul">
									<li>최소 3장 이상의 사진을 등록해야 하며 최대 15장까지 등록이 가능합니다.</li>
									<li>첫번째 사진이 대표 이미지로 보여지며 순서를 변경 할 수 있습니다.</li>
									<li>매물과 관련없는 이미지, 홍보성 이미지, 워터마크 이미지는 등록하실 수 없습니다.</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<div>
									<div id="files">
										<div>
											<label for="board_file1" style="display: inline;"> 
											<img id="board_file1Img" src="../images/파일첨부.png"	style="width: 70px;">
											</label>
										</div>
										<input id="board_file1" name="board_file1" type="file" style="display: none;">
										<button type="button" onclick="cancelFile('board_file1')" >-	첨부 삭제</button>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>



				<!-- 상세 정보 -->
				<div class="content-sub-title">
					<h2>상세 정보</h2>
				</div>
				<table>
					<tbody>
						<tr>
							<th>제목</th>
							<td>
								<div>
									<input type="text" maxlength="40"
										placeholder="쉐어하우스를 소개할 제목을 작성해주세요. (40글자 이내)">
								</div>
							</td>
						</tr>
						<tr>
							<th>상세설명</th>
							<td>
								<div>
									<textarea
										placeholder="해당 방에 대한 자세한 설명을 입력해주세요.
방 정보, 가격협의내용, 교통 등 자세한 내용을 작성하시면 거래가 성사될 가능성이 높아집니다. 
한글, 영어, 숫자, m2을 제외한 특수문자(괄호포함)등은 임의로 삭제될 수 있습니다.
(950글자 이내)"
										mexlength="950"></textarea>
								</div>
							</td>
						</tr>

					</tbody>
				</table>

				<div id="roomSubmit">
					<button id="submit-button" type="submit" onclick="send()">방내놓기</button>
				</div>
			</form>
		</div>
	</article>

	<!-- Footer -->
	<jsp:include page="../fix/footer.jsp" />

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/jquery.scrolly.min.js"></script>
<script src="../assets/js/browser.min.js"></script>
<script src="../assets/js/breakpoints.min.js"></script>
<script src="../assets/js/util.js"></script>
<script src="../assets/js/main.js"></script>

<!-- 주소찾기 -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function DaumPostcode() {
		new daum.Postcode({
			oncomplete: function (data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
					// 조합된 참고항목을 해당 필드에 넣는다.
					document.getElementById("address3").value = extraAddr;

				} else {
					document.getElementById("address3").value = '';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				/*  document.getElementById('sample6_postcode').value = data.zonecode; */
				document.getElementById("address").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("address2").focus();
			}
		}).open();
	}
	
	
	
	
	
	//파일업로드 썸네일
	$(".files").change(function(e){
         		var file = e.target.files[0];
         		var img = $(this).find("img");
         		var reader = new FileReader();
         		reader.readAsDataURL(file);
         		
    	   		reader.onload = function(e){
    	   			if(e.target.result.indexOf("image") != -1){
    		   			img.attr("src", e.target.result)
    	   			}else{
    	   				img.attr("src", "${pageContext.request.contextPath}/images/no_img.jpg");
    	   			}
    	   		}
    	   	});
	
	
	//파일삭제
	function cancelFile(fileName){
         		$("input#" + fileName).val("");
         		$("img#" + fileName + "Img").attr("src", "../images/파일첨부.png");
         	}
</script>

</html>