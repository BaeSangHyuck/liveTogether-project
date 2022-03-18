var codeNumber;
var phoneCheck = false;

$(function(){ 

 $("#open").on("click",function(){
	 if($("input.memberId").val()==""){
		 alert("아이디를 입력해주세요.");
	 }else if($("input.memberPhone").val().length!=11){
		 alert("전화번호를 제대로 입력해주세요.");
	 }else if($("input.memberPhone").val().length==11 && $("input.memberId").val()!=""){
		 $("#modal").show();
		 var $memberPhone=$("input.memberPhone").val();
		 
		 $.ajax({
			 type:"GET", 
			 url:contextPath + "/member/MemberFindPwSMSOk.me?memberPhone=" + $("input.memberPhone").val(),
			 cache : false,
			 success:codecheck
			 
		 });
		 
	 }
	 
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
				location.href = contextPath+"/main/main.jsp";
			}
			
		});		
	}
})
  function checkCode(){
    
   var $memberCode=$('input[name=memberCode]').val();
   if ($memberCode == codeNumber){
      $("#result4").text("인증번호가 일치합니다.");
      $("#result4").css("color", "#03c75a");
      phoneCheck = true;
   }else{
      $("#result4").text("인증번호가 일치하지 않습니다.");
         $("#result4").css("color", "red");
         $("input#memberCode").focus();
   }
  
 
       
   
 }
})


