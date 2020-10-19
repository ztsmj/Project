<!DOCTYPE html>
<html lang="ko">
{% load static %}
{% static "" as baseUrl %}
<head>
    <meta charset="UTF-8">
 
    <title>결제하기</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="{{baseUrl}}/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="{{baseUrl}}/css/style.css" type="text/css">
    
    <!-- Js Plugins -->
<script src="{{baseUrl}}/js/jquery-3.3.1.min.js"></script>
<script src="{{baseUrl}}/js/bootstrap.min.js"></script>
<script src="{{baseUrl}}/js/jquery.magnific-popup.min.js"></script>
<script src="{{baseUrl}}/js/jquery-ui.min.js"></script>
<script src="{{baseUrl}}/js/mixitup.min.js"></script>
<script src="{{baseUrl}}/js/jquery.countdown.min.js"></script>
<script src="{{baseUrl}}/js/jquery.slicknav.js"></script>
<script src="{{baseUrl}}/js/owl.carousel.min.js"></script>
<script src="{{baseUrl}}/js/jquery.nicescroll.min.js"></script>
<script src="{{baseUrl}}/js/main.js"></script>





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
            <a href="index"><img src="{{baseUrl}}/img/logo.png" alt=""></a>
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
                        <a href="index"><img src="{{baseUrl}}/img/logo.png" alt=""></a>
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
                    <input type="image" src="{{baseUrl}}/img/login_btn.gif" alt="로그인버튼" id="checking" />
                 </p>
                 <p class="join_btn_wrap">
                     <a href="checkout">회원가입</a>

                 </p>
                 <p class="login_close_btn">
                     <a href="#">
                     <img src="{{baseUrl}}/img/login_close_btn.gif" alt="닫기버튼" />
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






    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6 class="coupon__link"><span class="icon_tag_alt"></span> <a href="#">결제 항목입니다.</a> </h6>
                </div>
            </div>

                                
<!--                                 <div class="checkout__order__product"> -->
<!--                                     <ul> -->
<!--                                         <li> -->
<!--                                             <span class="top__text">상품</span> -->
<!--                                             <span class="top__text__right">금액</span> -->
<!--                                         </li> -->
<!--                                         <li>옷1<span>100만원</span></li> -->
<!--                                         <li>옷2 <span>200만원</span></li> -->
<!--                                         <li> <span></span></li> -->
                                       
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="checkout__order__total"> -->
<!--                                     <ul> -->
<%--                                         <li>결제예정금액 <span>${sum_total}</span></li> --%>
<!--                                         <li>할인금액 <span>0원</span></li> -->
<%--                                         <li>총액 <span>${sum_total}</span></li> --%>
<!--                                     </ul> -->
<!--                                 </div> -->
<!-- 						<form action="my_page" method="post" >	   -->
								<form action="add_sales" method="post" >
                                <div class="checkout__order__widget">
								<h4>결제 방식을 선택해주세요.</h4><br><br>
                                    
                                    
                                      
                                        <input type="radio" name="card_or_cash" value="카드결제">    카드결제<br><br>
                                        
                                    
                                        
                                        <input type="radio" name="card_or_cash" value="간편결제">    간편결제<br><br>
                                        
                                    
                                        
                                        <input type="radio" name="card_or_cash" value="무통장입금">    무통장입금<br><br>
                                        
                                        
                                        <input type="hidden" name="client_id" value="<%= session.getAttribute("id") %>">
                                       
                                
                                </div>
                                <input type="submit" value="결제하기">
                                 </form>
<!--                                 <button type="submit" class="site-btn"  id="go_pay"><a href="#" >결제하기</a></button> -->
             
                            </div>
       
        </section>
        <!-- Checkout Section End -->

   

        
    </body>

    </html>