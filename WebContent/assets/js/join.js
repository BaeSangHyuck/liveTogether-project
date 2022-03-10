// 아이디 중복검사
		function checkId(memberId) {
			if (!memberId) {
				$("#result").text("아이디를 입력해주세요.");
				$("#result").css("color", "red");
				return;
			}

			$.ajax({
						url : contextPath + "/member/MemberCheckIdOk.me?email="	+ memberId,
						type : "get",
						dataType : "json",
						success : function(result) {
							if (result.status == "ok") {
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
		}

		// 회원가입 유효성 검사
		function send() {

			if (!check) {
				alert("아이디를 확인해주세요.");
				return;
			}

			if (!joinForm.memberPw.value) {
				alert("패스워드를 확인해주세요.");
				return;
			}

			if (!joinForm.memberName.value) {
				alert("이름을 확인해주세요.");
				return;
			}

			if (!joinForm.memberAge.value) {
				alert("나이를 확인해주세요.");
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











