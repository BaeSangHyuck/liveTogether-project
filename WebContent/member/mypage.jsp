<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>

<html>
<head>
<title>가치살자</title>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=1" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/mypage.css" />
</head>

<!-- Header -->

<jsp:include page="../fix/header.jsp" />

<!-- Aside -->
<jsp:include page="../fix/aside.jsp" />

<body class="is-preload">
   <c:set var="member" value="${member}" />
   <article id="main">

      <div id="mypageheader">
         <div class="inner">
            <div class="inner_ab">
               <span class="my_span01">${memberName}</span>님의 마이페이지
               입니다.
            </div>
         </div>
      </div>



      <!-- 탈퇴하기 -->
      <div id="modal">
         <div id="modal-inner">
            <div id="modal-box">
               <div id="modal-contents">
                  <div class="modal-content" id="m-title">
                     <h3>탈퇴하기</h3>
                  </div>
                  <div class="modal-content" style="margin-top: 1em;">
                     <span class="m-span">비밀번호를 입력해주세요.</span><br>
                  </div>
                  <div class="modal-content" id="phone-check2">
                     <input type="password" id="memberCode" name="memberCode"
                        placeholder="비밀번호" value="" tabindex="3" autocomplete="off"
                        class="memberCode">
                     <div id="result4"></div>
                     <div class="modal-content" id="m-btn" onclick="checkPw()">확인</div>
                  </div>
               </div>

               <div id="delete-confirm">
                  <div class="modal-content3">
                     <h3>탈퇴하기</h3>
                  </div>
                  <div class="modal-content" id="delete-message">
                     <span class="m-span">탈퇴하실 경우, 가치살자에 등록된 모든 정보가 사라집니다.<br>
                        정말 <b>탈퇴</b>하시겠습니까?
                     </span>
                  </div>
                  <div id="delete-choice">
                     <div class="modal-content" id="m-btn1">안할래요!</div>
                     <div class="modal-content" id="m-btn2">예</div>
                  </div>
               </div>
            </div>
         </div>
      </div>






      <div class="mypagetool">
         <ul class="mypagebar">
            <li class="num1"><a
               href="${pageContext.request.contextPath}/member/MemberMypageOk.me">내
                  정보조회</a></li>
            <li class="num2"><a
               href="${pageContext.request.contextPath}/member/MemberMypageUpdate.me">내
                  정보수정</a></li>
            <li class="num3"><a
               href="${pageContext.request.contextPath}/member/MemberMypageTour.me">진행사항</a>
            </li>
            <li class="num4"><a
               href="${pageContext.request.contextPath}/member/mypagecontract.jsp">계약서
                  출력 </a></li>
            <li class="num5"><a
               href="${pageContext.request.contextPath}/member/MemberQuestionListOk.me">문의사항
            </a></li>
         </ul>
      </div>



      <div id="box">
         <div class="wrapper">
            <div class="container">
               <div id="change_info">
                  <div class="content-wrapper">
                     <div class="content">
                        <form class="info-form"
                           action="${pageContext.request.contextPath}/member/MemberMypageUpdateOk.me"
                           accept-charset="UTF-8" method="post">

                           <div class="column-wrapper email">
                              <label class="col01">이메일</label>
                              <div class="static">${member.getMemberId()}</div>
                           </div>

                           <div class="column-wrapper name">
                              <label class="col02">이름</label>
                              <div class="user_name user">
                                 <input type="text" id="user_name" name="memberName"
                                    value="${member.getMemberName()}">
                              </div>
                           </div>

                           <div class="column-wrapper phone">
                              <label class="active" for="user_phone">전화번호</label>
                              <div class="user_phone user">
                                 <input type="text" id="user_phone" name="memberPhone"
                                    value="${member.getMemberPhone()}">
                              </div>
                           </div>

                           <div class="column-wrapper gender">
                              <label for="gender-input" class="gender-input">성별</label>
                              <div class="gender-btn-wrapper ">
                                 <c:choose>
                                    <c:when test="${member.getMemberGender() eq 'm'}">
                                       <input class="gender-input" type="radio" value="m"
                                          name="memberGender" id="user_gender_m" checked>
                                       <label class="gender-btn" for="user_gender_m">남</label>
                                       <input class="gender-input" type="radio" value="f"
                                          name="memberGender" id="user_gender_f">
                                       <label class="gender-btn" for="user_gender_f"> 여 </label>
                                    </c:when>
                                    <c:otherwise>
                                       <input class="gender-input" type="radio" value="m"
                                          name="memberGender" id="user_gender_m" checked>
                                       <label class="gender-btn" for="user_gender_m">남</label>
                                       <input class="gender-input" type="radio" value="f"
                                          name="memberGender" id="user_gender_f" checked>
                                       <label class="gender-btn" for="user_gender_f"> 여 </label>
                                    </c:otherwise>
                                 </c:choose>
                              </div>
                           </div>




                           <div class="column-wrapper current-password">
                              <label class="col03">비밀번호</label>
                              <div class="user_pw user">
                                 <input type="password" id="user_current_password"
                                    name="memberPw" value="${member.getMemberPw()}">
                              </div>
                           </div>

                           <div class="column-wrapper password">
                              <label class="col04 ">비밀번호 확인</label>
                              <div class="user_newpw user">
                                 <input type="password" id="user_password" name="memberPwOk"
                                    value="${member.getMemberPw()}">
                              </div>
                           </div>

                           <div class="column-wrapper nickname">
                              <label class="col06">닉네임</label>
                              <div class="user_nickname user">
                                 <input type="text" id="user_nickname" name="memberNickname"
                                    value="${member.getMemberNickname()}">
                              </div>
                           </div>

                           <div class="column-wrapper profile">
                              <label class="col05">한 줄 소개</label>
                              <div class="user_pro user">
                                 <input type="text" id="user_pro" name="memberProfile"
                                    value="${member.getMemberProfile()}" maxlength="30">
                              </div>
                           </div>

                           <div class="agreement-list">
                              <div class="agreement">
                                 <input type="checkbox" id="user_allow_newsletter"
                                    name="user[allow_newsletter]" class="agreement-input"
                                    checked> <label class="agreement-content"
                                    for="user_allow_newsletter">
                                    <div class="content">
                                       <span class="my_check">(선택)</span> 새로운 지점 소식을 뉴스레터로 구독
                                    </div>
                                 </label>
                              </div>

                              <div class="agreement">
                                 <input type="checkbox" id="user_allow_serve_privacy"
                                    name="user[allow_serve_privacy]" class="agreement-input"
                                    checked> <label class="agreement-content"
                                    for="user_allow_serve_privacy"> <!--    <div class="content"> -->
                                    <span class="my_check">(선택)</span> <a class="privacy-btn"
                                    href="/serve_privacy" target="_blank">개인정보 제3자 제공</a> 에
                                    동의합니다. <!--    </div> -->
                                 </label>
                              </div>
                           </div>

                           <ul class="notice-list">
                              <li class="notice">* 정보 수정 시 기존 비밀번호를 입력하셔야 합니다.</li>
                           </ul>
                           <div class="mypagebt">
                              <div id="bt1">
                                 <input type="submit" class="update-btn" name="commit"
                                    value="내 정보 수정 완료">
                              </div>
                              <div id="bt2">
                                 <input id="leave-button" type="button" class="update-btn"
                                    value="탈퇴하기">
                              </div>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

   </article>

   <!--    </div> -->

   <jsp:include page="../fix/footer.jsp" />


   <!-- Scripts -->
   <script
      src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
   <script>
   var contextPath = "${pageContext.request.contextPath}";

   
   $("#leave-button").on("click", function(){
      $("body").css("overflow","hidden");
      $("#modal").css("display", "block");
   });
   
      function checkPw() {

   console.log($("#memberCode").val());
         $.ajax({
            url : contextPath + "/member/MemberCheckPwOk.me",
            type : "post",
            data : {
               "memberPw" : $("#memberCode").val()
            },
            dataType : "json",
            success : function(e) {
               console.log(e);
               if (e.status == "ok") {
                  $("#modal-contents").css("display", "none");
                  $("#delete-confirm").css("display", "block");
               } else {
                  alert("비밀번호가 틀립니다.")
               }
            },
            error : function(a, b, c) {
               console.log("오류" + c);
            }
         });

      }
      
      $("#m-btn1").on("click",function(){
         $("#modal").css("display", "none");
      })
      $("#m-btn2").on("click",function(){
         location.href='${pageContext.request.contextPath}/member/MemberDelete.me';
         alert("그동안 가치살자를 이용해주셔서 감사합니다");
      });
   </script>
</body>
</html>