	var btn = document.getElementsByClassName("click");
	var $live = $("#live-wrap");
	var $contract = $("#contract-wrap");

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

$(window).scroll(function(){ 
	var scrollValue = $(document).scrollTop();
	console.log(scrollValue);
	if(scrollValue > 670){
		$("div.intro").addClass("introfix");
		$("div.tab").css("margin-top","60px");
	}else{
		$("div.intro").removeClass("introfix");	
		$("div.tab").css("margin-top","0");
	}

	if(1970 > scrollValue){
		btn[0].classList.add("active");
		btn[1].classList.remove("active");
		btn[2].classList.remove("active");
		btn[3].classList.remove("active");
	}
	 if(3775 > scrollValue && scrollValue >= 1970){
		btn[1].classList.add("active");
		btn[0].classList.remove("active");
		btn[2].classList.remove("active");
		btn[3].classList.remove("active");
	}
	 if(4100 > scrollValue && scrollValue >= 3775){
		btn[2].classList.add("active");
		btn[0].classList.remove("active");
		btn[1].classList.remove("active");
		btn[3].classList.remove("active");
	}
	 if(scrollValue >= 4100){
		btn[3].classList.add("active");
		btn[0].classList.remove("active");
		btn[1].classList.remove("active");
		btn[2].classList.remove("active");
		console.log("들어옴");
	}

});

$live.on("click", function(){
	$("#live").css("display", "inline-block");
	$(this).addClass("active");
	$("#contract").css("display", "none");
	$contract.removeClass("active");
})

$contract.on("click", function(){
	$("#contract").css("display", "inline-block");
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
