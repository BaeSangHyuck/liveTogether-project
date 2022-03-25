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
<title>가치살자 - 하우스 정보 수정</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/houseRegisterUpdate.css" />
</head>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fd5a829552ba5aafe83249b169e62ba9&libraries=services"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<body>
	<c:set var="house" value="${house}" />
	<c:set var="room" value="${room}" />
	<!-- Header -->
	<jsp:include page="../fix/header.jsp" />


	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />

	<article id="houseRegister">
		<div class="register-container">
			<div id="register">
				<h1>하우스 정보 수정하기</h1>
				<div class="gradation-div"></div>
				<%-- <img src="${pageContext.request.contextPath}/images/roombanner.png"> --%>
				<ul id="register-info">
					<li>하우스 정보를 수정 할 수 있습니다. 기존 정보와 달라진 부분을 입력해주세요.</li>
					<li>방 등록 시 방 정보와 계정정보(가입된 ID, 이름, 연락처 등)가 노출됩니다.</li>
					<li>허위(계약 완료, 중복 등록, 허위 정보 기재) 등록 및 중개매물, 원룸텔, 쉐어하우스 등록 시 서비스
						이용이 제한될 수 있습니다.</li>
				</ul>
			</div>
			<form id="registForm" name="registForm" method="post"
				action="${pageContext.request.contextPath}/house/HouseRegisterUpdateOk.ho"
				enctype="multipart/form-data">

				<!-- 위치정보 -->
				<div class="content-sub-title">
					<h2>위치 정보</h2>
				</div>
				<table>
					<tbody>
						<tr>
							<th>건물형태</th>
							<td><c:choose>
									<c:when test="${house.getHouseType() eq 'a'}">
										<div>아파트</div>
									</c:when>
									<c:when test="${house.getHouseType() eq 'v'}">
										<div>빌라</div>
									</c:when>
									<c:when test="${house.getHouseType() eq 'd'}">
										<div>단독주택</div>
									</c:when>
									<c:otherwise>
										<div>기타</div>
									</c:otherwise>
								</c:choose></td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<div id="address1">${house.getHouseAddress()}</div>
							</td>
						</tr>
						<tr>
							<th>상세주소</th>
							<td><div>${house.getHouseAddressDetail()}</div></td>
						</tr>
						<tr>
							<th>지역</th>
							<td><div>${house.getHouseLocation()}</div></td>
						</tr>
					</tbody>
				</table>
					<input type="hidden" name="houseType" value="${house.getHouseType()}">
					<input type="hidden" id="address" name="houseAddress" value="${house.getHouseAddress()}">
					<input type="hidden" id="address2" name="houseAddressDetail" value="${house.getHouseAddressDetail()}">
					<input type="hidden" name="houseLocation" value="${house.getHouseLocation()}">
					<input type="hidden" name="latitude" value="${house.getLatitude()}">
					<input type="hidden"name="longitude" value="${house.getLongitude()}">

				<!-- 방정보 -->
				<div class="content-sub-title">
					<h2>방 정보</h2>
				</div>


				<c:forEach var="room" items="${room}" varStatus="status">
					<table>
						<tbody>
							<tr>
								<th>방이름</th>
								<td>
									<div>
										<div class="input-smallsize">${room.getRoomName()}</div>
										<input type="hidden" name="roomName" value="${room.getRoomName()}" autocomplete="off">
									</div>
								</td>
							</tr>
							<tr>
								<th>성별</th>
								<td>
									<div>
										<c:choose>
											<c:when test="${room.getRoomGender() eq 'm'}">
												<input type="radio" id="male${status.count}" class='b' name="roomGender${status.count}" value="m"
													checked>
												<label for="male${status.count}">남성전용</label>
												<input type="radio" id="female${status.count}" class='b' name="roomGender${status.count}" value="w">
												<label for="female${status.count}">여성전용</label>
											</c:when>
											<c:when test="${room.getRoomGender() eq 'w'}">
												<input type="radio" id="male${status.count}" class='b' name="roomGender${status.count}" value="m">
												<label for="male${status.count}">남성전용</label>
												<input type="radio" id="female${status.count}" class='b' name="roomGender${status.count}" value="w"
													checked>
												<label for="female${status.count}">여성전용</label>
											</c:when>
										</c:choose>
									</div>
								</td>
							</tr>
							<tr>
								<th>타입</th>
								<td>
									<div class="flex">
										<input type="text" class="input-xsmallsize" name="roomType"
											autocomplete="off" value="${room.getRoomType()}">
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
											autocomplete="off" value="${room.getRoomDeposit()}">
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
											autocomplete="off" value="${room.getRoomMonthly()}">
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
										<div>${room.getRoomArea()}&nbsp;&nbsp;m<sup>2</div>
											<input type="hidden" class="input-xsmallsize" id="cal2"
												onkeyup="calculator(2);" name="roomArea" autocomplete="off"
												value="${room.getRoomArea()}">
										</div>
									</div>
								</td>
							</tr>
							<tr>
							</tr>
							<tr>
								<th>입주가능일</th>
								<td>
									<div>${room.getRoomDate()}</div>
									<input type="date" id="startDate" class="c" name="roomDate" value="${room.getRoomDate()}"> 
									<input	type="checkbox" id="rightnow" name="roomDate"> <label
									for="rightnow">즉시 입주</label>
								</td>
							</tr>
							<tr>
								<th>사진</th>
								<td>
									<div>
										<div class="filesRooma1">
											<div class="file-wrap">
												<div id="file">
													<label for="room_filea1${status.count}" style="display: inline;">
														<img id="room_filea11Img" class="roomImg"
														src="${pageContext.request.contextPath}/images/파일첨부.png">
													</label>
												</div>
												<input id="room_filea1${status.count}" name="room_file${status.count}" type="file"
													style="display: none" class="a"
													onchange="imgThumbnail(event);"> <input
													type="button" class="removeImgBtn"
													onclick="cancelFile('room_filea1${status.count}')" value="첨부 삭제">

											</div>
											<div class="redFont">※ 방 사진을 반드시 재첨부 해주셔야 합니다.</div>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</c:forEach>





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
										<c:choose>
											<c:when test="${house.getOpAircon() eq '1'}">
												<input type="checkbox" id="fac1" name="opAircon" value="1"
													checked>
												<label for="fac1">에어컨</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="fac1" name="opAircon" value="1">
												<label for="fac1">에어컨</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpCentralHeat() eq '1'}">
												<input type="checkbox" id="fac2" name="opCentralHeat"
													value="1" checked>
												<label for="fac2">중앙난방</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="fac2" name="opCentralHeat"
													value="1">
												<label for="fac2">중앙난방</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpLocalHeat() eq '1'}">
												<input type="checkbox" id="fac3" name="opLocalHeat"
													value="1" checked>
												<label for="fac3">지역난방</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="fac3" name="opLocalHeat"
													value="1">
												<label for="fac3">지역난방</label>
											</c:otherwise>
										</c:choose>
									</div>
								</div>

							</td>
						</tr>
						<tr>
							<th>생활시설</th>
							<td>
								<div class="flex">
									<div>
										<c:choose>
											<c:when test="${house.getOpRefrigerator() eq '1'}">
												<input type="checkbox" id="refrigerator"
													name="opRefrigerator" value="1" checked>
												<label for="refrigerator">냉장고</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="refrigerator"
													name="opRefrigerator" value="1">
												<label for="refrigerator">냉장고</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpWasher() eq '1'}">
												<input type="checkbox" id="washer" name="opWasher" value="1"
													checked>
												<label for="washer">세탁기</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="washer" name="opWasher" value="1">
												<label for="washer">세탁기</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpGasrange() eq '1'}">
												<input type="checkbox" id="gasrange" name="opGasrange"
													value="1" checked>
												<label for="gasrange">가스레인지</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="gasrange" name="opGasrange"
													value="1">
												<label for="gasrange">가스레인지</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpInduction() eq '1'}">
												<input type="checkbox" id="induction" name="opInduction"
													value="1" checked>
												<label for="induction">인덕션</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="induction" name="opInduction"
													value="1">
												<label for="induction">인덕션</label>
											</c:otherwise>
										</c:choose>

									</div>
								</div>
								<div class="flex">
									<div>
										<c:choose>
											<c:when test="${house.getOpMicrowave() eq '1'}">
												<input type="checkbox" id="microwave" name="opMicrowave"
													value="1" checked>
												<label for="microwave">전자레인지</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="microwave" name="opMicrowave"
													value="1">
												<label for="microwave">전자레인지</label>
											</c:otherwise>
										</c:choose>
									</div>

									<div>
										<c:choose>
											<c:when test="${house.getOpDesk() eq '1'}">
												<input type="checkbox" id="desk" name="opDesk" value="1">
												<label for="desk" checked>책상</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="desk" name="opDesk" value="1">
												<label for="desk">책상</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpDoorlock() eq '1'}">
												<input type="checkbox" id="doorlock" name="opDoorlock"
													value="1" checked>
												<label for="doorlock">도어락</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="doorlock" name="opDoorlock"
													value="1">
												<label for="doorlock">도어락</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpBed() eq '1'}">
												<input type="checkbox" id="bed" name="opBed" value="1"
													checked>
												<label for="bed">침대</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="bed" name="opBed" value="1">
												<label for="bed">침대</label>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="flex">
									<div>
										<c:choose>
											<c:when test="${house.getOpCloset() eq '1'}">
												<input type="checkbox" id="closet" name="opCloset" value="1"
													checked>
												<label for="closet">옷장</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="closet" name="opCloset" value="1">
												<label for="closet">옷장</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpShoes() eq '1'}">
												<input type="checkbox" id="shoes" name="opShoes" value="1"
													checked>
												<label for="shoes">신발장</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="shoes" name="opShoes" value="1">
												<label for="shoes">신발장</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpSink() eq '1'}">
												<input type="checkbox" id="sink" name="opSink" value="1"
													checked>
												<label for="sink">싱크대</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="sink" name="opSink" value="1">
												<label for="sink">싱크대</label>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>보안시설</th>
							<td>
								<div class="flex">
									<div>
										<c:choose>
											<c:when test="${house.getOpInterphone() eq '1'}">
												<input type="checkbox" id="interphone" name="opInterphone"
													value="1" checked>
												<label for="interphone">인터폰</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="interphone" name="opInterphone"
													value="1">
												<label for="interphone">인터폰</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpWindow() eq '1'}">
												<input type="checkbox" id="windowguard" name="opWindow"
													value="1" checked>
												<label for="windowguard">방범창</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="windowguard" name="opWindow"
													value="1">
												<label for="windowguard">방범창</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpCctv() eq '1'}">
												<input type="checkbox" id="cctv" name="opCctv" value="1"
													checked>
												<label for="cctv">CCTV</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="cctv" name="opCctv" value="1">
												<label for="cctv">CCTV</label>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>기타시설</th>
							<td>
								<div class="flex">
									<div>
										<c:choose>
											<c:when test="${house.getOpVeranda() eq '1'}">
												<input type="checkbox" id="veranda" name="opVeranda"
													value="1" checked>
												<label for="veranda">베란다</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="veranda" name="opVeranda"
													value="1">
												<label for="veranda">베란다</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpDelivery() eq '1'}">
												<input type="checkbox" id="deliverybox" name="opDelivery"
													value="1" checked>
												<label for="deliverybox">무인택배함</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="deliverybox" name="opDelivery"
													value="1">
												<label for="deliverybox">무인택배함</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getOpFirealarm() eq '1'}">
												<input type="checkbox" id="firealarm" name="opFirealarm"
													value="1" checked>
												<label for="firealarm">화재경보기</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="firealarm" name="opFirealarm"
													value="1">
												<label for="firealarm">화재경보기</label>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>추가옵션</th>
							<td>
								<div class="flex">
									<div>
										<c:choose>
											<c:when test="${house.getHouseParking() eq '1'}">
												<input type="checkbox" id="parking" name="houseParking"
													value="1" checked>
												<label for="parking">주차가능</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="parking" name="houseParking"
													value="1">
												<label for="parking">주차가능</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div>
										<c:choose>
											<c:when test="${house.getHouseElevator() eq '1'}">
												<input type="checkbox" id="elevator" name="houseElevator"
													value="1" checked>
												<label for="elevator">엘리베이터</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="elevator" name="houseElevator"
													value="1">
												<label for="elevator">엘리베이터</label>
											</c:otherwise>
										</c:choose>
									</div>
									<div class="check-wrap">
										<c:choose>
											<c:when test="${house.getHousePet() eq '1'}">
												<input type="checkbox" id="pet" name="housePet" value="1">
												<label for="pet" checked>반려동물</label>
											</c:when>
											<c:otherwise>
												<input type="checkbox" id="pet" name="housePet" value="1">
												<label for="pet">반려동물</label>
											</c:otherwise>
										</c:choose>
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
									<li class="redFont">※ 방 구조 사진을 반드시 재첨부 해주셔야 합니다.</li>
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
										name="houseContent" autocomplete="off"
										value="${house.getHouseContent()}">
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
										maxlength="950" name="houseMessage">${house.getHouseMessage()}</textarea>
								</div>
							</td>
						</tr>

					</tbody>
				</table>

				<div id="roomSubmit">
					<button id="submit-button" type="button" onclick="send()">수정하기</button>
				</div>
				<input type="hidden" name="houseNumber" value="${house.getHouseNumber()}">
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
	src="${pageContext.request.contextPath}/assets/js/houseRegisterUpdate.js"></script>
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
</html>