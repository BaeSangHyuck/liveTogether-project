var btn = document.getElementsByClassName("click"); //앵커 후 스타일 주기위한 버튼
	var $live = $("#live-wrap"); 
	var $contract = $("#contract-wrap");
	var headerHeight = $("header").outerHeight(); //헤더길이
	
	//헤더길이에 따라 스크롤위치 잡아주기
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
    console.log(scrollValue);
	console.log($("#two-ex").offset().top);
	console.log($("#three-ex").offset().top);
	console.log($("#four-ex").offset().top);
	console.log($("#five-ex").offset().top);
	if(scrollValue > 830){
		$("div.intro").addClass("introfix");
		$("div.tab").css("margin-top","60px");
	}else{
		$("div.intro").removeClass("introfix");	
		$("div.tab").css("margin-top","0");
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


// function click(event) {
// 	console.log(this);
//   if(this.classList[1] === "clicked") {
// 	this.classList.remove("clicked");
//   } else {
// 	for (var i = 0; i < btn.length; i++) {
// 	  btn[i].classList.remove("clicked");
// 	}
// 	this.classList.add("clicked");
//   }
// }
// function success() {
//   for (var i = 0; i < btn.length; i++) {
// 	btn[i].addEventListener("click", click);
//   }
// }
// success();