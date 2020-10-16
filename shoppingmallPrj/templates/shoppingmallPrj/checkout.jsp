<!DOCTYPE html>
<html lang="ko">
{% load static %}
{% static "" as baseUrl %}
<head>
    <meta charset="UTF-8">
 

    <title>회원가입 기능</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="{{baseUrl}}//css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}//css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}//css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}//css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}//css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}//css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}//css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}//css/style.css" type="text/css">
    
    <!-- Js Plugins -->
<script src="{{baseUrl}}//js/jquery-3.3.1.min.js"></script>
<script src="{{baseUrl}}//js/bootstrap.min.js"></script>
<script src="{{baseUrl}}//js/jquery.magnific-popup.min.js"></script>
<script src="{{baseUrl}}//js/jquery-ui.min.js"></script>
<script src="{{baseUrl}}//js/mixitup.min.js"></script>
<script src="{{baseUrl}}//js/jquery.countdown.min.js"></script>
<script src="{{baseUrl}}//js/jquery.slicknav.js"></script>
<script src="{{baseUrl}}//js/owl.carousel.min.js"></script>
<script src="{{baseUrl}}//js/jquery.nicescroll.min.js"></script>
<script src="{{baseUrl}}//js/main.js"></script>
</head>

<body>
  <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__close">+</div>  
        <div class="offcanvas__logo">
            <a href="index"><img src="{{baseUrl}}//img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            <a href="#">Login</a>
            <a href="#">Register</a>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-2">
                    <div class="header__logo">
                        <a href="index"><img src="{{baseUrl}}//img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="index">홈</a></li>
                            <li><a href="manager">관리자모드</a></li>
                            <li><a href="shop">쇼핑기능</a></li>
                            <li><a href="#">부가기능</a>
                                <ul class="dropdown">
                                    
                                    <li><a href="shop_cart">장바구니</a></li>
                                    <li><a href="qna_board">1:1 문의</a></li>
                                </ul>
                            </li>                          
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__right">
                        <div class="header__right__auth">
                            <a href="#" id="login_click">로그인</a>
                            <a href="checkout">회원가입</a>
                        </div>                       
                    </div>
                </div>
            </div>

<!--로그인창 추가-->

<div >
	<div >
	<div >
	<div >
				

		 <form action="#" method="post" name="log_f" id="login_f">
               <fieldset >
                 <legend>로그인</legend>
                 <p class="client_id">
                    <label for="client_id">
                    </label>
                    <input type="text" name="client_id" id="client_id" ></input>
                 </p>
                 <p class="password">
                    <label for="password">
                    </label>
                    <input type="password" name="password" id="password" /></p>
                 <p>
                    <input type="checkbox" name="save_id" id="save_id" />
                    <label for="save_id"> 아이디 저장</label>
                 </p>
                 <p class="log_btn">
                    <input type="image" src="{{baseUrl}}//img/login_btn.gif" alt="로그인버튼" id="checking" />
                 </p>
                 <p class="join_btn_wrap">
                     <a href="checkout">회원가입</a>

                 </p>
                 <p class="login_close_btn">
                     <a href="#">
                     <img src="{{baseUrl}}//img/login_close_btn.gif" alt="닫기버튼" />
                     </a>
                 </p>
               </fieldset>		
             </form>

				</div>
			</div>
		</div>
	</div>

            <div class="canvas__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="index"><i class="fa fa-home"></i> 홈</a>
                        <span>회원가입</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6 class="coupon__link"><span class="icon_tag_alt"></span> <a href="#">정보를 입력해주세요.</a> </h6>
                </div>
            </div>
            <form action="sign_in" class="checkout__form" method="post" name="userinput">
                <div class="row">
                    <div class="col-lg-8">
                        <h5>회원가입</h5>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>이름 <span>*</span></p>
                                    <input type="text" name="client_name"class="client_name1">
                                </div>
                            </div>
                            
                            <div class="col-lg-12">
                                <div class="checkout__form__input">
                                    <p>아이디 <span>*</span></p>
                                    <input type="text" name="client_id" class="idCheck">
                                    <span id="idCheckResult" style="width:150px;color:red"></span>
                                </div>
                                <div class="checkout__form__input">
                                    <p>비밀번호 <span>*</span></p>
                                    <input type="text" name="password" class="password1">
                                </div>
                                <div class="checkout__form__input">
                                    <p>비밀번호확인 <span>*</span></p>
                                    <input type="text"name="passcheck" class="passcheck1">
                                </div>
								<div class="checkout__form__input" >
                                    <p>이메일 <span>*</span></p>
                                    <input type="text" name="email"class="email">
                                </div>
                                
                                <div class="checkout__form__input" >
                                    <p>주소  <span>*</span></p>
                                    <input type="text" name="addr"class="addr">
                                </div>
                                
                                <div class="checkout__form__input" >
                                    <p>핸드폰  <span>*</span></p>
                                    <input type="text" name="phone"class="phone">
                                </div>
                            
                            
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            
                         <input type="button" class="site-btn sign_in_check"  id="go_resi" value="회원가입하기">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- Checkout Section End -->

      
    </body>

    </html>