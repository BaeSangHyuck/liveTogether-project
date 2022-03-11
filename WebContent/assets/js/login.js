/*//fd5a829552ba5aafe83249b169e62ba9

		Kakao.init("fd5a829552ba5aafe83249b169e62ba9");
		Kakao.isInitialized();

		function kakaoLogin() {
			Kakao.Auth.login({
				 scope:'profile, account_email, gender' , 
				success : function(response) {
					Kakao.API.request({
						url : '/v2/user/me',
						success : function(response) {
							console.log(response)
						},
						fail : function(error) {
							console.log(error)
						},
					})
				},
				fail : function(error) {
					console.log(error)
				},
			})
		}

		// 쿠키에 아이디 저장이 체크되어 있으면
		if (document.querySelector("input[name='checkSaveId']").value) {
			// 현재 페이지의 아이디 저장 체크박스를 체크상태로 변경
			loginForm.saveId.checked = true;
		}
		// 쿠키에 자동 로그인이 체크되어 있으면
		if (document.querySelector("input[name='checkAutoLogin']").value) {
			// 현재 페이지의 자동 로그인 체크박스를 체크상태로 변경
			loginForm.autoLogin.checked = true;
		}
		// 이전 로그인 비밀번호가 쿠키에 저장되어 있다면 자동 로그인을 체크한 사용자이다.
		if (document.querySelector("input[name='checkPw']").value) {
			//아이디와 비밀번호 모두 쿠키를 사용해서 입력해놨기 때문에 바로 send()를 사용하여 전송한다.
			send();
		}*/

		function send() {
			var form = loginForm;
			if (!form.memberId.value) {
				alert("아이디를 입력해주세요.");
				form.memberId.focus();
				return;
			}
			if (!form.memberPw.value) {
				alert("패스워드를 입력해주세요.");
				form.memberPw.focus();
				return;
			}

			form.memberPw.value = btoa(form.memberPw.value);

			form.submit();
		}