<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE HTML>
    <!--
        Tactile by Pixelarity
        pixelarity.com | hello@pixelarity.com
        License: pixelarity.com/license
    -->
    <html>
    <head>
    <title>가치살자 - 회원가입</title>
    <meta charset="utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1, user-scalable=1" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/join.css" />
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    <link 	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css"	rel="stylesheet">
    </head>
    <body class="is-preload">
    
        <!-- Header -->
        <jsp:include page="header.jsp"/>
    
        <!-- Menu -->
        <nav id="menu">
            <ul class="links">
                <li><a href="index.html">Home</a></li>
                <li><a href="generic.html">Generic</a></li>
                <li><a href="elements.html">Elements</a></li>
            </ul>
            <ul class="actions stacked">
                <li><a href="#" class="button fit primary">Sign Up</a></li>
                <li><a href="#" class="button fit">Log In</a></li>
            </ul>
        </nav>
    
        <!-- Main -->
        <section id="main">
            <div id="total">
                <div id="mArticle">	
                    <div>
                        <div class="wrap_form">
                            <div id="trans">
                                <h1 id="kakaoServiceLogo"><img src="images/logo_login.png"></h1>
                                <div class="login_kakaomail">
                                    <form id="login-form" action="#">
                                        <div id="loginEmailField">
                                            <input placeholder="이메일" class="tf_g tf_email"
                                                name="email" validator="email_or_phone_or_kakaoid"
                                                type="email" id="id_email_2">
                                            <p>	가치살다에서 사용하실 이메일을 입력해주세요.</p>
                                        </div>
                                </div>
                                <div class="item_tf item_inp" >
                                    <input placeholder="비밀번호" data-type="password" class="tf_g "
                                        name="password" type="password" id="id_password_3"> <input
                                        placeholder="비밀번호 확인" data-type="password" class="tf_g "
                                        name="password" type="password" id="id_password_3">
                                </div>
                                <div id="nickname_wrap">
                                    <input placeholder="닉네임" class="nickname" name="nickname" type="text" id="nickname">
                                </div>
                                <div id="nickname_wrap">
                                    <input placeholder="전화번호" class="nickname" name="nickname"	type="text" id="nickname">
                                </div>
        
                                <div class="wrap_btn">
                                    <button class="btn_g btn_confirm submit" type="button"	aria-disabled="false">가입 하기</button>
                                </div>
                            </div>
                        </div>
                </div>
        </section>
        
        <!-- Footer -->
        <jsp:include page="footer.jsp"/>
    
        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
    </html>