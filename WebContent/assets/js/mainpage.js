var check1 = -1;
var check2 = -1;
var check3 = -1;
var count = 0;
var count2 = 0;
var count3 = 0;
const banner = document.querySelector("ul#content-wrap");
const arrows = document.getElementsByClassName("arrow_btn");
const slide = document.querySelector("div#slide-wrap div.flex_wrap");
const slideMobile = document
		.querySelector("div#slide-wrap-mobile div.flex_wrap-mobile");
setInterval(function() {
	count2++;
	count2 = count2 == 6 ? 0 : count2;
	slide.style.transform = "translateY(-" + count2 * 150 + "px)";
	slide.style.transition = "transform 0.7s";
}, 3000);

setInterval(function() {
	count3++;
	count3 = count3 == 6 ? 0 : count3;
	slideMobile.style.transform = "translateY(-" + count3 * 70 + "px)";
	slideMobile.style.transition = "transform 0.7s";
}, 3000);


$('#searchInput').keyup(function() {
	if ($('#filter-input input[type="text"]').val() == "") {
		$('#result-wrap').css("display","none")
	} else if ($('#filter-input input[type="text"]').val() != "") {
		$('#result-wrap').css("display", "block")
	}
})


$('#filter-input input[type="text"]').focus(function() {
	$('div#input-wrap').css("background-color", "white");
});



$('#filter-input input[type="text"]').blur(function() {
	if ($('#filter-input input[type="text"]').val() == "") {
		$('div#input-wrap').css("background-color", "transparent");
		$('#result-wrap').css("display","none")
	} else if ($('#filter-input input[type="text"]').val() != "") {
		$('div#input-wrap').css("background-color", "white");
		$('#result-wrap').css("display", "block")
	}
});

setInterval(function() {
	count++;
	count = count == 4 ? 0 : count;
	banner.style.transform = "translateX(-" + count * 450 + "px)";
	banner.style.transition = "transform 0.7s";
}, 7000);

arrows[0].addEventListener("click", function() {
	if (count > 0) {
		count--;
	} else {
		count = 3;
	}
	banner.style.transform = "translateX(-" + count * 450 + "px)";
	banner.style.transition = "transform 0.7s";
})

arrows[1].addEventListener("click", function() {
	if (count != 3) {
		count++;
	} else {
		count = 0;
	}
	banner.style.transform = "translateX(-" + count * 450 + "px)";
	banner.style.transition = "transform 0.3s";
})

$("#searchInput").keydown(function(key) {
	if (key.keyCode == 13) {
		search()
	}
});

function search() {
	if (!$("#searchInput").val()) {
		alert("검색어를 입력해주세요");
		return;
	}
	searchForm.submit();
}

$('#searchInput').keyup(function() {
	searchCount();
})

function searchCount() {
	var inputData = [];
	inputData = $('#searchInput').val();

	var mapContainer = document.getElementById('map'), mapOption = {
		center : new kakao.maps.LatLng(37.54699, 127.09598),
		level : 3
	};
	var map = new kakao.maps.Map(mapContainer, mapOption);

	var count = 0;
	var ps = new kakao.maps.services.Places();
	if (inputData != null) {
		kewwordSearch(inputData);
	}
	function kewwordSearch(keword) {
		ps.keywordSearch(keword, placesSearchCB);
	}
	function placesSearchCB(data, status, pagination) {
		if (status === kakao.maps.services.Status.OK) {
			var results = [];
			for (var i = 0; i < data.length; i++) {
				if (data[i].address_name.includes("서울")) {
					results.push(data[i]);
					continue;
				}
			}
			if (results.length == 15) {
				$("#result").text("검색결과가 15건 이상 있습니다.");
			}else if(results.length != 0){
				$("#result").text("검색결과가 " + results.length + "건 있습니다.");
			}else {
				$("#result").text("검색결과가 없습니다.");
			}
		}
	}
}