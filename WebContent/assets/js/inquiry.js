function send() {
	
	if (!inquiryForm.houseType.value) {
		alert("집 유형을 선택해주세요.");
		return;
	}

	if (!inquiryForm.inquiryContent.value) {
		alert("요청사항을 입력해주세요.");
		return;
	}

	if (!$("input[name='agree']").is(":checked")) {
		alert("개인정보 제공에 동의해주세요.");
		return;
	}
	inquiryForm.submit();
}