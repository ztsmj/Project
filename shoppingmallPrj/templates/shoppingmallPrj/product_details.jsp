<!DOCTYPE html>
{% load static %}
{% static "" as baseUrl %}
<html lang="ko">

<head>
    <meta charset="UTF-8">
 
    <title>상품 상세화면</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">

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
    <!-- Header Section End -->
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="index"><i class="fa fa-home"></i> 홈</a>
                        <a href="#">부가기능</a>
                        <span>상세보기</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__pic" >
						<img alt="상세보기" src="resources/upload/${product_info.product_fname}" width='80%'>
                        <div class="product__details__pic__left product__thumb nice-scroll">
                            
                        </div>
                        <div class="product__details__slider__content" >
                            <div class="product__details__pic__slider owl-carousel"> 
                                <img data-hash="product-1" class="product__big__img" src="img/product/details/product1.jpg" alt=""> 
                                <img data-hash="product-2" class="product__big__img" src="img/product/details/product2.jpg" alt=""> 
                                 <img data-hash="product-3" class="product__big__img" src="img/product/details/product3.jpg" alt="">
                                 <img data-hash="product-4" class="product__big__img" src="img/product/details/product4.jpg" alt="">
 								<img data-hash="product-5" class="product__big__img" src="img/product/details/product5.jpg" alt="">
 								<img data-hash="product-6" class="product__big__img" src="img/product/details/product6.jpg" alt=""> 
 								<img data-hash="product-7" class="product__big__img" src="img/product/details/product7.jpg" alt="">
                             </div> 
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3>${product_info.product_name} <span> </span></h3>
                        <div class="rating">

                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <span>${product_info.product_info}</span>
                        </div>
                        <c:set var="sale" value="${product_info.sell_price}"/>
                        <c:set var="saleup" value="${sale+5000}"/>
                        <div class="product__details__price">${product_info.sell_price} <span>${saleup }</span></div>
							<p>장바구니에 담으세요</p>
                        <div class="product__details__button">
                            <div class="quantity">
                                <span>수량 :</span>
                                <form action='cart_add' method='post'>
                                <div class="pro-qty">
                                
                                    <input type="text" value="1" name="how_many">
                                    
                                 
                                </div>
                                	<input type="hidden" name="client_id" value=<%=client_id %>>
                                    <input type="hidden" name="product_id" value="${product_info.product_id}">
                                      <p><input type='submit'  class="cart-btn" id="go_cart" value="장바구니 추가"></p>
                                </form>
                            </div>
                           
                        </div>
                        <div class="col-lg-6"> 
						<div class="product__details__widget">
                           
							<ul>
                               
                                <li>
                                    <span>색상 : 단일</span>
                                   
                                </li>
                                <li>
                                    <span>사이즈 : free</span>
                                    
                                </li>
                                <li>
                                    <span>배송 : 무료배송</span>                                  
                                </li>
                            </ul>
                        </div>  </div>
                    </div>
                </div>
     		</div>
         </div>
		</section>		
   
</body>

</html>