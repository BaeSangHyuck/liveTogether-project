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
			text += '</div></div></div></div>'
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
							text += '<div class="table-cell" data-index="' + index + '">'
							text += '<div class="cell-wrap" data-index="' + index + '">'
							text += '<div class="img-wrap" style="background:url(\''
									+ contextPath
									+ '/upload/'
									+ room.housefileName
									+ '\'); background-size:cover" data-index="' + index + '"></div>'
							text += '<div class="content-wrapper" data-index="' + index + '">'
							text += '<div class="content" data-index="' + index + '">'
							text += '<span class="name" data-index="' + index + '">' + room.houseNumber
									+ '호점</span><span class="gu" data-index="' + index + '">(보증금'
									+ room.roomDeposit + '/월'
									+ room.roomMonthly + ')</span>'
							text += '</div>'
							text += '<div class="content content2" data-index="' + index + '">'
							text += '<span class="gender-division" data-index="' + index + '">'
									+ houseGender + '</span>'
							text += '<span class="concept" data-index="' + index + '">'
									+ houseType
									+ '</span><span class="opened-beds" style="display: inline;" data-index="' + index + '">신청가능 '
							text += '<span class="opened-beds-count " data-index="' + index + '">'
									+ room.houseMax + '</span>'
							text += '</span><span class="opened-beds" style="display: none;" data-index="' + index + '">예약가능</span>'
							text += '</div></div></div></div>'
						});
	} else {
		// 댓글 없음
		text = "<p>게시글이 없습니다.</p>";
	}

	$(".table-row").html(text);

	filter_wrap.style.transform = "translateX(-40vw)";
	filter_wrap.style.transition = "transform 0.5s";
	check=-1;
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(37.541, 126.986), // 지도의 중심좌표
		level : 7
	// 지도의 확대 레벨
	};

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption);
		var clusterer = new kakao.maps.MarkerClusterer({
			map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
			averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
			minLevel : 10
		// 클러스터 할 최소 지도 레벨 
		});
		var infos = [];
		var markers = [];
		for (var i = 0; i < rooms.length; i++) {
			var marker = new kakao.maps.Marker({
				position : new kakao.maps.LatLng(rooms[i].lat,
						rooms[i].lng)
			});

			// 클러스터러에 마커들을 추가합니다
			markers[i] = marker;
			var text = "";
			var houseGender;
			var houseType;
			if (rooms[i].houseGender == "m") {
				houseGender = "남성전용";
			} else if (rooms[i].houseGender == "w") {
				houseGender = "여성전용";
			} else if (rooms[i].houseGender == "o") {
				houseGender = "남녀공용";
			}
			if (rooms[i].houseType == "a") {
				houseType = "아파트";
			} else if (rooms[i].houseType == "v") {
				houseType = "빌라";
			} else if (rooms[i].houseType == "d") {
				houseType = "단독주택";
			} else if (rooms[i].houseType == "o") {
				houseType = "기타";
			}
			text += '<div class="table-cells">'
			text += '<a href=' + contextPath
					+ '/house/HouseDetailOk.ho?houseNumber='
					+ rooms[i].houseNumber
					+ ' target="_blank">'
			text += '<div class="cell-wrap2">'
			text += '<div class="img-wrap1" style="background:url(\''
					+ contextPath + '/upload/'
					+ rooms[i].housefileName
					+ '\'); background-size:cover"></div>'
			text += '<div class="content-wrapper1">'
			text += '<div class="content1">'
			text += '<span class="name">'
					+ rooms[i].houseNumber
					+ '호점</span><span class="gu">(보증금'
					+ rooms[i].roomDeposit + '/월'
					+ rooms[i].roomMonthly + ')</span>'
			text += '</div>'
			text += '<div class="content content2">'
			text += '<span class="gender-division">' + houseGender + '</span>'
			text += '<span class="concept">'
					+ houseType
					+ '</span><span class="opened-beds" style="display: inline;">신청가능 '
			text += '<span class="opened-beds-count ">'
					+ rooms[i].houseMax + '</span>'
			text += '</span><span class="opened-beds" style="display: none;">예약가능</span>'
			text += '</div></div></div></a></div>'
			var infowindow = new kakao.maps.InfoWindow({
				content : text
			// 인포윈도우에 표시할 내용 
			});
			infos.push(infowindow);
			clusterer.addMarkers(markers);
		}
		var checks = new Array();
		$.each(markers, function(index, item) {
			kakao.maps.event.addListener(item, "click", function() {
				
				infos.forEach(function(each) {
					each.close();
				}); // 생성한 인포윈도우를 모두 닫아줍니다.
				if (checks[index]) {
					infos[index].close(map, item);
					checks[index] = false;
					return;
				}
				infos[index].open(map, item); // 마커에 맞는 인포윈도우를 열어줍니다.
				checks[index] = true;
				map.panTo(new kakao.maps.LatLng(rooms[index].lat,
						rooms[index].lng));
			});
		});
		
		$(".table-row").click(".table-cell", function(e){
			var index = $(e.target).data("index");
			 infos.forEach(function(each) {
				each.close();
			}); // 생성한 인포윈도우를 모두 닫아줍니다.
			if (checks[index]) {
				infos[index].close(map, markers[index]);
				checks[index] = false;
				return;
			}
			infos[index].open(map, markers[index]); // 마커에 맞는 인포윈도우를 열어줍니다.
			map.panTo(new kakao.maps.LatLng(rooms[index].lat,rooms[index].lng));
			
			checks[index] = true; 
		});
	
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


