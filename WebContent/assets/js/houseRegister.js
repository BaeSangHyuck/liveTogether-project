var imgIndex = 1; // roomFile index
var imgIndex2 = 1; // houseFile index


// Room파일업로드 썸네일
function imgThumbnail(event) {

	var index = event.srcElement.className;
	var img = event.srcElement.previousElementSibling.lastElementChild.lastElementChild;
	var reader = new FileReader();

	var file = event.target.files[0];
	reader.readAsDataURL(file);

	reader.onload = function(event) {
		if (event.target.result.indexOf("image") != -1) {
			img.setAttribute("src", event.target.result)
		} else {
			img.setAttribute("src", contextPath + "/images/no_img.jpg");
		}
	}	
};

// houseFile 썸네일
function imgThumbnail2(event) {
	var img = event.srcElement.previousElementSibling.lastElementChild.lastElementChild;
	var reader = new FileReader();

	var file = event.target.files[0];
	reader.readAsDataURL(file);

	reader.onload = function(event) {
		if (event.target.result.indexOf("image") != -1) {
			img.setAttribute("src", event.target.result)
		} else {
			img.setAttribute("src", contextPath + "/images/no_img.jpg");
		}
	}

};

// Room파일삭제
function cancelFile(fileName) {

	$("input#" + fileName).val("");
	$("img#" + fileName + "Img").attr("src", contextPath + "/images/파일첨부.png");
	var length1;
	var length2;
	var length3;
	var length4;
	var length5;
	var length6;
	var length7;
	var length8;

	if ($('#' + fileName).attr('class') == "a1") {
		length1 = checkImga1.length;

		if (length1 != 1) {
			checkImga1 = checkImga1.substring(0, length - 2);
		}
		if (length1 != 9) {
			if ($('#' + fileName).parent().prev().length != 0) {
				$('#' + fileName).parent().empty();
			}
		}
	}else if($('#' + fileName).attr('class') == "a2"){
		length2 = checkImga2.length;
		
		if (length2 != 1) {
			checkImga2 = checkImga2.substring(0, length - 2);
		}
		if (length2 != 9) {
			if ($('#' + fileName).parent().prev().length != 0) {
				$('#' + fileName).parent().empty();
			}
		}
	}else if($('#' + fileName).attr('class') == "a3"){
		length3 = checkImga3.length;
		
		if (length3 != 1) {
			checkImga3 = checkImga3.substring(0, length - 2);
		}
		if (length3 != 9) {
			if ($('#' + fileName).parent().prev().length != 0) {
				$('#' + fileName).parent().empty();
			}
		}
	}else if($('#' + fileName).attr('class') == "a4"){
		length4 = checkImga4.length;
		
		if (length4 != 1) {
			checkImga4 = checkImga4.substring(0, length - 2);
		}
		if (length4 != 9) {
			if ($('#' + fileName).parent().prev().length != 0) {
				$('#' + fileName).parent().empty();
			}
		}
	}else if($('#' + fileName).attr('class') == "a5"){
		length5 = checkImga5.length;
		
		if (length5 != 1) {
			checkImga5 = checkImga5.substring(0, length - 2);
		}
		if (length5 != 9) {
			if ($('#' + fileName).parent().prev().length != 0) {
				$('#' + fileName).parent().empty();
			}
		}
	}else if($('#' + fileName).attr('class') == "a6"){
		length6 = checkImga6.length;
		
		if (length6 != 1) {
			checkImga6 = checkImga6.substring(0, length - 2);
		}
		if (length6 != 9) {
			if ($('#' + fileName).parent().prev().length != 0) {
				$('#' + fileName).parent().empty();
			}
		}
	}else if($('#' + fileName).attr('class') == "a7"){
		length7 = checkImga7.length;
		
		if (length7 != 1) {
			checkImga7 = checkImga7.substring(0, length - 2);
		}
		if (length7 != 9) {
			if ($('#' + fileName).parent().prev().length != 0) {
				$('#' + fileName).parent().empty();
			}
		}
	}else if($('#' + fileName).attr('class') == "a8"){
		length8 = checkImga8.length;
		
		if (length8 != 1) {
			checkImga8 = checkImga8.substring(0, length - 2);
		}
		if (length8 != 9) {
			if ($('#' + fileName).parent().prev().length != 0) {
				$('#' + fileName).parent().empty();
			}
		}
	}
	
	
	


}
// House파일삭제
function cancelFile2(fileName) {
	$("input#" + fileName).val("");
	$("img#" + fileName + "Img").attr("src", contextPath + "/images/파일첨부.png");
}

// 입주가능일/즉시 입주 둘중 하나 선택
$("#startDate").focusout(function() {
	if ($("#startDate").val() != "") {
		// $("input:checkbox[id='rightnow']").prop("checked", false);
		$("#rightnow").attr('disabled', 'true');
		// 알아서 포커스 해제해주기 추가
	} else {
		$("#rightnow").removeAttr("disabled")
	}
});

$("#rightnow").on("click", function() {
	if ($("#rightnow").is(":checked") == true) {
		$("#startDate").attr('disabled', 'true');
	} else {
		$("#startDate").removeAttr("disabled")
	}
});

// 평수계산
function calculator(chk) {
	var checkCal1 = 1;
	var checkCal2 = 1;
	var cal = "cal";
		
	if (chk == 1) {
		document.getElementById('cal2').value = Math.ceil(document.getElementById('cal1').value * 3.3057);
	} else if(chk == 2){
		document.getElementById('cal1').value = Math.ceil(document.getElementById('cal2').value / 3.3057);
	}else if(chk == 3){
		document.getElementById('cal4').value = Math.ceil(document.getElementById('cal3').value * 3.3057);
	}else if(chk == 4){
		document.getElementById('cal3').value = Math.ceil(document.getElementById('cal4').value / 3.3057);
	}else if(chk == 5){
		document.getElementById('cal6').value = Math.ceil(document.getElementById('cal5').value * 3.3057);
	}else if(chk == 6){
		document.getElementById('cal5').value = Math.ceil(document.getElementById('cal6').value / 3.3057);
	}else if(chk == 7){
		document.getElementById('cal8').value = Math.ceil(document.getElementById('cal7').value * 3.3057);
	}else if(chk == 8){
		document.getElementById('cal7').value = Math.ceil(document.getElementById('cal8').value / 3.3057);
	}else if(chk == 9){
		document.getElementById('cal10').value = Math.ceil(document.getElementById('cal9').value * 3.3057);
	}else if(chk == 10){
		document.getElementById('cal9').value = Math.ceil(document.getElementById('cal10').value / 3.3057);
	}else if(chk == 11){
		document.getElementById('cal12').value = Math.ceil(document.getElementById('cal11').value * 3.3057);
	}else if(chk == 12){
		document.getElementById('cal11').value = Math.ceil(document.getElementById('cal12').value / 3.3057);
	}else if(chk == 13){
		document.getElementById('cal14').value = Math.ceil(document.getElementById('cal13').value * 3.3057);
	}else if(chk == 14){
		document.getElementById('cal13').value = Math.ceil(document.getElementById('cal14').value / 3.3057);
	}else if(chk == 15){
		document.getElementById('cal16').value = Math.ceil(document.getElementById('cal15').value * 3.3057);
	}else if(chk == 16){
		document.getElementById('cal15').value = Math.ceil(document.getElementById('cal16').value / 3.3057);
	}
}

// 방삭제
var index = 1;
function removeRoom() {
	$('#roomDetail' + index).empty();
	$("#roomPlusBtn").css('display', 'inline-block');
	index--;
	checkCal1 -= 2;
	checkCal2 -= 2;
}

// 방추가
$("#roomPlusBtn").click(function() {
	roomAdd();
});

var checkCal1 = 3;
var checkCal2 = 4;

function roomAdd() {
	index++;
	var text = "";
	text += "<table>"
	text += "<tbody>"
	text += "<tr>"
	text += "<th>방이름</th>"
	text += "<td>"
	text += "<div class='roomPlusMark'>"
	text += "<input type='hidden' name='roomName' value='Room" +houseNumber+"-" +index + "'>"
	text += "<div class='input-smallsize'>Room" +houseNumber+"-" +index + "</div>"
	text += "<img src='" + contextPath
			+ "/images/xMark.png' id='xMark' onclick='removeRoom()'>"
	text += "</div>"
	text += "</td>"
	text += "</tr>"
	text += "<tr>"
	text += "<tr>"
	text += "<th>성별</th>"
	text += "<td>"
	text += "<div>"
	text += "<input type='radio' id='male" + index + "' name='roomGender"
			+ index + "' value='m' class='b'>"
	text += "<label for='male" + index + "'>남성전용</label>"
	text += "<input type='radio' id='female" + index + "' name='roomGender"
			+ index + "' value='w' class='b'>"
	text += "<label for='female" + index + "'>여성전용</label>"
	text += "</div>"
	text += "</td>"
	text += "</tr>"
	text += "<tr>"
	text += "<th>타입</th>"
	text += "<td>"
	text += "<div class='flex'>"
	text += "<input type='text' class='input-xsmallsize' name='roomType' autocomplete='off'>"
	text += "<div>"
	text += "<span class='span-lineheight'>&nbsp;&nbsp;인실</span>"
	text += "</div>"
	text += "</div>"
	text += "</td>"
	text += "</tr>"
	text += "<th>보증금</th>"
	text += "<td>"
	text += "<div class='flex'>"
	text += "<input type='text' class='input-xsmallsize' name='roomDeposit' autocomplete='off'>"
	text += "<div>"
	text += "<span class='span-lineheight'>&nbsp;&nbsp;만원</span>"
	text += "</div>"
	text += "</div>"
	text += "</td>"
	text += "</tr>"
	text += "<tr>"
	text += "<th>월세</th>"
	text += "<td>"
	text += "<div class='flex'>"
	text += "<input type='text' class='input-xsmallsize' name='roomMonthly' autocomplete='off'>"
	text += "<div>"
	text += "<span class='span-lineheight'>&nbsp;&nbsp;만원</span>"
	text += "</div>"
	text += "</div>"
	text += "</td>"
	text += "</tr>"
	text += "<tr>"
	text += "<th>전용 면적</th>"
	text += "   <td>"
	text += "   <div>"
	text += "<div id='roomsize-wrap'>"
	text += "<input type='text' class='input-xsmallsize' id='cal" + checkCal2 + "' onkeyup='calculator(" + checkCal2 +")' name='roomArea' autocomplete='off'><span class='span-lineheight'>&nbsp;&nbsp;m<sup>2</sup>&nbsp;=&nbsp;&nbsp;</span> <input type='text' class='input-xsmallsize' id='cal" + checkCal1 + "' onkeyup='calculator(" + checkCal1 + ")' autocomplete='off'><span class='span-lineheight'>&nbsp;&nbsp;평</span>"
	text += "</div>"
	text += "   </div>"
	text += "</td>"
	text += "</tr>"
	text += "   <tr>"
	text += "</tr>"
	text += "<tr>"
	text += "<th>입주가능일</th>"
	text += "<td><input type='date' name='roomDate' class='c'> <input type='checkbox' id='rightnow'> <label for='rightnow'>즉시 입주</label></td>"
	text += "</tr>"
	text += "<tr>"

	text += "<th>사진</th>"
	text += "<td>"
	text += "<div>"
	text += "<div class='filesRooma" + index + "'>"
	text += "<div class='file-wrap'>"
	text += "<div id='file'>"
	text += "<label for='room_file" + index
			+ "' style='display: inline;'> <img id='room_file" + index
			+ "Img' class='roomImg'	src='" + contextPath + "/images/파일첨부.png'>"
	text += "</label>"
	text += "</div>"
	text += "<input id='room_file"
			+ index
			+ "' onchange='imgThumbnail(event)' class='a"
			+ "' name='room_file"
			+ index
			+ "' type='file'	style='display: none' > <input type='button' class='removeImgBtn' onclick='cancelFile(\"room_file"
			+ index + "\")' value='첨부 삭제'>"
	text += "</div>"
	text += "</div>"
	text += "</div>"
	text += "</td>"
	text += "</tr>"
	text += "</tbody>"
	text += "</table>"
		
		checkCal1 += 2;
		checkCal2 += 2;

	$('#roomDetail' + index).append(text);	
	if (index == 6) {
		$("#roomPlusBtn").css('display', 'none');
	}
}

var today = new Date();
var year = today.getFullYear();
var month = ('0' + (today.getMonth() + 1)).slice(-2);
var day = ('0' + today.getDate()).slice(-2);
var dateString = year + '-' + month  + '-' + day;


$("#rightnow").val(dateString);

//하우스 등록하기
function send() {
	var checkName = document.getElementsByClassName("input-smallsize");
	var roomLength = $("input[name='roomName']").length
	var checkType = document.getElementsByName("roomType");
	var checkDeposit = document.getElementsByName("roomDeposit");
	var checkMonthly = document.getElementsByName("roomMonthly");
	var checkArea = document.getElementsByName("roomArea");
	var checkDate = document.getElementsByClassName("c");
	var checkGender = document.getElementsByClassName("b");
	var checkfile = document.getElementsByClassName("a");
	var genderCount = 0;

	if(!registForm.houseAddressDetail.value){
		alert("상세주소를 입력해주세요");
		return;
	}
	if(!registForm.houseLocation.value){
		alert("주소를 정확히 검색해주세요");
		return;
	}
	for (var j=0; j < checkGender.length; j++){
		if(checkGender[j].checked){
			genderCount++;
		}
	}	
	if(genderCount != (checkGender.length)/2){
		alert("방의 성별을 선택해주세요");
		return;
	}	

	for (var i = 0; i < roomLength; i++) {		
		if(!checkType[i].value){
			alert("몇인실인지 입력해주세요");
			return;
		}
		if(Number(checkType[i].value) > 9){
			alert("방의 최대인원을 9명까지만 적어주시기 바랍니다")
			return;
		}
		if(!checkDeposit[i].value){
			alert("보증금을 입력해주세요");
			return;
		}
		if(!checkMonthly[i].value){
			alert("월세를 입력해주세요");
			return;
		}
		if(!checkArea[i].value){
			alert("면적을 입력해주세요");
			return;
		}
		if(checkDate[i].value == ""){
			alert("입주가능한 날짜를 입력해주세요");
			return;
		}
		console.log(checkfile[i]);
		if(checkfile[i].value == ""){
			alert(checkName[i].innerText + "방 사진을 추가해주세요");
			return;
		}
	}
	
	if(!registForm.house_file.value){
		alert("방 구조 사진을 첨부해주세요");
		return;
	}
	if(!registForm.houseMessage.value){
		alert("하우스소개를 입력해주세요");
		return;
	}
	
		registForm.submit();

}

//오늘 날짜 가져오기
