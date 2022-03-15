const navfilter = document.getElementById('nav-filter');
const open = document.getElementById('open_img');
const close = document.getElementById('open_img2');
const filter = document.getElementById("img_wrap");
const filter_wrap = document.getElementById("filter-wrap");
const like_btn = document.getElementById("btnh1");
const heart = document.querySelector("i.fa-heart");
var check=-1;


getList();

// 댓글 목록
function getList(){
   $.ajax({
       url: contextPath + "/house/HouseListOk.ho",
       type: "get",
       dataType: "json",
       contentType: "application/json;charset=utf-8",
       success: showList,
       error: function(a, b, c){
           console.log("오류" + c);
       }
   });
}

// 댓글 목록
function showList(rooms){
    var text = "";
    if(rooms != null && rooms.length != 0){
        $.each(rooms, function(index, room){
        	var roomGender;
        	if(room.roomGender=="m"){
        		roomGender="남성전용";
        	}else if(room.roomGender=="f"){
        		roomGender="여성전용"
        	}
			text+='<div class="table-cell">'
			text+='<a href="roomDetail.jsp" target="_blank">'
			text+='<div class="cell-wrap">'
			text+='<div class="img-wrap"></div>'
			text+='<div class="content-wrapper">'
			text+='<div class="content">'
			text+='<span class="name">'+room.houseNumber+'호점</span><span class="gu">(보증금'+room.roomDeposit+'/월'+room.roomMonthly+')</span>'
			text+='</div>'
			text+='<div class="content content2">'
			text+='<span class="gender-division">'+roomGender+'</span>'
			text+='<span class="concept"> 빌라</span><span class="opened-beds" style="display: inline;">신청가능 '
			text+='<span class="opened-beds-count ">'+room.roomType+'</span>'
			text+='</span><span class="opened-beds" style="display: none;">예약가능</span>'
			text+='</div></div></div></a></div>'
        });
    }else{
        // 댓글 없음
        text = "<p>게시글이 없습니다.</p>";
    }

   $(".table-row").html(text);
}




function toggle(){
	// 전체보기
	if(heart.style.color=="white"){
		heart.style.color="red"
		// 찜목록 불러오는 그걸 쓰고
	}
	else{
		heart.style.color="white"
		// 전체리스트 가져오는걸 쓴다
	}
}



open.addEventListener("click", function() {
	if (matchMedia("screen and (min-width: 415px)").matches) {  	
		open.style.display = "none";
		close.style.display = "block";
		navfilter.style.transform = "translateX(40vw)";
		navfilter.style.transition = "transform 0.5s";
	}
	else{  	
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
	}else{
		open.style.display = "block";
		close.style.display = "none";
		navfilter.style.transform = "translateX(0)";
		navfilter.style.transition = "transform 0.5s";
	}
})

mapContainer.addEventListener("click", function() {
    open.style.display = "block";
	close.style.display = "none";
	navfilter.style.transform = "translateX(0)";
	navfilter.style.transition = "transform 0.5s";
})

filter.addEventListener("click",function(){
    check*=-1;
    if(check>0){
        filter_wrap.style.transform = "translateX(40vw)";
        filter_wrap.style.transition = "transform 0.5s";
    }else{
        filter_wrap.style.transform = "translateX(-40vw)";
        filter_wrap.style.transition = "transform 0.5s";
    }
})



const inputLeft = document.getElementById("input-left"); 
const inputRight = document.getElementById("input-right");

const thumbLeft = document.querySelector(".slider > .thumb.left");
const thumbRight = document.querySelector(".slider > .thumb.right");
const range = document.querySelector(".slider > .range");

const setLeftValue = () => 
{ const _this = inputLeft;
    const [min, max] = [parseInt(_this.min), parseInt(_this.max)];
_this.value = Math.min(parseInt(_this.value), parseInt(inputRight.value) - 1);

const percent = ((_this.value - min) / (max - min)) * 100;
thumbLeft.style.left = percent + "%";
range.style.left = percent + "%";
}

const setRightValue = () => {
    const _this = inputRight;
	const [min, max] = [parseInt(_this.min), parseInt(_this.max)];
    
	_this.value = Math.max(parseInt(_this.value), parseInt(inputLeft.value) + 1);
    
	const percent = ((_this.value - min) / (max - min)) * 100;
	thumbRight.style.right = 100 - percent + "%";
	range.style.right = 100 - percent + "%";
};
inputLeft.addEventListener("input", setLeftValue);
inputRight.addEventListener("input", setRightValue);

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











