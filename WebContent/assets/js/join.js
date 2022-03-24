var check = false;

// 아이디 중복검사
$("#memberId").blur(function() {
	if ($(this).val() === "") {
		$("#result").text("아이디를 입력해주세요.");
		$("#result").css("color", "red");
		return;
	}
	memberId = $(this).val();

	$.ajax({
		url : contextPath + "/member/MemberCheckIdOk.me?memberId=" + memberId,
		type : "get",
		dataType : "json",
		success : function(result) {
			if (result.status == "ok") {
				console.log(result);
				$("#result").text("사용한 가능한 아이디입니다.");
				$("#result").css("color", "blue");
				check = true;
			} else {
				$("#result").text("중복된 아이디입니다.");
				$("#result").css("color", "red");
				$("input#memberId").focus();
			}
		},
		error : function() {
			console.log("중복검사 오류");
		}
	});

});

$("#pwCheck").blur(function() {
	if($(this).val() != $("#id_password_3").val()){
		$("#pwResult").text("비밀번호가 일치하지 않습니다.");
		$("#pwResult").css("color", "red");
		$("input#pwResult").focus();
	}else{
		$("#pwResult").text("비밀번호가 일치합니다.");
		$("#pwResult").css("color", "blue");
	}
	
});

// 회원가입 유효성 검사
function send() {
	
	if (!joinForm.memberType.value) {
		alert('회원유형을 선택해주세요.');
		return false;
	}

	if (!check) {
		alert("아이디를 확인해주세요.");
		return;
	}

	if (!joinForm.memberPw.value) {
		alert("패스워드를 확인해주세요.");
		return;
	}

	//비밀번호 확인
	var id_password_3 = document.getElementById('id_password_3').value;
	var pwCheck = document.getElementById('pwCheck').value;

	
	if (id_password_3.length < 6) {
		alert('비밀번호는 6글자 이상이어야 합니다.');
		return false;
	}

	if (id_password_3 != pwCheck) {
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}

	if (!joinForm.memberName.value) {
		alert("이름을 입력해주세요.");
		return;
	}
	
	if(!joinForm.memberNickname.value){
		alert("닉네임을 입력해주세요.");
		return;
	}

	if (!joinForm.memberPhone.value) {
		alert("전화번호를 확인해주세요.");
		return;
	}
		
	if (joinForm.memberPhone.value.length != 11) {
		alert("전화번호를 확인해주세요.");
		return;
	}
	
	if(!joinForm.memberGender.value){
		alert("성별을 선택해주세요.");
		return;
	}
	
	if (!$all.is(":checked")) {
		alert("약관에 동의해주세요.");
		return;
	}

	joinForm.submit();
}

// 이용 약관
const $all = $("#term");
const $inputs = $(".terms");

$all.on('click', function() {
	if ($(this).is(":checked")) {
		$inputs.prop('checked', true);
	} else {
		$inputs.prop('checked', false);
	}
});

$inputs.on('click', function() {
	var check = true;
	if (!$(this).is(":checked")) {
		$all.prop('checked', false);
	}

	if ($inputs.filter(":checked").length == 2) {
		$all.prop('checked', true);
	}
});

// 약관 펼쳐보기
const aTags = $("a.showTerm");
const textAreas = $("textArea.term-content");
var check1 = -1;
var check2 = -1;
aTags.on('click', function(e) {
	e.preventDefault();

	if ($(this).attr("href") == "term1-content") {
		$("#term1-content").slideToggle(function() {
			check1 *= -1;
			$(aTags[0]).text(check1 > 0 ? "닫기" : "펼쳐보기");
		});

	} else if ($(this).attr("href") == "term2-content") {
		$("#term2-content").slideToggle(function() {
			check2 *= -1;
			$(aTags[1]).text(check2 > 0 ? "닫기" : "펼쳐보기");
		});
	}
});
