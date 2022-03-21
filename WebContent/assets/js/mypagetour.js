
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

	


