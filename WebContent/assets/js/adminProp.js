const $all = $("#term");
const $inputs = $(".terms");
const $inputLength = $(".terms").length;

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

	if ($inputs.filter(":checked").length == $inputLength) {
		$all.prop('checked', true);
	}
});

function send() {

	if (!$("input[name='term1']").is(":checked")) {
		alert("최소 한 개의 문의는 선택해주세요.");
		return;
	}
	clickDelete.submit();
}