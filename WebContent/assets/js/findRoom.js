const nav = document.getElementById('nav');
const open = document.getElementById('open_img');
const close = document.getElementById('open_img2');
const filter = document.getElementById("img_wrap");
const filter_wrap = document.getElementById("filter-wrap");
var check=-1;

open.addEventListener("click", function() {
    open.style.display = "none";
	close.style.display = "block";
	nav.style.transform = "translateX(40vw)";
	nav.style.transition = "transform 0.5s";
})

close.addEventListener("click", function() {
    open.style.display = "block";
	close.style.display = "none";
	nav.style.transform = "translateX(0)";
	nav.style.transition = "transform 0.5s";
	check = -1;
    filter_wrap.style.transform = "translateX(-40vw)";
})

mapContainer.addEventListener("click", function() {
    open.style.display = "block";
	close.style.display = "none";
	nav.style.transform = "translateX(0)";
	nav.style.transition = "transform 0.5s";
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
//     checkcount1*=-1;
//     if(checkcount1>0){
//         check1.checked=true;
//         check1.parentElement.style.background="#1187CF";
//         check1.parentElement.lastElementChild.firstElementChild.style.color="white";
//     }else{
//         check1.checked=false;
//         check1.parentElement.style.background="white";
//         check1.parentElement.lastElementChild.firstElementChild.style.color="black";
//     }

// })











