// 1번
// const openButton = document.getElementById("open");

// const modal = document.querySelector(".modal");
// const closeBtn = modal.querySelector("button");


// openButton.addEventListener('click', function(){
// 	$.ajax({
// 		url: contextPath + "/member/MemberFindIdOk.me",
// 		type: "post",
// 		dataType: "json",
// 		data :{"memberName" : memberName, "memberPhone": memberPhone},
// 		contentType: "application/json;charset=utf-8",
// 		success :  function(resp){
//            $('#m-id').text(resp);
// 			console.lon("resp");
//         },
// 		error: function(a, b, c){
// 			console.log("오류" + c);
// 		}
		
// 	});
 
// 	modal.classList.remove("hidden");
//  });

//  closeBtn.addEventListener('click', function(){
// 	modal.classList.add("hidden");
//  });

// 2번

$(function(){ 

 $("#open").on("click",function(){
	 if($("input.memberName").val()==""){
		 alert("이름을 확인해주세요.");
		 }else if($("input.memberPhone").val().length!=11){
			 alert("전화번호를 확인해주세요.");
		 }else if($("input.memberPhone").val().length==11 && $("input.memberId").val()!=""){
	$("#modal").show();
		$.ajax({
		url: contextPath + "/member/MemberFindIdOk.me",
		type: "get",
		data :{"memberName" : $("input[name=memberName]").val(), "memberPhone":$("input[name=memberPhone]").val()},
		success : showId
		,

		error: function(a, b, c){
			console.log("오류" + c);
		}
		
				
	});
		 }
})
$("#m-btn").on("click",function(){
	$("#modal").hide();
})
})

function showId(memberId){

if(memberId==='null'){
	$('#mid').text("일치하는 회원정보가 없습니다.");
} else{
	$('#mid').text(memberId);
}
}
// 3번
// $(function(){

// 	$("#open").on("click",function(){
// 	   $("#modal").show();

// 	   // 아이디 & 스토어 값 저장하기 위한 변수
// 	var idV = "";
// 	// 아이디 값 받고 출력하는 ajax
// 	var idSearch_click = function(){
// 		$.ajax({
// 			type:"POST",
// 			url:contextPath + "/member/MemberFindIdOk.me",
// 			dataType: "json",
// 			data :{"memberName" : memberName, "memberPhone": memberPhone},
// 			contentType: "application/json;charset=utf-8",
					
// 			success:function(data){
// 				if(data == 0){
// 					$('#m-id').text("회원 정보를 확인해주세요!");	
// 				} else {
// 					$('#m-id').text(data);
// 					// 아이디값 별도로 저장
// 					idV = data;
// 				}
// 			}
// 		});
// 	}

//    })
//    $("#m-btn").on("click",function(){
// 	   $("#modal").hide();
//    })
//    })

// 4번
//    $(function(){

// 	$("#open").on("click",function(){
// 	   $("#modal").show();


//    })
//    $("#m-btn").on("click",function(){
// 	   $("#modal").hide();
//    })
//    })