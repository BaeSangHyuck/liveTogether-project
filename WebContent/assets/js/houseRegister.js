var imgIndex = 1;
//파일업로드 썸네일
$(".files").change(function(e) {
   var file = e.target.files[0];
   var img = $(this).children(":last").find("img");
   var reader = new FileReader();
   reader.readAsDataURL(file);

   reader.onload = function(e) {
      if (e.target.result.indexOf("image") != -1) {
         img.attr("src", e.target.result)
      } else {
         img.attr("src", contextPath+"/images/no_img.jpg");
      }
   }
   
   var imgText="";
   imgIndex++;
   imgText += "<div class='files-wrap'>"
   imgText += "<div id='file'>"
   imgText += "<label for='board_file"+imgIndex+"' style='display: inline;'>"
   imgText += "<img id='board_file"+imgIndex+"Img' class='roomImg' src='"+contextPath+"/images/파일첨부.png'>"
   imgText += "</label>"
   imgText += "</div>"
   imgText += "<input id='board_file"+imgIndex+"' name='board_file"+imgIndex+"' type='file' style='display: none'>" 
   imgText += "<input type='button' onclick='cancelFile(\"board_file"+imgIndex+"\")' value='첨부 삭제'>"
   imgText += "</div>"
      

   $(".files").append(imgText);
   
});


// 입주가능일/즉시 입주 둘중 하나 선택
$("#startDate").focusout(function(){
   console.log("들어옴");
   if($("#startDate").val() != ""){
//      $("input:checkbox[id='rightnow']").prop("checked", false); 
      $("#rightnow").attr('disabled','true');      
      //알아서 포커스 해제해주기 추가
   }else{
      $("#rightnow").removeAttr("disabled")
   }
});

$("#rightnow").on("click", function(){
    if($("#rightnow").is(":checked") == true){
        $("#startDate").attr('disabled','true');
    }else {
       $("#startDate").removeAttr("disabled")
    }
});




// 파일삭제
function cancelFile(fileName) {
   $("input#" + fileName).val("");
   $("img#" + fileName + "Img").attr("src", contextPath+"/images/파일첨부.png");
}

// 평수계산
function calculator(chk) {
   if (chk == 1) {
      document.getElementById('cal2').value = Math.ceil(document.getElementById('cal1').value * 3.3057);
   } else {
      document.getElementById('cal1').value = Math.ceil(document.getElementById('cal2').value / 3.3057);
   }
}

// 방추가
var index = 1;
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
   text += "<input type='text' value='Room&nbsp;" + index   + "' class='input-smallsize'>"
   text += "<img src='"+contextPath+"/images/xMark.png' id='xMark'>"
   text += "</div>"
   text += "</td>"
   text += "</tr>"
   text += "<tr>"
   text += "<tr>"
   text += "<th>성별</th>"
   text += "<td>"
   text += "<div>"
   text += "<input type='radio' id='male" + index + "' name='g" + index
         + "' value='male'>"
   text += "<label for='male" + index + "'>남성전용</label>"
   text += "<input type='radio' id='female" + index + "' name='g" + index
         + "' value='female'>"
   text += "<label for='female" + index + "'>여성전용</label>"
   text += "<input type='radio' id='uni" + index + "' name='g" + index
         + "' value='uni'>"
   text += "<label for='uni" + index + "'>남녀공용</label>"
   text += "</div>"
   text += "</td>"
   text += "</tr>"
   text += "<tr>"
   text += "<th>타입</th>"
   text += "<td>"
   text += "<div class='flex'>"
   text += "<input type='text' class='input-xsmallsize'>"
   text += "<div>"
   text += "<span class='span-lineheight'>&nbsp;&nbsp;인실</span>"
   text += "</div>"
   text += "</div>"
   text += "</td>"
   text += "</tr>"
   text += "<th>보증금</th>"
   text += "<td>"
   text += "<div class='flex'>"
   text += "<input type='text' class='input-xsmallsize'>"
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
   text += "<input type='text' class='input-xsmallsize'>"
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
   text += "<input type='text' class='input-xsmallsize' id='cal2' onkeyup='calculator(2)'><span class='span-lineheight'>&nbsp;&nbsp;m<sup>2</sup>&nbsp;=&nbsp;&nbsp;</span> <input type='text' class='input-xsmallsize' id='cal1' onkeyup='calculator(1)'><span class='span-lineheight'>&nbsp;&nbsp;평</span>"
   text += "</div>"
   text += "   </div>"
   text += "</td>"
   text += "</tr>"
   text += "   <tr>"
   text += "</tr>"
   text += "<tr>"
   text += "<th>입주가능일</th>"
   text += "<td><input type='date'> <input type='checkbox'   id='rightnow'> <label for='rightnow'>즉시 입주</label></td>"
   text += "</tr>"
   text += "</tbody>"
   text += "</table>"
   // text += "<div id='roomDetail" + (index+1)+ "'></div>"

   $('#roomDetail' + index).html(text);
   if(index==8){
      $("#roomPlusBtn").css('display','none');
   }

}