var imgIndex = 1;

// 파일업로드 썸네일
var checkImg = 1
var checkImga1 = 1;
var checkImga2 = 2;
var checkImga3 = 3;
var checkImga4 = 4;
var checkImga5 = 5;
var checkImga6 = 6;
var checkImga7 = 7;
var checkImga8 = 8;
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
	if (index == "a1") {
		if (checkImga1 == "1a1a1a1a1") {
			return;
		}
	}
	if (index == "a2") {
		if (checkImga2 == "2a2a2a2a2") {
			return;
		}
	} else if (index == "a3") {
		if (checkImga3 == "3a3a3a3a3") {
			return;
		}
	} else if (index == "a4") {
		if (checkImga4 == "4a4a4a4a4") {
			return;
		}
	} else if (index == "a5") {
		if (checkImga5 == "5a5a5a5a5") {
			return;
		}
	} else if (index == "a6") {
		if (checkImga6 == "6a6a6a6a6") {
			return;
		}
	} else if (index == "a7") {
		if (checkImga7 == "7a7a7a7a7") {
			return;
		}
	} else if (index == "a8") {
		if (checkImga8 == "8a8a8a8a8") {
			return;
		}
	}

	var imgText = "";
	imgIndex++;
	imgText += "<div class='file-wrap'>"
	imgText += "<div id='file'>"
	imgText += "<label for='room_file" + index + imgIndex
			+ "' style='display: inline;'>"
	imgText += "<img id='room_file" + index + imgIndex
			+ "Img' class='roomImg' src='" + contextPath + "/images/파일첨부.png'>"
	imgText += "</label>"
	imgText += "</div>"
	imgText += "<input id='room_file" + index + imgIndex + "' name='room_file"
			+ index + "' type='file' class='" + index
			+ "' style='display: none' onchange='imgThumbnail(event);'>"
	imgText += "<input type='button' class='removeImgBtn' onclick='cancelFile(\"room_file"
			+ index + imgIndex + "\")' value='첨부 삭제'>"
	imgText += "</div>"

	$('.filesRoom' + index).append(imgText);

	if (index == "a1") {
		checkImga1 += index;
	}
	if (index == "a2") {
		checkImga2 += index
	} else if (index == "a3") {
		checkImga3 += index
	} else if (index == "a4") {
		checkImga4 += index
	} else if (index == "a5") {
		checkImga5 += index
	} else if (index == "a6") {
		checkImga6 += index
	} else if (index == "a7") {
		checkImga7 += index
	} else if (index == "a8") {
		checkImga8 += index
	}
};

/*
 * $(window).scroll(function() { var scrollValue = $(document).scrollTop();
 * console.log($("input[name='roomDate']").val()); })
 */

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

// 파일삭제
function cancelFile(fileName) {
	$("input#" + fileName).val("");
	$("img#" + fileName + "Img").attr("src", contextPath + "/images/파일첨부.png");
}

// 평수계산
function calculator(chk) {
	if (chk == 1) {
		document.getElementById('cal2').value = Math.ceil(document
				.getElementById('cal1').value * 3.3057);
	} else {
		document.getElementById('cal1').value = Math.ceil(document
				.getElementById('cal2').value / 3.3057);
	}
}

// 방삭제
var index = 1;
function removeRoom() {
	$('#roomDetail' + index).empty();
	index--;
}

// 방추가
$("#roomPlusBtn").click(function() {
	roomAdd();
});

function roomAdd() {
	index++;
	var text = "";
	text += "<table>"
	text += "<tbody>"
	text += "<tr>"
	text += "<th>방이름</th>"
	text += "<td>"
	text += "<div class='roomPlusMark'>"
	text += "<input type='hidden' name='roomName' value='Room" + index + "'>"
	text += "<div class='input-smallsize'>Room" + index + "</div>"
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
			+ index + "' value='m'>"
	text += "<label for='male" + index + "'>남성전용</label>"
	text += "<input type='radio' id='female" + index + "' name='roomGender"
			+ index + "' value='w'>"
	text += "<label for='female" + index + "'>여성전용</label>"
	text += "</div>"
	text += "</td>"
	text += "</tr>"
	text += "<tr>"
	text += "<th>타입</th>"
	text += "<td>"
	text += "<div class='flex'>"
	text += "<input type='text' class='input-xsmallsize' name='roomType'>"
	text += "<div>"
	text += "<span class='span-lineheight'>&nbsp;&nbsp;인실</span>"
	text += "</div>"
	text += "</div>"
	text += "</td>"
	text += "</tr>"
	text += "<th>보증금</th>"
	text += "<td>"
	text += "<div class='flex'>"
	text += "<input type='text' class='input-xsmallsize' name='roomDeposit'>"
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
	text += "<input type='text' class='input-xsmallsize' name='roomMonthly'>"
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
	text += "<input type='text' class='input-xsmallsize' id='cal2' onkeyup='calculator(2)' name='roomArea'><span class='span-lineheight'>&nbsp;&nbsp;m<sup>2</sup>&nbsp;=&nbsp;&nbsp;</span> <input type='text' class='input-xsmallsize' id='cal1' onkeyup='calculator(1)'><span class='span-lineheight'>&nbsp;&nbsp;평</span>"
	text += "</div>"
	text += "   </div>"
	text += "</td>"
	text += "</tr>"
	text += "   <tr>"
	text += "</tr>"
	text += "<tr>"
	text += "<th>입주가능일</th>"
	text += "<td><input type='date' name='roomDate'> <input type='checkbox' id='rightnow'> <label for='rightnow'>즉시 입주</label></td>"
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
			+ index
			+ "' name='room_file"
			+ index
			+ "' type='file'	style='display: none' > <input type='button' class='removeImgBtn' onclick='cancelFile(\"room_file" + index + "\")' value='첨부 삭제'>"
	text += "</div>"
	text += "</div>"
	text += "</div>"
	text += "</td>"
	text += "</tr>"
	text += "</tbody>"
	text += "</table>"

	$('#roomDetail' + index).append(text);
	if (index == 8) {
		$("#roomPlusBtn").css('display', 'none');
	}
}

function send() {
	registForm.submit();
}

/*$(window).scroll(function() {
	console.log($("input[name='latitude']").val());
	console.log($("input[name='longitude']").val());
})*/
