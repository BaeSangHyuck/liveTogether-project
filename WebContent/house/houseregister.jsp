<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/header.css" />
<title>가치살자-방등록</title>
<link rel="stylesheet" href="../assets/css/houseRegister.css" />
<style>
body{
background-color: white;
}

</style>
</head>
<body>
<!-- Header -->

	<jsp:include page="../fix/header.jsp" />
	
	<!-- Aside -->
	<jsp:include page="../fix/aside.jsp" />
<div id="houseRegister">

		<div>
		<div class="content">
		<div class="add-title">
			<h3>
			<img class="img" src="../images/roombanner.png">
			</h3>
			<p>
                    · 일반적인 형태의 주거용 전월세 매물만 내놓을 수 있습니다.<br>
                    &nbsp; 1) 한 번의 방등록으로 반경 5km이내 모든 중개사무소에 방 정보가 노출되어 중개가 시작됩니다.<br>
                    &nbsp; 2) 내놓은 방은 검증된 공인중개사가 1,900만 직방 이용자들에게 중개해 드립니다.<br>
                    &nbsp; 3) 방을 내놓는 데에는 별도의 비용이 들지 않습니다. <span class="fc-red1">(거래 성사 시 법정 중개보수가 발생합니다)</span><br>
                    · 등록된 매물은 30일 후에 중개가 종료되며, 중개사에게 방 내놓기·관리 메뉴에서 재등록이 가능합니다.<br>
                    · 내놓은 방의 정보가 정확하지 않거나 가이드에 맞지 않는 경우, 중개가 종료되고 정보수정을 요청드릴 수 있습니다.<br>
                    · 중개사무소는 개인 회원으로 중개사무소에 방내놓기 등록을 할 수 없고, 중개사무소 회원으로 가입해야 합니다.</a><br>
                    <!-- · 아래와 같은 매물은 <span class="fc-red1">등록이 불가</span>하며, 중개가 종료될 수 있습니다.<br>
                    <span class="fc-red1">&nbsp;&nbsp;(매매, 분양, 장기전세 / 고시텔, 원룸텔, 셰어하우스, 하숙, 게스트하우스, 숙박업소 등)</span> -->
                </p>
		</div>
		<h4 style="display : inline-block">위치정보</h4>
		<div>
	<table class="add-table">
                <tbody><tr>
                    <th>주소</th>
                    <td colspan="3">
                        <span class="twitter-typeahead" style="position: relative; display: inline-block; direction: ltr;"><input type="text" class="text" id="address" style="width:360px"></span>
                        <button type="button" class="btn-locatino-check" onclick="DaumPostcode()"><em class="zbIcon icon-location"></em> <span>주소찾기</span></button>
                        <div class="i-txt">
                            · 주소와 단지명 모두 검색이 가능합니다.<br>
                            · 주소 입력 시에는 동/읍/면 으로 검색해 주세요. 예) 자곡동, 동읍면, 신월읍<br>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>상세주소</th>
                    <td colspan="3" style="padding-top: 8px">
                        <input type="text" class="text" style="width:360px; margin-right:10px;" id="address2" name="address2">
                       <!--  <button type="button" class="btn-locatino-check"><em class="zbIcon icon-location"></em> <span>위치 확인하기</span></button> -->
                        <div class="item-map">
                            <div id="map"></div>
                            <div class="i-status" id="agent_bar" style="display:none;">방 주변에 <span id="agent_count">32</span>곳의 중개사무소가 있습니다 <button type="button" class="btn-map-show">[목록보기]</button></div>
                            <div class="i-list">
                                <ul id="list-agent"></ul>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr id="address_detail">
                    <th>지역</th>
                    <td colspan="3"><input type="text" id="address3" class="text max" name="local4"></td>
                </tr>
                <!-- <tr id="danji_detail" style="display:none">
                    <th>동</th>
                    <td>
                        <select id="area_building_id" name="area_building_id"></select>
                    </td>
                    <th>호수</th>
                    <td><input type="text" class="text max" name="address3"></td>
                </tr> -->
            </tbody></table>
            
            <!-- 주소찾기 -->
           <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script>
    			function DaumPostcode() {
        		new daum.Postcode({
            	oncomplete: function(data) {
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
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
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
            <!-- 주소찾기 끝 -->
            
		</div>
		<h4 class="imageH4">사진 등록</h4>
		<div>
		<p class="item-txt">
                    · 사진 최소 5장 최대 15장 까지 등록할 수 있습니다.<br>
                    · 아래에 등록 버튼을 클릭하여 사진을 선택하거나, 마우스로 사진을 끌어와서 등록할 수도 있습니다.<br>
                    · 한꺼번에 여러 장 등록도 가능합니다.<br>
                    <span class="fc-red1">· 직접 찍은 실제 방 사진의 원본을 등록해야 합니다.</span><br>
                    <span class="fc-red1">· 워터마크, 날짜, 전화번호 등이 포함된 사진이나 방과 관련없는 사진을 등록할 경우 중개가 종료될 수 있습니다.</span>
                </p>
        
        <!-- 이미지 -->
                  <div class="item-photo" id="add-photo-box">
                    <ul class="ui-sortable">
                        <li id="li1" class="ui-sortable-handle">
                            <span class="i-count">1</span>
                            <button class="i-btn" type="button" id="add_image1" value="true" data-index="0" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht56umfcljt9rraf1bqb3_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht56umfcljt9rraf1bqb3" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li2" class="ui-sortable-handle">
                            <span class="i-count">2</span>
                            <button class="i-btn" type="button" id="add_image2" value="true" data-index="1" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht57k3k2381m5l1dqo8jo6_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht57k3k2381m5l1dqo8jo6" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li3" class="ui-sortable-handle">
                            <span class="i-count">3</span>
                            <button class="i-btn" type="button" id="add_image3" value="true" data-index="2" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht581rbvhct1rp21ie2ab59_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht581rbvhct1rp21ie2ab59" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li4" class="ui-sortable-handle">
                            <span class="i-count">4</span>
                            <button class="i-btn" type="button" id="add_image4" data-index="3" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht58mt31n61tch1qegqdhc_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht58mt31n61tch1qegqdhc" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li5" class="ui-sortable-handle">
                            <span class="i-count">5</span>
                            <button class="i-btn" type="button" id="add_image5" data-index="4" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht5912nlfnggbd8i4ph7f_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5912nlfnggbd8i4ph7f" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li6" class="ui-sortable-handle">
                            <span class="i-count">6</span>
                            <button class="i-btn" type="button" id="add_image6" data-index="5" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht591t7cduqkcc1beivjdi_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht591t7cduqkcc1beivjdi" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li7" class="ui-sortable-handle">
                            <span class="i-count">7</span>
                            <button class="i-btn" type="button" id="add_image7" data-index="6" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht5a1c6j1ih219n61hsdgsjl_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5a1c6j1ih219n61hsdgsjl" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li8" class="ui-sortable-handle">
                            <span class="i-count">8</span>
                            <button class="i-btn" type="button" id="add_image8" data-index="7" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht5a2qirb611ja1ac61agko_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5a2qirb611ja1ac61agko" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li9" class="ui-sortable-handle">
                            <span class="i-count">9</span>
                            <button class="i-btn" type="button" id="add_image9" data-index="8" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht5b1qck3s8244hge190fr_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5b1qck3s8244hge190fr" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li10" class="ui-sortable-handle">
                            <span class="i-count">10</span>
                            <button class="i-btn" type="button" id="add_image10" data-index="9" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht5b80l2rr1stg1ejgs0eu_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5b80l2rr1stg1ejgs0eu" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li11" class="ui-sortable-handle">
                            <span class="i-count">11</span>
                            <button class="i-btn" type="button" id="add_image11" data-index="10" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht5cafo1f291kld1aan1dpr11_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5cafo1f291kld1aan1dpr11" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li12" class="ui-sortable-handle">
                            <span class="i-count">12</span>
                            <button class="i-btn" type="button" id="add_image12" data-index="11" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht5c7cdejb1sk64db9i614_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5c7cdejb1sk64db9i614" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                         <div id="html5_1ft8hht5cafo1f291kld1aan1dpr11_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5cafo1f291kld1aan1dpr11" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li13" class="ui-sortable-handle">
                            <span class="i-count">13</span>
                            <button class="i-btn" type="button" id="add_image12" data-index="11" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht5c7cdejb1sk64db9i614_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5c7cdejb1sk64db9i614" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                         <div id="html5_1ft8hht5cafo1f291kld1aan1dpr11_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5cafo1f291kld1aan1dpr11" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li14" class="ui-sortable-handle">
                            <span class="i-count">14</span>
                            <button class="i-btn" type="button" id="add_image12" data-index="11" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht5c7cdejb1sk64db9i614_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5c7cdejb1sk64db9i614" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                         <div id="html5_1ft8hht5cafo1f291kld1aan1dpr11_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5cafo1f291kld1aan1dpr11" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                        <li id="li15" class="ui-sortable-handle">
                            <span class="i-count">15</span>
                            <button class="i-btn" type="button" id="add_image12" data-index="11" style="z-index: 1;">+등록</button>
                        <div id="html5_1ft8hht5c7cdejb1sk64db9i614_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 28px; left: 33px; width: 41px; height: 29px; overflow: hidden; z-index: 0;"><input id="html5_1ft8hht5c7cdejb1sk64db9i614" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept="image/jpeg,image/png"></div></li>
                    </ul>
                </div>
                          <!-- 이미지 끝 -->
                
                
		</div>
		<h4 class="imageH4">상세정보</h4>
		<!-- 테이블 시작 -->
		<table class="add-table">
                <tbody><tr>
                    <th>보증금</th>
                    <td>
                        <input type="text" class="text" name="deposit" onkeydown="return number_validate1(event);"> 만원
                        <span class="fc-red1"><br>※무보증일 경우, 한 달 월세를 입력하세요</span>
                    </td>
                </tr>
                <tr>
                    <th>월세</th>
                    <td>
                        <input type="text" class="text" name="rent" onkeydown="return number_validate1(event);"> 만원
                        <span class="fc-red1"><br>※전세일 경우, 0을 입력하세요</span>
                    </td>
                </tr>
                <tr>
                    <th>방구조</th>
                    <td>
                        <select style="width:180px; height: 25px;" name="room_type">
                            <option value=""">선택하세요</option>
                            <option value="01">오픈형 원룸 (방1)</option>
                            <option value="02">분리형 원룸 (방1, 거실1)</option>
                            <option value="03">복층형 원룸</option>
                            <option value="04">투룸 (방2, 거실1)</option>
                            <option value="05">쓰리룸+</option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                    <th>성별</th>
                    <td class="i-options">
                        <label><input type="checkbox" name="room_options" value="01" class="checkBox"> 남자</label>
                        <label><input type="checkbox" name="room_options" value="02" class="checkBox"> 여자</label>
                        <label><input type="checkbox" name="room_options" value="03" class="checkBox"> 공용</label>
                    </td>
                </tr>
                
                
                <tr>
                    <th>관리비</th>
                    <td>
                        <input type="text" class="text" name="fee" onkeydown="return number_validate2(event);"> 만원
                        &nbsp;&nbsp;&nbsp;<br>
                        <label><input type="checkbox" id="fee_none" name="fee_none">관리비 없음</label>
                        <p class="i-gray">
                            <strong style="margin-left: 5px;">관리비 포함 항목</strong>
                            <label><input name="fee_inc" type="checkbox" value="01" class="checkBox"> 전기세</label>
                            <label><input name="fee_inc" type="checkbox" value="02" class="checkBox"> 가스</label>
                            <label><input name="fee_inc" type="checkbox" value="03" class="checkBox"> 수도</label>
                            <label><input name="fee_inc" type="checkbox" value="04" class="checkBox"> 인터넷</label>
                            <label><input name="fee_inc" type="checkbox" value="05" class="checkBox"> TV</label>
                        </p>
                    </td>
                </tr>
                <tr>
                    <th>크기</th>
                    <td>
                        <div class="mb-5">전용면적 : <input type="text" class="textMin" name="size_m2" onkeydown="return number_validate2(event);"> m<sup>2</sup>  = <input type="text" class="textMin" name="size" onkeydown="return number_validate2(event);"> P</div>
                        <span class="mb-5" id="contract_size">
                            계약면적 : <input type="text" class="textMin" name="size_contract_m2" onkeydown="return number_validate2(event);"> m<sup>2</sup> = <input type="text" class="textMin" name="size_contract" onkeydown="return number_validate2(event);"> P
                        </span>
                        <span class="fc-red1"><br>※한 단위만 입력하면 자동으로 전환됩니다</span>
                    </td>
                </tr>
                <tr>
                    <th>층수</th>
                    <td class="floors">
                        건물 층 수:
                        <select name="building_floor" style="height: 24px;" class="floor">
                            <option value="">선택하세요</option>
                        <option value="1">1층</option><option value="2">2층</option><option value="3">3층</option><option value="4">4층</option><option value="5">5층</option><option value="6">6층</option><option value="7">7층</option><option value="8">8층</option><option value="9">9층</option><option value="10">10층</option><option value="11">11층</option><option value="12">12층</option><option value="13">13층</option><option value="14">14층</option><option value="15">15층</option><option value="16">16층</option><option value="17">17층</option><option value="18">18층</option><option value="19">19층</option><option value="20">20층</option><option value="21">21층</option><option value="22">22층</option><option value="23">23층</option><option value="24">24층</option><option value="25">25층</option><option value="26">26층</option><option value="27">27층</option><option value="28">28층</option><option value="29">29층</option><option value="30">30층</option><option value="31">31층</option><option value="32">32층</option><option value="33">33층</option><option value="34">34층</option><option value="35">35층</option><option value="36">36층</option><option value="37">37층</option><option value="38">38층</option><option value="39">39층</option><option value="40">40층</option><option value="41">41층</option><option value="42">42층</option><option value="43">43층</option><option value="44">44층</option><option value="45">45층</option><option value="46">46층</option><option value="47">47층</option><option value="48">48층</option><option value="49">49층</option><option value="50">50층</option><option value="51">51층</option><option value="52">52층</option><option value="53">53층</option><option value="54">54층</option><option value="55">55층</option><option value="56">56층</option><option value="57">57층</option><option value="58">58층</option><option value="59">59층</option><option value="60">60층</option><option value="61">61층</option><option value="62">62층</option><option value="63">63층</option><option value="64">64층</option><option value="65">65층</option><option value="66">66층</option><option value="67">67층</option><option value="68">68층</option><option value="69">69층</option><option value="70">70층</option><option value="71">71층</option><option value="72">72층</option><option value="73">73층</option><option value="74">74층</option><option value="75">75층</option><option value="76">76층</option><option value="77">77층</option><option value="78">78층</option><option value="79">79층</option><option value="80">80층</option></select>
                        <br>
                        해당 층 :
                        <select name="room_floor" style="height: 24px;" class="floor">
                            <option value="">선택하세요</option>
                            <option value="반지하">반지하</option>
                            <option value="옥탑방">옥탑방</option>
                        <option value="1">1층</option><option value="2">2층</option><option value="3">3층</option><option value="4">4층</option><option value="5">5층</option><option value="6">6층</option><option value="7">7층</option><option value="8">8층</option><option value="9">9층</option><option value="10">10층</option><option value="11">11층</option><option value="12">12층</option><option value="13">13층</option><option value="14">14층</option><option value="15">15층</option><option value="16">16층</option><option value="17">17층</option><option value="18">18층</option><option value="19">19층</option><option value="20">20층</option><option value="21">21층</option><option value="22">22층</option><option value="23">23층</option><option value="24">24층</option><option value="25">25층</option><option value="26">26층</option><option value="27">27층</option><option value="28">28층</option><option value="29">29층</option><option value="30">30층</option><option value="31">31층</option><option value="32">32층</option><option value="33">33층</option><option value="34">34층</option><option value="35">35층</option><option value="36">36층</option><option value="37">37층</option><option value="38">38층</option><option value="39">39층</option><option value="40">40층</option><option value="41">41층</option><option value="42">42층</option><option value="43">43층</option><option value="44">44층</option><option value="45">45층</option><option value="46">46층</option><option value="47">47층</option><option value="48">48층</option><option value="49">49층</option><option value="50">50층</option><option value="51">51층</option><option value="52">52층</option><option value="53">53층</option><option value="54">54층</option><option value="55">55층</option><option value="56">56층</option><option value="57">57층</option><option value="58">58층</option><option value="59">59층</option><option value="60">60층</option><option value="61">61층</option><option value="62">62층</option><option value="63">63층</option><option value="64">64층</option><option value="65">65층</option><option value="66">66층</option><option value="67">67층</option><option value="68">68층</option><option value="69">69층</option><option value="70">70층</option><option value="71">71층</option><option value="72">72층</option><option value="73">73층</option><option value="74">74층</option><option value="75">75층</option><option value="76">76층</option><option value="77">77층</option><option value="78">78층</option><option value="79">79층</option><option value="80">80층</option></select>
                    </td>
                </tr>
                <tr>
                    <th>방향</th>
                    <td>
                        <select name="room_direction" style="height: 24px;">
                            <option value="">선택하세요</option>
                            <option value="E">동향</option>
                            <option value="W">서향</option>
                            <option value="S">남향</option>
                            <option value="N">북향</option>
                            <option value="SE">남동향</option>
                            <option value="SW">남서향</option>
                            <option value="NE">북동향</option>
                            <option value="NW">북서향</option>
                            <option value="-">확인필요</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>옵션</th>
                    <td class="i1-options ">
                        <label><input type="checkbox" name="room_options" value="01" class="room_options"> 에어컨</label>
                        <label><input type="checkbox" name="room_options" value="02" class="room_options"> 냉장고</label>
                        <label><input type="checkbox" name="room_options" value="03" class="room_options"> 세탁기</label>
                        <label><input type="checkbox" name="room_options" value="04" class="room_options"> 가스레인지</label>
                        <label><input type="checkbox" name="room_options" value="05" class="room_options"> 인덕션</label>
                        <label><input type="checkbox" name="room_options" value="06" class="room_options"> 전자레인지</label>
                        <label><input type="checkbox" name="room_options" value="07" class="room_options"> 책상</label>
                        <label><input type="checkbox" name="room_options" value="08" class="room_options"> 도어락</label>
                        <label><input type="checkbox" name="room_options" value="09" class="room_options"> 침대</label>
                        <label><input type="checkbox" name="room_options" value="10" class="room_options"> 옷장</label>
                        <label><input type="checkbox" name="room_options" value="11" class="room_options"> 신발장</label>
                        <label><input type="checkbox" name="room_options" value="12" class="room_options"> 싱크대</label>
                    </td>
                </tr>
                <tr>
                    <th>전세 대출</th>
                    <td>
                        <label> <input type="radio" name="loan" value="true" class="checkBox"> 가능</label>
                        <label><input type="radio" name="loan" value="false" class="checkBox"> 불가능</label>
                        <label><input type="radio" name="loan" value="-"  class="checkBox"> 확인필요</label>
                    </td>
                </tr>
                <tr>
                    <th>반려동물</th>
                    <td>
                        <label><input type="radio" name="pets" value="yes"  class="checkBox"> 가능</label>
                        <label><input type="radio" name="pets" value="no"  class="checkBox"> 불가능</label>
                       <!--  <label><input type="radio" name="pets" value="catonly"  class="checkBox"> 고양이만</label> -->
                        <label><input type="radio" name="pets" value="-"  class="checkBox"> 확인필요</label>
                    </td>
                </tr>
                <tr>
                    <th>주차</th>
                    <td class="has-col">
                        <label class="car"><input type="radio" name="parking" value="가능"  class="checkBox"> 가능</label>
                        <label class="car"><input type="radio" name="parking" value="불가능"  class="checkBox"> 없음</label>
                        <div class="i-col">
                            <strong>엘리베이터</strong>
                            <label><input type="radio" name="building_elevator" value="true" class="park"> 있음</label>
                            <label><input type="radio" name="building_elevator" value="false" class="park"> 없음</label>
                        </div>
                    </td>
                </tr>
                <tr></tr>
                <tr>
                    <th>입주가능일</th>
                    <td>
                        <input type="text" class="text max" name="movein_date">
                    </td>
                </tr>
                <tr>
                    <th>제목</th>
                    <td>
                        <input type="text" class="text max" name="title">
                    </td>
                </tr>
                <tr>
                    <th>상세설명</th>
                    <td>
                        <textarea name="description" class="description" placeholder="해당 방에 대한 특징과 소개를 최소 50자 이상 입력해야 합니다.
방의 위치와 교통, 주변 편의시설, 방의 특징과 장점, 보안시설, 옵션, 주차, 전체적인
방의 느낌 등을 작성해 주세요.      

다른 방에 대한 설명, 연락처, 홍보 메시지 등 해당 방과 관련없는 내용을 입력하거나 
해당 방에 대한 설명이 부적절할 경우 중개가 종료될 수 있습니다.
                                  "></textarea>
                    </td>
                </tr>
                <tr id="to_agent_memo">
                    <th>중개사에게<br>남기는 메세지</th>
                    <td>
                        <textarea id="to_agent_text" class="agent_text" name="to_agent" style="height:50px;" placeholder="중개사에게만 보여 집니다. 상세한 조건 등 중개사에게 전달할 말을 적어 주세요"></textarea>
                    </td>
                </tr>
                <tr>
                    <th>집주인 연락처</th>
                    <td>
                        <input type="text" class="text" name="owner_tel" value="" disabled="">
                    </td>
                </tr>
            </tbody></table>
            <!-- 테이블끝 -->
            <div class="add-btn m-bottom-20">
            <div class="item-caution">
                <h5>주의!</h5>
                중개사무소에 방을 내놓습니다. 중개 의뢰한 중개 매물이기 때문에 공인 중개사를 통해 안전하게 계약할 수 있으며, 법정 중개보수가 발생합니다.  <em style="display:none" id="brokerage_text">최대 중개보수는  <span id="brokerage">1</span> 만원 입니다.</em><br>
               <!--  * 중개사에게 지불하는 법정 중개보수 이외에 직방에 지불하는 비용은 일체 없습니다. -->
            </div>

            <button type="button" class="btn-orange" id="add_room">
                <span id="btn_complete">방 내놓기</span>
                <span id="btn_loading" class="three-bounce" style="display:none">
                    <em class="one"></em>
                    <em class="two"></em>
                    <em class="three"></em>
                </span>
            </button>
        </div>
		</div>
		
		</div>
		</div>
		
		</body>
	<script src="../fix/footer.jsp"></script>
<script>
</script>
</html>