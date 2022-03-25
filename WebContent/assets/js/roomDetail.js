//투어신청 버튼
const tour = document.getElementsByClassName("button-tour");

Array.from(tour).forEach((t) => {
    // 현재 .test에 click 이벤트를 건다.
    t.addEventListener('click', function () {
       var genderText = t.parentElement.parentElement.firstElementChild.nextElementSibling.innerText;
       var check = "";
       if(genderText == "남성전용"){
          check = "m";
       }else{
          check = "w";
       }
       if(memberId != ""){
          if(memberGender == check && memberType == "n"){
             if(confirm("투어신청 하시겠습니까?")){
                $.ajax({
                   url : contextPath + "/member/MemberMypageTourOk.me",                   
                   type : "get",
                   data : {"houseNumber": houseNumber,"roomName":t.parentElement.parentElement.firstElementChild.innerHTML},
                   success : alert("투어신청이 완료되었습니다"),
                   error : function(a, b, c) {
                      console.log("오류" + c);
                   }
                });
             }else{
                 return false;
             }
          }else{
             alert("성별이 일치하지 않거나 일반계정이 아닙니다.");
             return;
          }       
       }else{
          if(confirm("로그인 후 이용하실 수 있습니다. 로그인 페이지로 이동하시겠습니까?")){
             window.location.replace(contextPath + '/member/Login.me');
          }
          return;             
       }
           
    })
});

// 투어신청 이미지 클릭
$(".tour-img").on("mouseover", function(){
   $(".tour-guide").css("display","block");
})

$(".tour-img").on("mouseout", function(){
   $(".tour-guide").css("display","none");
})

$(function () {
    $(".goingtour").on("click", function(){
       var href = $(this).attr("href");
       var target = $(href == "#" || href == "" ? "body" : href);
       var position = target.offset().top - headerHeight;
       $("html, body").animate({ scrollTop: position }, 600, "swing");
    });
 });


var btn = document.getElementsByClassName("click"); // 앵커 후 스타일 주기위한 버튼
   var $live = $("#live-wrap"); 
   var $contract = $("#contract-wrap");
   var headerHeight = $("header").outerHeight(); // 헤더길이
   
   
   // 헤더길이에 따라 스크롤위치 잡아주기
   $(function () {
      $(".button.primary.click").on("click", function(){
         var href = $(this).attr("href");
         var target = $(href == "#" || href == "" ? "body" : href);
         var position = target.offset().top - headerHeight;
         $("html, body").animate({ scrollTop: position }, 600, "swing");
      });
   });

// 버튼 클릭시 액티브클래스(색변경) 주기

function success() {
  for (var i = 0; i < btn.length; i++) {
      btn[i].addEventListener("click", function click(event) {
  
      for (var i = 0; i < btn.length; i++) {
        btn[i].classList.remove("active");
      }
      this.classList.add("active");
   });
  }
}
success();

// 스크롤 위치에 따라 액티브클래스(색변경) 주기
$(window).scroll(function(){ 
    var scrollValue = $(document).scrollTop();
    if (matchMedia("screen and (min-width: 415px)").matches){ 
       if(scrollValue > 1119){
          $("div.intro").addClass("introfix");
          $("div.review").css("margin-top","200px");
       }else{
          $("div.intro").removeClass("introfix");   
          $("div.review").css("margin-top","0");
       }
    }else { 
       if(scrollValue > 517){
          $("div.intro").addClass("introfix");
          $("div.review").css("margin-top","200px");
       }else{
          $("div.intro").removeClass("introfix");   
          $("div.review").css("margin-top","0");
       }
    }
    if(matchMedia("screen and (min-width: 415px)").matches){ 
   if($(".tab").offset().top - 240 > scrollValue)
   btn[0].classList.add("active");
   btn[1].classList.remove("active");
    btn[2].classList.remove("active");
    btn[3].classList.remove("active");
    btn[4].classList.remove("active");

   if($(".tab").offset().top - 240 <= scrollValue && scrollValue < $("#three-ex").offset().top - 240){
      btn[0].classList.remove("active");
      btn[1].classList.add("active");
      btn[2].classList.remove("active");
      btn[3].classList.remove("active");
      btn[4].classList.remove("active");
   }
    if($("#three-ex").offset().top - 240 <= scrollValue && scrollValue < $("#four-ex").offset().top - 240){
      btn[0].classList.remove("active");
      btn[1].classList.remove("active");
      btn[2].classList.add("active");
      btn[3].classList.remove("active");
      btn[4].classList.remove("active");
   }
    if($("#four-ex").offset().top - 240 <= scrollValue && scrollValue < $("#five-ex").offset().top - 240){
      btn[0].classList.remove("active");
      btn[1].classList.remove("active");
      btn[2].classList.remove("active");
      btn[3].classList.add("active");
      btn[4].classList.remove("active");
   }
    if($("#five-ex").offset().top - 240 <= scrollValue){
      btn[0].classList.remove("active");
      btn[1].classList.remove("active");
      btn[2].classList.remove("active");
      btn[3].classList.remove("active");
      btn[4].classList.add("active");
   }
    }else{
       if($(".tab").offset().top - 120 > scrollValue)
          btn[0].classList.add("active");
          btn[1].classList.remove("active");
           btn[2].classList.remove("active");
           btn[3].classList.remove("active");
           btn[4].classList.remove("active");

          if($(".tab").offset().top - 120 <= scrollValue && scrollValue < $("#three-ex").offset().top - 120){
             btn[0].classList.remove("active");
             btn[1].classList.add("active");
             btn[2].classList.remove("active");
             btn[3].classList.remove("active");
             btn[4].classList.remove("active");
          }
           if($("#three-ex").offset().top - 120 <= scrollValue && scrollValue < $("#four-ex").offset().top - 120){
             btn[0].classList.remove("active");
             btn[1].classList.remove("active");
             btn[2].classList.add("active");
             btn[3].classList.remove("active");
             btn[4].classList.remove("active");
          }
           if($("#four-ex").offset().top - 120 <= scrollValue && scrollValue < $("#five-ex").offset().top - 120){
             btn[0].classList.remove("active");
             btn[1].classList.remove("active");
             btn[2].classList.remove("active");
             btn[3].classList.add("active");
             btn[4].classList.remove("active");
          }
           if($("#five-ex").offset().top - 120 <= scrollValue){
             btn[0].classList.remove("active");
             btn[1].classList.remove("active");
             btn[2].classList.remove("active");
             btn[3].classList.remove("active");
             btn[4].classList.add("active");
          }
    }

});

// FAQ 설정
$live.on("click", function(){
   $("#live").css("display", "block");
   $(this).addClass("active");
   $("#contract").css("display", "none");
   $contract.removeClass("active");
})

$contract.on("click", function(){
   $("#contract").css("display", "block");
   $(this).addClass("active");
   $("#live").css("display", "none");
   $live.removeClass("active");
}) 

// 룸 사진클릭하면 active를 주기 위한 변수
const btns = document.querySelectorAll("div.sub-wrapper");
// < > 클릭시 방 사진 이동하는 배너를 위한 변수
const arrows = document.querySelectorAll("div.slider");
// 이미지 변경 하기 위한 변수
const banner = document.querySelector("div#main-img");
var count = 0;


btns.forEach(function(value, index, ar){
        ar[index].addEventListener("click", function(){
           $(".sub-wrapper").removeClass("active");
           $(this).addClass("active");        
           count = index;
           if (matchMedia("screen and (min-width: 415px)").matches){ 
               banner.style.transform = "translate(-" + count * 1046 + "px)";
               }else{
                  banner.style.transform = "translate(-" + count * 352 + "px)";
               }
        })
    });

arrows.forEach((arrow) => {
   arrow.addEventListener("click", function(){
    let arrowType = arrow.classList[1];
    if(arrowType == 'prev-btn' && count != 0){
        count--;
        $(".sub-wrapper").removeClass("active");
        btns[count].classList.add("active");
    }else if(arrowType == 'next-btn' && count != btns.length - 1){
        count++;
        $(".sub-wrapper").removeClass("active");
        btns[count].classList.add("active");
    }else {
        if(count == btns.length - 1){
            count = 0;
            $(".sub-wrapper").removeClass("active");
            btns[count].classList.add("active");
        }else{
            count = btns.length-1;
            $(".sub-wrapper").removeClass("active");
           btns[count].classList.add("active");
        }
    }
    if (matchMedia("screen and (min-width: 415px)").matches){ 
    banner.style.transform = "translate(-" + count * 1046 + "px)";
    }else{
       banner.style.transform = "translate(-" + count * 352 + "px)";
    }
});
});

// 프로필 띄우기
var profiles = document.querySelectorAll("b.showProfile");
var profilewrap = document.querySelectorAll("div.profiles-wrap");

profiles.forEach(function(value, index, ar){
   ar[index].addEventListener("mouseover", function(){
      profilewrap[index].style.display = "block";
   });
});

profiles.forEach(function(value, index, ar){
   ar[index].addEventListener("mouseout", function(){
      profilewrap[index].style.display = "none";
   });
});

