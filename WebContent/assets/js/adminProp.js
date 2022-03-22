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