// 메인 메뉴
const div = document.querySelector('#header');

// 서브 메뉴
const over = document.querySelectorAll('.mouseover');

// 메뉴 펼치기
div.addEventListener("mouseover",function(){
    for(let i=0; i<over.length; i++){
        over[i].style.display='block';
    }
})

// 메뉴 닫기
div.addEventListener("mouseout",function(){
    for(let i=0; i<over.length; i++){
        over[i].style.display='none';
    }
})

const button= document.querySelector("label#icon-label");
const nav= document.querySelector("nav#nav-mobile");

var check=-1;

button.addEventListener("click",function(){
	check*=-1;
	if(check>0){
		nav.style.display="block";
	}else {
		nav.style.display="none";
	}
})