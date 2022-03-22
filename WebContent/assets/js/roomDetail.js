//투어신청 버튼
const tour = document.getElementsByClassName("button-tour");

Array.from(tour).forEach((t) => {
    // 현재 .test에 click 이벤트를 건다.
    t.addEventListener('click', function () {
        // 현재의 .test가 콘솔에 출력된다.
        $.ajax({
            url : contextPath + "/member/MemberMypageTourOk.me",
            type : "get",
            data : {"houseNumber": houseNumber,"roomName":t.parentElement.parentElement.firstElementChild.innerHTML},
            success : alert("투어신청이 완료되었습니다."),
            error : function(a, b, c) {
                console.log("오류" + c);
            }
        });


    })
});


var btn = document.getElementsByClassName("click"); // 앵커 후 스타일 주기위한 버튼
	var $live = $("#live-wrap"); 
	var $contract = $("#contract-wrap");
	var headerHeight = $("header").outerHeight(); // 헤더길이
	
	
	// 헤더길이에 따라 스크롤위치 잡아주기
	$(function () {
		$(".button.primary.click").on("click", function(){
			var href = $(this).attr("href");
			var target = $(href == "#" || href == "" ? "body" : href);
			var position = target.offset().top - headerHeight;
			$("html, body").animate({ scrollTop: position }, 600, "swing");
		});
	});

// 버튼 클릭시 액티브클래스(색변경) 주기

function success() {
  for (var i = 0; i < btn.length; i++) {
		btn[i].addEventListener("click", function click(event) {
  
		for (var i = 0; i < btn.length; i++) {
	 	 btn[i].classList.remove("active");
		}
		this.classList.add("active");
	});
  }
}
success();

// 스크롤 위치에 따라 액티브클래스(색변경) 주기
$(window).scroll(function(){ 
    var scrollValue = $(document).scrollTop();
    if (matchMedia("screen and (min-width: 415px)").matches){ 
    	if(scrollValue > 565){
    		$("div.intro").addClass("introfix");
    		$("div.tab").css("margin-top","60px");
    	}else{
    		$("div.intro").removeClass("introfix");	
    		$("div.tab").css("margin-top","0");
    	}
    }else { 
    	if(scrollValue > 280){
    		$("div.intro").addClass("introfix");
    		$("div.tab").css("margin-top","60px");
    	}else{
    		$("div.intro").removeClass("introfix");	
    		$("div.tab").css("margin-top","0");
    	}
    }


	if($("#two-ex").offset().top - 240 < scrollValue){
		btn[0].classList.add("active");
		btn[1].classList.remove("active");
		btn[2].classList.remove("active");
		btn[3].classList.remove("active");
	}
	 if($("#three-ex").offset().top - 240 <= scrollValue && scrollValue < $("#four-ex").offset().top - 240){
		btn[1].classList.add("active");
		btn[0].classList.remove("active");
		btn[2].classList.remove("active");
		btn[3].classList.remove("active");
	}
	 if($("#four-ex").offset().top - 240 <= scrollValue && scrollValue < $("#five-ex").offset().top - 240){
		btn[2].classList.add("active");
		btn[0].classList.remove("active");
		btn[1].classList.remove("active");
		btn[3].classList.remove("active");
	}
	 if($("#five-ex").offset().top - 240 <= scrollValue){
		btn[3].classList.add("active");
		btn[0].classList.remove("active");
		btn[1].classList.remove("active");
		btn[2].classList.remove("active");
	}

});

// FAQ 설정
$live.on("click", function(){
	$("#live").css("display", "block");
	$(this).addClass("active");
	$("#contract").css("display", "none");
	$contract.removeClass("active");
})

$contract.on("click", function(){
	$("#contract").css("display", "block");
	$(this).addClass("active");
	$("#live").css("display", "none");
	$live.removeClass("active");
}) 

// 프로필 펼쳐보기

$(".button-profile").on("click", function(){
	if($(this).parent().parent().next().css("display") == "none"){
	$(this).parent().parent().next().css("display", "table-row");
	$(this).text("닫기");
	}else{
		$(this).parent().parent().next().css("display", "none");
		$(this).text("펼쳐보기");
	}
});

// section#one 이미지에 active 효과주기
/*
 * $(".sub-wrapper").on("click", function(){
 * $(".sub-wrapper").removeClass("active"); $(this).addClass("active"); })
 */
const btns = document.querySelectorAll("div.sub-wrapper");
const arrows = document.querySelectorAll("div.slider");
const banner = document.querySelector("div#main-img");
const sub = document.querySelector("div#sub-img");
var count = 0;
var subCount = 0;
var check = false;

btns.forEach(function(value, index, ar){
        ar[index].addEventListener("click", function(){
        	$(".sub-wrapper").removeClass("active");
        	$(this).addClass("active");
        	if(count < index){
        		check = true;
        	}       	
        	count = index;
        	banner.style.transform = "translate(-" + count * 952 + "px)";
        	if(count > 2 && check == true && count < btns.length - 3){
        		subCount += 2;
        		sub.style.transform = "translate(-" + subCount * 158.5 + "px)";
        		if(count > btns.length - 4){
        			return;
        		}
        		subCount++;
        	}else if(count == btns.length - 3){
        		subCount--;
        		sub.style.transform = "translate(-" + subCount * 158.5 + "px)";
        	}
        })
    });

arrows.forEach((arrow) => {
	arrow.addEventListener("click", function(){
    let arrowType = arrow.classList[1];
    if(arrowType == 'prev-btn' && count != 0){
        count--;
        $(".sub-wrapper").removeClass("active");
        btns[count].classList.add("active");
    }else if(arrowType == 'next-btn' && count != btns.length - 1){
        count++;
        $(".sub-wrapper").removeClass("active");
        btns[count].classList.add("active");
    }else {
        if(count == btns.length - 1){
            count = 0;
            $(".sub-wrapper").removeClass("active");
            btns[count].classList.add("active");
        }else{
            count = btns.length-1;
            $(".sub-wrapper").removeClass("active");
        	btns[count].classList.add("active");
        }
    }
    banner.style.transform = "translate(-" + count * 952 + "px)";
});
});

/*
 * if( !$(this).data('video') ){ $('.main-photo').attr('src',
 * $(this).data('href')); var eq = $(this).closest('.slick-slide').index();
 * $('.add_slide').slick('slickGoTo',eq); }else{ $('#goods_video').append(
 * $(this).data('video') ); }
 * 
 * function imgChange(num){ var src = $('.main-photo').attr('src'); var obj =
 * $('.slick-slide img[src="'+src+'"]'); var eq =
 * obj.closest('.slick-slide').index(); var maxLength = $('.add_slide
 * .slick-slide').length-1;
 * 
 * eq += num; if(eq < 0 ){ eq = maxLength; }else if( eq > maxLength ){ eq = 0; }
 * $('.add_slide
 * .slick-slide').eq(eq).addClass('on').siblings().removeClass('on'); src =
 * $('.add_slide .slick-slide').eq(eq).find('img').attr('src');
 * $('.main-photo').attr('src',src); console.log(eq);
 * $('.add_slide').slick('slickGoTo',eq); }
 */

