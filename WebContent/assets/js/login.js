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
		}*/
/*
		// 쿠키에 아이디 저장이 체크되어 있으면
		if (document.querySelector("input[name='saveId']").value) {
			// 현재 페이지의 아이디 저장 체크박스를 체크상태로 변경
			loginForm.saveId.checked = true;
		}
		// 쿠키에 자동 로그인이 체크되어 있으면
		if (document.querySelector("input[name='autoLogin']").value) {
			// 현재 페이지의 자동 로그인 체크박스를 체크상태로 변경
			loginForm.autoLogin.checked = true;
		}
		// 이전 로그인 비밀번호가 쿠키에 저장되어 있다면 자동 로그인을 체크한 사용자이다.
		if (document.querySelector("input[name='memberPw']").value) {
			//아이디와 비밀번호 모두 쿠키를 사용해서 입력해놨기 때문에 바로 send()를 사용하여 전송한다.
			send();
		}


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
    */
		
		//쿠키
	/*	  $(function() {
		         
	           fnInit();
	         
	     });
	     
	     function frm_check(){
	         saveid();
	     }
	 
	    function fnInit(){
	        var cookieid = getCookie("saveid");
	        console.log(cookieid);
	        if(cookieid !=""){
	            $("input:checkbox[id='saveId']").prop("checked", true);
	            $('#memberId').val(cookieid);
	        }
	        
	    }    
	 
	    function setCookie(name, value, expiredays) {
	        var todayDate = new Date();
	        todayDate.setTime(todayDate.getTime() + 0);
	        if(todayDate > expiredays){
	            document.cookie = name + "=" + escape(value) + "; path=/; expires=" + expiredays + ";";
	        }else if(todayDate < expiredays){
	            todayDate.setDate(todayDate.getDate() + expiredays);
	            document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
	        }
	        
	        
	        console.log(document.cookie);
	    }
	 
	    function getCookie(Name) {
	        var search = Name + "=";
	        console.log("search : " + search);
	        
	        if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면 
	            offset = document.cookie.indexOf(search);
	            console.log("offset : " + offset);
	            if (offset != -1) { // 쿠키가 존재하면 
	                offset += search.length;
	                // set index of beginning of value
	                end = document.cookie.indexOf(";", offset);
	                console.log("end : " + end);
	                // 쿠키 값의 마지막 위치 인덱스 번호 설정 
	                if (end == -1)
	                    end = document.cookie.length;
	                console.log("end위치  : " + end);
	                
	                return unescape(document.cookie.substring(offset, end));
	            }
	        }
	        return "";
	    }
	 
	    function saveid() {
	        var expdate = new Date();
	        if ($("#saveId").is(":checked")){
	            expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30);
	            setCookie("saveid", $("#memberId").val(), expdate);
	            }else{
	           expdate.setTime(expdate.getTime() - 1000 * 3600 * 24 * 30);
	            setCookie("saveid", $("#memberId").val(), expdate);
	             
	        }
	    }*/
		
		//쿠키2
		
	/*	var memberId = $.cookie("memberId");
		//쿠키에 user_id 있으면 체크되고 아이디 알아서 입력되도록
		if(memberId != null){
		    $("#memberId").val(memberId);
		    $("#saveId").attr("checked", "checked"); //id저장 체크
		}
		
		$("#saveId").click(function () {
		    
		    //체크박스 태그값은 input
		    //체크박스는 기본이 배열로 넘어옴
		    if($('input:checkbox[id="saveId"]').is(":checked")){
		        //체크가 되었을 때
		        //alert("checked");
		        
		        if($("#memberId").val()==""){
		            //아이디 빈칸으로 체크했을 때
		            alert($("#memberId").attr("data-msg") + " 입력해주세요.");
		            
		            //체크박스 체크 해지
		            $(this).attr("checked", false);
		            
		        }else{
		            //user_id에 쿠키값을 저장 
		            //$.cookie( , , 기한을 설정(1==하루, 쿠키의 경로(/==모든 경로의 쿠키 가져오기)))
		            $.cookie("memberId", $("#memberId").val(), {expires:7, path:'/'})
		        }
		    }else{
		        //체크 안되었을 때 (쿠키에서 지우기) 미완성
		        //alert("no checked");
		        $.removeCookie("memberId", {path:'/'});
		    }
		});*/
		
		//쿠기3
		/*$(document).ready(function(){
			// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
		    var key = getCookie("key");
		    $("memberId").val(key); 
		     
		    // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
		    if($("#memberId").val() != ""){ 
		        $("#saveId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
		    }
		     
		    $("#saveId").change(function(){ // 체크박스에 변화가 있다면,
		        if($("#saveId").is(":checked")){ // ID 저장하기 체크했을 때,
		            setCookie("key", $("#memberId").val(), 7); // 7일 동안 쿠키 보관
		        }else{ // ID 저장하기 체크 해제 시,
		            deleteCookie("key");
		        }
		    });
		     
		    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
		    $("#memberId").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
		        if($("#saveId").is(":checked")){ // ID 저장하기를 체크한 상태라면,
		            setCookie("key", $("#memberId").val(), 7); // 7일 동안 쿠키 보관
		        }
		    });

		// 쿠키 저장하기 
		// setCookie => saveid함수에서 넘겨준 시간이 현재시간과 비교해서 쿠키를 생성하고 지워주는 역할
		function setCookie(cookieName, value, exdays) {
			var exdate = new Date();
			exdate.setDate(exdate.getDate() + exdays);
			var cookieValue = escape(value)
					+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
			document.cookie = cookieName + "=" + cookieValue;
		}

		// 쿠키 삭제
		function deleteCookie(cookieName) {
			var expireDate = new Date();
			expireDate.setDate(expireDate.getDate() - 1);
			document.cookie = cookieName + "= " + "; expires="
					+ expireDate.toGMTString();
		}
	     
		// 쿠키 가져오기
		function getCookie(cookieName) {
			cookieName = cookieName + '=';
			var cookieData = document.cookie;
			var start = cookieData.indexOf(cookieName);
			var cookieValue = '';
			if (start != -1) { // 쿠키가 존재하면
				start += cookieName.length;
				var end = cookieData.indexOf(';', start);
				if (end == -1) // 쿠키 값의 마지막 위치 인덱스 번호 설정 
					end = cookieData.length;
	                console.log("end위치  : " + end);
				cookieValue = cookieData.substring(start, end);
			}
			return unescape(cookieValue);
		}
		});*/


$(document).ready(function() {
    var memberInputId = getCookie("memberInputId");
    var setCookieYN = getCookie("setCookieYN");
    
    if(setCookieYN == 'Y') {
        $("#saveId").prop("checked", true);
    } else {
        $("#saveId").prop("checked", false);
    }
    
    $("#memberId").val(memberInputId); 
    
    //로그인 버튼 클릭
    $('#login').click(function() {
        if($("#saveId").is(":checked")){ 
            var userInputId = $("#memberId").val();
            setCookie("memberInputId", memberInputId, 60); 
            setCookie("setCookieYN", "Y", 60);
        } else {
            deleteCookie("memberInputId");
            deleteCookie("setCookieYN");
        }
        
        document.fform.submit();
    });
});

//쿠키값 Set
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + 
    exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}

//쿠키값 Delete
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

//쿠키값 가져오기
function getCookie(cookie_name) {
    var x, y;
    var val = document.cookie.split(';');
    
    for (var i = 0; i < val.length; i++) {
        x = val[i].substr(0, val[i].indexOf('='));
        y = val[i].substr(val[i].indexOf('=') + 1);
        x = x.replace(/^\s+|\s+$/g, ''); // 앞과 뒤의 공백 제거하기
        
        if (x == cookie_name) {
          return unescape(y); // unescape로 디코딩 후 값 리턴
        }
    }
}




