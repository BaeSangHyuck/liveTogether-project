var check1 = -1;
var check2 = -1;
var check3 = -1;
var count=0;
const banner = document.querySelector("ul#content-wrap");
const arrows = document.getElementsByClassName("arrow_btn");

setInterval(function(){
	count++;
	count=count==3?0:count;
	banner.style.transform = "translateX(-" + count * 423 + "px)";
	banner.style.transition ="transform 0.7s";
},7000);

arrows[0].addEventListener("click",function(){
    if(count>0){
        count--;
    }else{
    	count=2;
    }
    banner.style.transform = "translateX(-" + count * 423 + "px)";
    banner.style.transition ="transform 0.7s";
})

arrows[1].addEventListener("click",function(){
	if(count!=2){
		count++;
	}else{
		count=0;
	}
	banner.style.transform = "translateX(-" + count * 423 + "px)";
	banner.style.transition ="transform 0.3s";
})


function change1(id){
check1 *= -1;
var arrow = document.querySelectorAll('div#'+id+' span');
var div = document.querySelector('div#'+id);
var show = div.parentElement.lastElementChild;
if(check1>0){
    arrow[0].style.transform="rotate(-45deg)";
    arrow[1].style.transform="rotate(45deg)";
    show.style.display="block";
}else{
    arrow[0].style.transform="rotate(45deg)";
    arrow[1].style.transform="rotate(-45deg)";
    show.style.display="none";
}
}
function change2(id){
check2 *= -1;
var arrow = document.querySelectorAll('div#'+id+' span');
var div = document.querySelector('div#'+id);
var show = div.parentElement.lastElementChild;
if(check2>0){
    arrow[0].style.transform="rotate(-45deg)";
    arrow[1].style.transform="rotate(45deg)";
    show.style.display="block";
}else{
    arrow[0].style.transform="rotate(45deg)";
    arrow[1].style.transform="rotate(-45deg)";
    show.style.display="none";
}
}
function change3(id){
check3 *= -1;
var arrow = document.querySelectorAll('div#'+id+' span');
var div = document.querySelector('div#'+id);
var show = div.parentElement.lastElementChild;
if(check3>0){
    arrow[0].style.transform="rotate(-45deg)";
    arrow[1].style.transform="rotate(45deg)";
    show.style.display="block";
}else{
    arrow[0].style.transform="rotate(45deg)";
    arrow[1].style.transform="rotate(-45deg)";
    show.style.display="none";
}
}
