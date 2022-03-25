
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