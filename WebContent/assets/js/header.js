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