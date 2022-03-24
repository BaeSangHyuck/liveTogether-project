var codeNumber;
var phoneCheck = false;

var check = false;

$("#memberId").blur(function() {
	if ($(this).val() === "") {
		$("#result").text("아이디를 입력해주세요.");
		$("#result").css("color", "red");
		$("input#memberId").css("border-bottom", "1px solid red");
		return;
	}else {
		$("#result").text("");
		$("input#memberId").css("border-bottom", "1px solid #e5e5e5");
	}
});
//아이디 중복검사
$("#memberPhone").blur(function() {
	if ($(this).val() === "") {
		$("#result2").text("전화번호를 입력해주세요.");
		$("#result2").css("color", "red");
		$("input#memberPhone").css("border-bottom", "1px solid red");
		return;
	}else {
		$("#result2").text("");
		$("input#memberPhone").css("border-bottom", "1px solid #e5e5e5");
	}
	$.ajax({
		url : contextPath + "/member/MemberFindPwCountOk.me",
		type : "get",
		data:{"memberId" : $("input#memberId").val(),"memberPhone" : $("input#memberPhone").val()},
		dataType : "json",
		success : function(result) {
			console.log(result);
			if (result==1) {	
				$("#result2").text("");
				$("input#memberPhone").css("border-bottom", "1px solid #e5e5e5");
			} else {
				$("#result2").text("입력하신 정보를 다시 확인해주세요.");
				$("#result2").css("color", "red");
				$("input#memberPhone").focus();
				$("input#memberPhone").css("border-bottom", "1px solid red");
			}
		},
		error : function() {
			console.log("중복검사 오류");
		}
	});

});

$(function(){ 

 $("#open").on("click",function(){
	 if($("#result2").text()!=""){
		 alert("입력하신 정보를 확인해주세요");
	 }else{
		 $("#modal").show();}
		 var $memberPhone=$("input.memberPhone").val();
		 
		 $.ajax({
			 type:"GET", 
			 url:contextPath + "/member/MemberFindPwSMSOk.me?memberPhone=" + $("input.memberPhone").val(),
			 cache : false,
			 success:codecheck
			 
		 });
		 
	 
	 
   function codecheck(code){
	   codeNumber=code;

 
 console.log("verifyCode 1: " + codeNumber);
 }

   
   // 인증번호 확인눌렀을떄
      function openCloseToc() {
    
         if($('#modal-inner2').css('display')=='none'){
            $('#modal-inner2').css('display', 'block');
         }
      }
 })

$("#m-btn").on("click",function(){
	/*$("#modal").hide(); */
	checkCode();
	if( $("#result4").text()=="인증번호가 일치합니다."){
		$("#m-btn2").css('display', 'block');
		$("#m-btn").css('display', 'none');
	}
})

$("#m-btn2").on("click", function(){
	$("#m-title h3").text("비밀번호 변경");
	$(".m-span").text("변경하실 비밀번호를 입력해주세요.");
	$("#memberCode").css('display', 'none');
	$("#changePw").css('display', 'block');
	$("#result4").text(" ");
	$("#m-btn3").css('display', 'block');
	$("#m-btn2").css('display', 'none');
}
)



$("#m-btn3").on("click", function(){
	
	if($("#changePw").val().length<6){
		alert("6자리 이상 입력해주세요.");
	}else if($("#changePw").val().length>=6){
		$.ajax({
			type:"GET", 
			url:contextPath + "/member/MemberFindPwOk.me",
			data :{"memberPhone" : $("input.memberPhone").val(), "changePw":$("#changePw").val()},
			cache : false,
			success: function(){
//				alert("비밀번호가 변경되었습니다.")
				setTimeout(function(){;},3000);
				location.href = contextPath+"/member/login.jsp";
			}
			
		});		
	}
})
$("#m-btn4").on("click", function(){
	$("#modal").hide();
}
)
  function checkCode(){
    
   var $memberCode=$('input[name=memberCode]').val();
   if ($memberCode == codeNumber){
      $("#result4").text("인증번호가 일치합니다.");
      $("#result4").css("color", "#1187CF");
      phoneCheck = true;
   }else{
      $("#result4").text("인증번호가 일치하지 않습니다.");
         $("#result4").css("color", "red");
         $("input#memberCode").focus();
         
   }
  
 
       
   

 }
})


