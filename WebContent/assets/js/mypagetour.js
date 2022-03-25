const tourOk = document.getElementsByClassName('tourOk');
const tourWait = document.getElementsByClassName('tourWait');
const checkInWait = document.getElementsByClassName('checkInWait');
const checkInOk = document.getElementsByClassName('checkInOk');
// 스테이터스가 3일때 myconheader4 보여주기
const myconheader4 = document.getElementsByClassName('myconheader4');
if (status == '0') {
	tourWait[0].classList.remove('active');
	tourWait[1].classList.remove('active1');
	tourOk[0].classList.add('active')
	checkInWait[0].classList.remove('active')
	checkInOk[0].classList.remove('active')
	tourOk[1].classList.add('active1')
	checkInWait[1].classList.remove('active1')
	$(".myconheader4").css('display', 'none');
}
if (status == '1') {
	tourWait[0].classList.add('active');
	tourWait[1].classList.add('active1');
	tourOk[0].classList.remove('active')
	checkInWait[0].classList.remove('active')
	checkInOk[0].classList.remove('active')
	tourOk[1].classList.remove('active1')
	checkInWait[1].classList.remove('active1')
	$(".myconheader4").css('display', 'none');
}
if (status == '2') {
	tourWait[0].classList.remove('active');
	tourWait[1].classList.remove('active1');
	tourOk[0].classList.remove('active')
	checkInWait[0].classList.add('active')
	checkInOk[0].classList.remove('active')
	tourOk[1].classList.remove('active1')
	checkInWait[1].classList.add('active1')
	$(".myconheader4").css('display', 'none');
}
if (status == '3') {
	tourWait[0].classList.remove('active');
	tourWait[1].classList.remove('active1');
	tourOk[0].classList.remove('active')
	checkInWait[0].classList.remove('active')
	checkInOk[0].classList.add('active')
	tourOk[1].classList.remove('active1')
	checkInWait[1].classList.remove('active1')
	$(".myconheader4").css('display', 'block');
}


// 리스트 가져오기
function getList() {
	$.ajax({
		url : contextPath + "/member/MemberReviewListOk.me",
		type : "get",
		dataType : "json",
		contentType : "application/json;charset=utf-8",
		success : showReview,
		error : function(a, b, c) {
			console.log("오류" + c);
		}
	});
}


// 가져온데이터를 통해 div에 넣어준다
function showReview(review) {
	var text = "";

	text += "<div class='info-title'>후기</div>"
	text += "<div id='review-form'>"
	text += "<div class='star-rating auto'>"
	text += "<label id='getstar'><c:forEach begin='1' end='" + review.star
			+ "'>★</c:forEach></label>"
	text += "</div>"
	text += "<div id='review'>"
	text += "<div id='review-1'>" + review.review+ "</div>"
	text += "</div>"
	text += "<a id='reviewbtn1'>수정</a>"
	text += "<a id='reviewbtn2' onclick='deleteReview()'>삭제</a>"
	text += "</div>"
	$(".myconheader4").html(text);

}

function deleteReview() {
	$.ajax({
		url : contextPath + "/member/MemberReviewDeleteOk.me",
		type : "get",
		success : function() {
			alert("리뷰가 삭제되었습니다.");
			location.reload();
		},
		error : function(a, b, c) {
			console.log("오류" + c);
		}
	});
}

function updateReviewOk() {
	$.ajax({
			url : contextPath + "/member/MemberMypageReviewOk.me",
			type : "get",
			data : {
				"star" : $('input[name=rating]:checked').val(),
				"review" : $('input[name=reviewText]').val()
			},
			success : function() {
				
				setTimeout(() => {
					alert('리뷰가 수정되었습니다.')
					location.reload()	
				}, 100);
			},
			error : function() {
				console.log("오류");
			}
		})
}

function updateCancel() {
	setTimeout(() => {
		location.reload()	
	}, 100);
}


function updateReview() {
	var text="";
	text+='<input type="radio" id="5-stars" name="rating" value="5" />'
		text+='<label for="5-stars" class="star pr-4">★</label> <input '
		text+='type="radio" id="4-stars" name="rating" value="4" /> <label '
			text+='for="4-stars" class="star">★</label> <input type="radio" '
				text+='id="3-stars" name="rating" value="3" /> <label '
					text+='for="3-stars" class="star">★</label> <input type="radio" '
						text+='id="2-stars" name="rating" value="2" /> <label '
							text+='for="2-stars" class="star">★</label> <input type="radio" ' 
								text+='id="1-star" name="rating" value="1" /> <label '
									text+='for="1-star" class="star">★</label>'
	$(".star-rating").html(text);
	$("div#review-1").replaceWith('<input type="text" id="reviewText" name="reviewText" placeholder="후기를 등록해주세요.(최대 30자이내)" maxlength="30" value='+review+'>')
	$("a#reviewbtn1").replaceWith("<a id='reviewUpdate' class='btns' onclick='updateReviewOk()'>확인</a>")
	$("a#reviewbtn2").replaceWith("<a id='updateCancel' class='btns' onclick='updateCancel()'>취소</a>")
}

// 등록
$('#reviewbtn').on('click', function() {
	// 사용자가 입력한 후기를 가져와야한다.
	$.ajax({
		url : contextPath + "/member/MemberMypageReviewOk.me",
		type : "get",
		data : {
			"star" : $('input[name=rating]:checked').val(),
			"review" : $('input[name=reviewText]').val()
		},
		success : function() {
			
			setTimeout(() => {
				alert('리뷰가 등록되었습니다.')
				location.reload()	
			}, 100);
		},
		error : function() {
			console.log("오류");
		}
	})
});
