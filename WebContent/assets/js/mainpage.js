var check1 = -1;
var check2 = -1;
var check3 = -1;
function change1(id){
check1 *= -1;
var arrow = document.querySelectorAll('div#'+id+' span');
var div = document.querySelector('div#'+id);
var show = div.parentElement.lastElementChild;
console.log(show);
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