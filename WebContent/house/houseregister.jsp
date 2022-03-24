<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML>
<!--
        Tactile by Pixelarity
        pixelarity.com | hello@pixelarity.com
        License: pixelarity.com/license
    -->
<html>
<head>
<title>가치살자 - 방내놓기</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/houseRegister.css" />
</head>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fd5a829552ba5aafe83249b169e62ba9&libraries=services"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<body>
	<!-- Header -->
	<jsp:include page="../fix/header.jsp" />


	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />

	<article id="houseRegister">
		<div class="register-container">
			<div id="register">
				<h1>하우스 등록하기</h1>
				<div class="gradation-div"></div>
				<ul id="register-info">
					<li>방 등록 시 방 정보와 계정정보(가입된 ID, 이름, 연락처 등)가 노출됩니다.</li>
					<li>허위(계약 완료, 중복 등록, 허위 정보 기재) 등록 및 중개매물, 원룸텔, 쉐어하우스 등록 시 서비스
						이용이 제한될 수 있습니다.</li>
				</ul>
			</div>
			<form id="registForm" name="registForm" method="post"
				action="${pageContext.request.contextPath}/house/HouseRegisterOk.ho"
				enctype="multipart/form-data">

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
									<select class="typeSelect" name="houseType">
										<option value="a">아파트</option>
										<option value="d">단독주택</option>
										<option value="v">빌라</option>
										<option value="o">기타</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<div id="address1">
									<input type="text" id="address" class="address"
										autocomplete="off" name="houseAddress">
									<button type="button" onclick="DaumPostcode()" id="findAddress">
										<em class="zbIcon icon-location"></em> <span>주소찾기</span>
									</button>
								</div>
								<div>
									· 정확한 주소를 입력해주세요.<br> · 주소와 단지명 모두 검색이 가능합니다.<br>
								</div>
							</td>
						</tr>
						<tr>
							<th>상세주소</th>
							<td><input type="text" id="address2"
								name="houseAddressDetail" class="address" autocomplete="off">
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
								name="houseLocation" autocomplete="off"></td>
						</tr>
					</tbody>
				</table>
				<input type="hidden" name="latitude"> <input type="hidden"
					name="longitude">

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
									<input type="hidden" name="roomName"
										value="Room${houseNumber}-1" autocomplete="off">
									<div class="input-smallsize">Room${houseNumber}-1</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>성별</th>
							<td>
								<div>
									<input type="radio" id="male" name="roomGender1" value="m"
										class='b'> <label for="male">남성전용</label> <input
										type="radio" id="female" name="roomGender1" value="w"
										class='b'> <label for="female">여성전용</label>
								</div>
							</td>
						</tr>
						<tr>
							<th>타입</th>
							<td>
								<div class="flex">
									<input type="text" class="input-xsmallsize" name="roomType"
										autocomplete="off">
									<div>
										<span class="span-lineheight">&nbsp;&nbsp;인실</span>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>보증금</th>
							<td>
								<div class="flex">
									<input type="text" class="input-xsmallsize" name="roomDeposit"
										autocomplete="off">
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
									<input type="text" class="input-xsmallsize" name="roomMonthly"
										autocomplete="off">
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
										<input type="text" class="input-xsmallsize" id="cal2"
											onkeyup="calculator(2);" name="roomArea" autocomplete="off"><span
											class="span-lineheight">&nbsp;&nbsp;m<sup>2</sup>&nbsp;=&nbsp;&nbsp;
										</span> <input type="text" class="input-xsmallsize" id="cal1"
											onkeyup="calculator(1);" autocomplete="off"><span
											class="span-lineheight">&nbsp;&nbsp;평</span>
									</div>
								</div>
							</td>
						</tr>
						<tr>

						</tr>
						<tr>
							<th>입주가능일</th>
							<td><input type="date" id="startDate" name="roomDate"
								class="c"> <input type="checkbox" id="rightnow"
								name="roomDate"> <label for="rightnow">즉시 입주</label></td>
						</tr>
						<tr>
							<th>사진</th>
							<td>
								<div>
									<div class="filesRooma1">
										<div class="file-wrap">
											<div id="file">
												<label for="room_filea11" style="display: inline;">
													<img id="room_filea11Img" class="roomImg"
													src="${pageContext.request.contextPath}/images/파일첨부.png">
												</label>
											</div>
											<input id="room_filea11" name="room_file1" type="file"
												style="display: none" class="a"
												onchange="imgThumbnail(event);"> <input
												type="button" class="removeImgBtn"
												onclick="cancelFile('room_filea11')" value="첨부 삭제">
										</div>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>

				<div id="roomDetail2"></div>
				<div id="roomDetail3"></div>
				<div id="roomDetail4"></div>
				<div id="roomDetail5"></div>
				<div id="roomDetail6"></div>
				<div id="roomDetail7"></div>
				<div id="roomDetail8"></div>


				<div>
					<div id="roomPlus">
						<button type="button" id="roomPlusBtn">+ 방 추가</button>
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
										<input type="checkbox" id="fac1" name="opAircon" value="1">
										<label for="fac1">에어컨</label>
									</div>
									<div>
										<input type="checkbox" id="fac2" name="opCentralHeat"
											value="1"> <label for="fac2">중앙난방</label>
									</div>
									<div>
										<input type="checkbox" id="fac3" name="opLocalHeat" value="1">
										<label for="fac3">지역난방</label>
									</div>
								</div>

							</td>
						</tr>
						<tr>
							<th>생활시설</th>
							<td>
								<div class="flex">
									<div>
										<input type="checkbox" id="refrigerator" name="opRefrigerator"
											value="1"> <label for="refrigerator">냉장고</label>
									</div>
									<div>
										<input type="checkbox" id="washer" name="opWasher" value="1">
										<label for="washer">세탁기</label>
									</div>
									<div>
										<input type="checkbox" id="gasrange" name="opGasrange"
											value="1"> <label for="gasrange">가스레인지</label>
									</div>
									<div>
										<input type="checkbox" id="induction" name="opInduction"
											value="1"> <label for="induction">인덕션</label>
									</div>
								</div>
								<div class="flex">
									<div>
										<input type="checkbox" id="microwave" name="opMicrowave"
											value="1"> <label for="microwave">전자레인지</label>
									</div>

									<div>
										<input type="checkbox" id="desk" name="opDesk" value="1">
										<label for="desk">책상</label>
									</div>
									<div>
										<input type="checkbox" id="doorlock" name="opDoorlock"
											value="1"> <label for="doorlock">도어락</label>
									</div>
									<div>
										<input type="checkbox" id="bed" name="opBed" value="1">
										<label for="bed">침대</label>
									</div>
								</div>
								<div class="flex">
									<div>
										<input type="checkbox" id="closet" name="opCloset" value="1">
										<label for="closet">옷장</label>
									</div>
									<div>
										<input type="checkbox" id="shoes" name="opShoes" value="1">
										<label for="shoes">신발장</label>
									</div>
									<div>
										<input type="checkbox" id="sink" name="opSink" value="1">
										<label for="sink">싱크대</label>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>보안시설</th>
							<td>
								<div class="flex">
									<div>
										<input type="checkbox" id="interphone" name="opInterphone"
											value="1"> <label for="interphone">인터폰</label>
									</div>
									<div>
										<input type="checkbox" id="windowguard" name="opWindow"
											value="1"> <label for="windowguard">방범창</label>
									</div>
									<div>
										<input type="checkbox" id="cctv" name="opCctv" value="1">
										<label for="cctv">CCTV</label>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>기타시설</th>
							<td>
								<div class="flex">
									<div>
										<input type="checkbox" id="veranda" name="opVeranda" value="1">
										<label for="veranda">베란다</label>
									</div>
									<div>
										<input type="checkbox" id="deliverybox" name="opDelivery"
											value="1"> <label for="deliverybox">무인택배함</label>
									</div>
									<div>
										<input type="checkbox" id="firealarm" name="opFirealarm"
											value="1"> <label for="firealarm">화재경보기</label>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>추가옵션</th>
							<td>
								<div class="flex">
									<div>
										<input type="checkbox" id="parking" name="houseParking"
											value="1"> <label for="parking">주차가능</label>
									</div>
									<div>
										<input type="checkbox" id="elevator" name="houseElevator"
											value="1"> <label for="elevator">엘리베이터</label>
									</div>
									<div class="check-wrap">
										<input type="checkbox" id="pet" name="housePet" value="1">
										<label for="pet">반려동물</label>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>


				<!-- 사진 등록 -->
				<div class="content-sub-title">
					<h2>방 구조</h2>
				</div>
				<table>
					<tbody>
						<tr>
							<td>
								<ul class="ul">
									<li>방 구조 사진을 등록해주세요.</li>
									<li>매물과 관련없는 이미지, 홍보성 이미지, 워터마크 이미지는 등록하실 수 없습니다.</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td>
								<div>
									<div class="filesHouse" id="1">
										<div class="file-wrap">
											<div id="file">
												<label for="house_file" style="display: inline;"> <img
													id="house_filebImg" class="roomImg"
													src="${pageContext.request.contextPath}/images/파일첨부.png">
												</label>
											</div>
											<input id="house_file" name="house_file" type="file"
												style="display: none" onchange="imgThumbnail2(event)">
											<input type="button" class="removeImgBtn"
												onclick="cancelFile2('house_file')" value="첨부 삭제">
										</div>
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
										placeholder="쉐어하우스를 소개할 제목을 작성해주세요. (40글자 이내)"
										name="houseContent" autocomplete="off">
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
										maxlength="950" name="houseMessage"></textarea>
								</div>
							</td>
						</tr>

					</tbody>
				</table>

				<div id="roomSubmit">
					<button id="submit-button" type="button" onclick="send()">방내놓기</button>
				</div>
			</form>
		</div>
	</article>







	<!-- 미디어쿼리용 페이지 -->
	<div id="media">
		<ul id="media-wrap">
			<li>PC버전으로만 이용하실 수 있습니다.</li>
			<li><a href="${pageContext.request.contextPath}/main/main.jsp">메인으로 이동</a></li>
		</ul>
	</div>

	<!-- Footer -->
	<jsp:include page="../fix/footer.jsp" />

</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	var contextPath = "${pageContext.request.contextPath}";
	var houseNumber = "${houseNumber}";
</script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/houseRegister.js"></script>
<!-- 주소로 좌표 가져오기 -->
<script>
	$("input#address2").focus(function() {
		makeCoordinate();
	})

	//주소-좌표 변환 객체를 생성합니다

	function makeCoordinate() {
		var geocoder = new kakao.maps.services.Geocoder();
		var address = $("#address").val();

		//주소로 좌표를 검색합니다
		geocoder.addressSearch(address, function(result, status) {

			// 정상적으로 검색이 완료됐으면 
			if (status === kakao.maps.services.Status.OK) {

				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

				$("input[name='latitude']").val(result[0].y);
				$("input[name='longitude']").val(result[0].x);


			}
		});

	}
</script>




<!-- 주소찾기 -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function DaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
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
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
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
</script>




</html>