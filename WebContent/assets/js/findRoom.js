const navfilter = document.getElementById('nav-filter');
const open = document.getElementById('open_img');
const close = document.getElementById('open_img2');
const filter = document.getElementById("img_wrap");
const filter_wrap = document.getElementById("filter-wrap");
const like_btn = document.getElementById("btnh1");
const heart = document.querySelector("i.fa-heart");
const divMap = document.getElementById("map");
var check = -1;

getList();

// 하우스 목록
function getList() {
	$.ajax({
		url : contextPath + "/house/HouseListOk.ho",
		type : "get",
		dataType : "json",
		success : showList,
		error : function(a, b, c) {
			console.log("오류" + c);
		}
	});
}

// 하우스 목록 써주기
function showList(houses) {
	console.log(houses);
	var text = "";
	if (houses != null && houses.length != 0) {
		$.each(houses, function(index, house) {

			var houseGender;
			var houseType;
			if (house.houseGender == "m") {
				houseGender = "남성전용";
			} else if (house.houseGender == "w") {
				houseGender = "여성전용";
			} else if (house.houseGender == "o") {
				houseGender = "남녀공용";
			}
			if (house.houseType == "a") {
				houseType = "아파트";
			} else if (house.houseType == "v") {
				houseType = "빌라";
			} else if (house.houseType == "d") {
				houseType = "단독주택";
			} else if (house.houseType == "o") {
				houseType = "기타";
			}
			text += '<div class="table-cell" data-index="' + index + '">'
			text += '<div class="cell-wrap" data-index="' + index + '">'
			text += '<div class="img-wrap" data-index="' + index
					+ '" style="background:url(\'' + contextPath + '/upload/'
					+ house.housefileName
					+ '\'); background-size:cover"></div>'
			text += '<div class="content-wrapper" data-index="' + index + '">'
			text += '<div class="content" data-index="' + index + '">'
			text += '<span class="name" data-index="' + index + '">'
					+ house.houseNumber
					+ '호점</span><span class="gu" data-index="' + index
					+ '">(보증금' + house.roomDeposit + '/월' + house.roomMonthly
					+ ')</span>'
			text += '</div>'
			text += '<div class="content content2" data-index="' + index + '">'
			text += '<span class="gender-division" data-index="' + index + '">'
					+ houseGender + '</span>'
			text += '<span class="concept" data-index="' + index + '">'
					+ houseType
					+ '</span><span class="opened-beds" data-index="' + index
					+ '" style="display: inline;">신청가능 '
			text += '<span class="opened-beds-count " data-index="' + index
					+ '">' + house.houseMax + '</span>'
			text += '</span><span class="opened-beds" data-index="' + index
					+ '" style="display: none;">예약가능</span>'
			text += '</div></div></div></a></div>'
		});
	} else {
		// 댓글 없음
		text = "<p>게시글이 없습니다.</p>";
	}

	$(".table-row").html(text);

}

function toggle() {
	// 전체보기
	if (heart.style.color == "white") {
		heart.style.color = "red"
		// 찜목록 불러오는 그걸 쓰고
	} else {
		heart.style.color = "white"
		// 전체리스트 가져오는걸 쓴다
	}
}

open.addEventListener("click", function() {
	if (matchMedia("screen and (min-width: 415px)").matches) {
		open.style.display = "none";
		close.style.display = "block";
		navfilter.style.transform = "translateX(40vw)";
		navfilter.style.transition = "transform 0.5s";
		$(divMap).css("width", $(divMap).width() - $(navfilter).width() + "");
		$(divMap).css("margin-left", "auto");
		mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center : new kakao.maps.LatLng(37.541, 126.986), // 지도의 중심좌표
			level : 9
		// 지도의 확대 레벨
		};

		// 지도를 표시할 div와 지도 옵션으로 지도를 생성합니다
		map = new kakao.maps.Map(mapContainer, mapOption);
		$.ajax({
			url : contextPath + "/house/HousePositionOk.ho",
			type : "get",
			success : jsons,
			error : function(a, b, c) {
				console.log("오류" + c);
			},
			async : false
		});
	} else {
		open.style.display = "none";
		close.style.display = "block";
		navfilter.style.transform = "translateX(81vw)";
		navfilter.style.transition = "transform 0.5s";

	}

})

close.addEventListener("click", function() {

	if (matchMedia("screen and (min-width: 415px)").matches) {
		open.style.display = "block";
		close.style.display = "none";
		navfilter.style.transform = "translateX(0)";
		navfilter.style.transition = "transform 0.5s";
		check = -1;
		filter_wrap.style.transform = "translateX(-40vw)";
		$(divMap).css("margin", "0");
		$(divMap).css("width", "100%");
		mapContainer = document.getElementById('map'), // 지도를 표시할 div
		mapOption = {
			center : new kakao.maps.LatLng(37.541, 126.986), // 지도의 중심좌표
			level : 10
		// 지도의 확대 레벨
		};
		map = new kakao.maps.Map(mapContainer, mapOption);
		$.ajax({
			url : contextPath + "/house/HousePositionOk.ho",
			type : "get",
			success : jsons,
			error : function(a, b, c) {
				console.log("오류" + c);
			},
			async : false
		});
	} else {
		open.style.display = "block";
		close.style.display = "none";
		navfilter.style.transform = "translateX(0)";
		navfilter.style.transition = "transform 0.5s";

	}
})

filter.addEventListener("click", function() {
	check *= -1;
	if (check > 0) {
		filter_wrap.style.transform = "translateX(40vw)";
		filter_wrap.style.transition = "transform 0.5s";
	} else {
		filter_wrap.style.transform = "translateX(-40vw)";
		filter_wrap.style.transition = "transform 0.5s";
	}
})

// 월세 최댓값이 최솟값보다 작으면 최댓값을 최솟값에 맞춰주기
$("select[name='max']").change(
		function() {
			if (Number($(this).val()) < Number($("select[name='min']").val())) {
				$(this).val(Number($("select[name='min']").val())).prop(
						"selected", true);
			}
		})

// 월세 최솟값이 최댓값보다 커지면 최댓값을 최솟값에 맞춰주기
$("select[name='min']").change(
		function() {
			if (Number($(this).val()) > Number($("select[name='max']").val())) {
				$("select[name='max']").val(Number($(this).val())).prop(
						"selected", true);
			}
		})

// const inputLeft = document.getElementById("input-left");
// const inputRight = document.getElementById("input-right");
//
// const thumbLeft = document.querySelector(".slider > .thumb.left");
// const thumbRight = document.querySelector(".slider > .thumb.right");
// const range = document.querySelector(".slider > .range");
//
// const setLeftValue = () =>
// { const _this = inputLeft;
// const [min, max] = [parseInt(_this.min), parseInt(_this.max)];
// _this.value = Math.min(parseInt(_this.value), parseInt(inputRight.value) -
// 1);
//
// const percent = ((_this.value - min) / (max - min)) * 100;
// thumbLeft.style.left = percent + "%";
// range.style.left = percent + "%";
// }
//
// const setRightValue = () => {
// const _this = inputRight;
// const [min, max] = [parseInt(_this.min), parseInt(_this.max)];
//    
// _this.value = Math.max(parseInt(_this.value), parseInt(inputLeft.value) + 1);
//    
// const percent = ((_this.value - min) / (max - min)) * 100;
// thumbRight.style.right = 100 - percent + "%";
// range.style.right = 100 - percent + "%";
// };
// inputLeft.addEventListener("input", setLeftValue);
// inputRight.addEventListener("input", setRightValue);

// const check1 =document.getElementById("check1");
// const check2 =document.getElementById("check2");
// const check3 =document.getElementById("check3");
// const check4 =document.getElementById("check4");
// const check5 =document.getElementById("check5");
// const check6 =document.getElementById("check6");
// const check7 =document.getElementById("check7");
// const check8 =document.getElementById("check8");
// const check9 =document.getElementById("check9");
// const check10 =document.getElementById("check10");

// const test = document.getElementById("test");
// console.log(check1.parentElement);
// console.log(check1);
// console.log(check1.parentElement.lastElementChild.firstElementChild);

// var checkcount1 = -1;

// check1.parentElement.addEventListener("click",function(){
// checkcount1*=-1;
// if(checkcount1>0){
// check1.checked=true;
// check1.parentElement.style.background="#1187CF";
// check1.parentElement.lastElementChild.firstElementChild.style.color="white";
// }else{
// check1.checked=false;
// check1.parentElement.style.background="white";
// check1.parentElement.lastElementChild.firstElementChild.style.color="black";
// }

// })
// console.log($("select[name=min]").val());
// 조건검색 실행 목록

$("#findbtn").on("click", function findList() {
	$.ajax({
		url : contextPath + "/house/HouseFindRoom.ho",
		type : "get",
		data : $("#findForm").serialize(),
		dataType : "json",
		contentType : "application/json;charset=utf-8",
		success : showRoomList,
		error : function(a, b, c) {
			console.log("오류" + c);
		}
	});
})
// $("#findbtn").on("click", function findList() {
// $.ajax({
// url : contextPath + "/house/HouseFindRoom.ho",
// type : "get",
// data : {
// "min" : $("select[name=min]").val(),
// "max" : $("select[name=max]").val(),
// "houseGender" : $("input[name=houseGender]").val(),
// "houseType" : $("input[name=houseType]").val(),
// "roomType" : $("input[name=roomType]").val(),
// "roomDate" : $("input[name=roomDate]").val(),
// },
// dataType : "json",
// contentType : "application/json;charset=utf-8",
// success : showRoomList,
// error : function(a, b, c) {
// console.log("오류" + c);
// }
// });
// })

// 조건검색한 후 방들 써주기
function showRoomList(rooms) {
	var text = "";
	if (rooms != null && rooms.length != 0) {
		$
				.each(
						rooms,
						function(index, room) {
							var houseGender;
							var houseType;
							if (room.houseGender == "m") {
								houseGender = "남성전용";
							} else if (room.houseGender == "w") {
								houseGender = "여성전용";
							} else if (room.houseGender == "o") {
								houseGender = "남녀공용";
							}
							if (room.houseType == "a") {
								houseType = "아파트";
							} else if (room.houseType == "v") {
								houseType = "빌라";
							} else if (room.houseType == "d") {
								houseType = "단독주택";
							} else if (room.houseType == "o") {
								houseType = "기타";
							}
							text += '<div class="table-cell">'
							text += '<a href=' + contextPath
									+ '/house/HouseDetailOk.ho?houseNumber='
									+ room.houseNumber + ' target="_blank">'
							text += '<div class="cell-wrap">'
							text += '<div class="img-wrap" style="background:url(\''
									+ contextPath
									+ '/upload/'
									+ room.housefileName
									+ '\'); background-size:cover"></div>'
							text += '<div class="content-wrapper">'
							text += '<div class="content">'
							text += '<span class="name">' + room.houseNumber
									+ '호점</span><span class="gu">(보증금'
									+ room.roomDeposit + '/월'
									+ room.roomMonthly + ')</span>'
							text += '</div>'
							text += '<div class="content content2">'
							text += '<span class="gender-division">'
									+ houseGender + '</span>'
							text += '<span class="concept">'
									+ houseType
									+ '</span><span class="opened-beds" style="display: inline;">신청가능 '
							text += '<span class="opened-beds-count ">'
									+ room.houseMax + '</span>'
							text += '</span><span class="opened-beds" style="display: none;">예약가능</span>'
							text += '</div></div></div></a></div>'
						});
	} else {
		// 댓글 없음
		text = "<p>게시글이 없습니다.</p>";
	}

	$(".table-row").html(text);
}

function send() {
	findForm.submit();
}

$("#searchA").click(function search() {
var inputData=[];
inputData=$('#searchInput').val();

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
		mapOption = {
				center : new kakao.maps.LatLng(data[0].y, data[0].x), // 지도의 중심좌표
				level : 7
			// 지도의 확대 레벨
			};
			map = new kakao.maps.Map(mapContainer, mapOption);
	}
	$.ajax({
		url : contextPath + "/house/HousePositionOk.ho",
		type : "get",
		success : jsons,
		error : function(a, b, c) {
			console.log("오류" + c);
		},
		async : false
	});
}
$('#searchInput').val("");
})


    $('#searchInput').keydown(function(key) {
                if (key.keyCode == 13) {
                	var inputData=[];
                	inputData=$('#searchInput').val();

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
                			mapOption = {
                					center : new kakao.maps.LatLng(data[0].y, data[0].x), // 지도의 중심좌표
                					level : 7
                				// 지도의 확대 레벨
                				};
                				map = new kakao.maps.Map(mapContainer, mapOption);
                		}
                		$.ajax({
                			url : contextPath + "/house/HousePositionOk.ho",
                			type : "get",
                			success : jsons,
                			error : function(a, b, c) {
                				console.log("오류" + c);
                			},
                			async : false
                		});
                	}
                	$('#searchInput').val("");
                }})


