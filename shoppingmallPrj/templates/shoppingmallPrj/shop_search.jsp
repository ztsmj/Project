<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
 
    <title>쇼핑하기 기능</title>

      <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/style.css" type="text/css">
    
    <!-- Js Plugins -->
<script src="./resources/js/jquery-3.3.1.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/jquery.magnific-popup.min.js"></script>
<script src="./resources/js/jquery-ui.min.js"></script>
<script src="./resources/js/mixitup.min.js"></script>
<script src="./resources/js/jquery.countdown.min.js"></script>
<script src="./resources/js/jquery.slicknav.js"></script>
<script src="./resources/js/owl.carousel.min.js"></script>
<script src="./resources/js/jquery.nicescroll.min.js"></script>
<script src="./resources/js/main.js"></script>



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
            <a href="index.do"><img src="./resources/img/logo.png" alt=""></a>
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
                        <a href="index.do"><img src="./resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="index.do">홈</a></li>                          
                            <li><a href="manager.do">관리자모드</a></li>
                            <li><a href="shop.do">쇼핑기능</a></li>
                            <li><a href="#">부가기능</a>
                                <ul class="dropdown">
                                    
                                    <li><a href="shop_cart.do">장바구니</a></li> 
                                    <li><a href="qna_board.do">1:1 문의</a></li> 
                                </ul>
                            </li>                          
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__right">
                        <div class="header__right__auth">
                            <a href="#" id="login_click">로그인</a>
                            <a href="checkout.do">회원가입</a>
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
                    <input type="image" src="./resources/img/login_btn.gif" alt="로그인버튼" id="checking" />
                 </p>
                 <p class="join_btn_wrap">
                     <a href="checkout.do">회원가입</a>

                 </p>
                 <p class="login_close_btn">
                     <a href="#">
                     <img src="./resources/img/login_close_btn.gif" alt="닫기버튼" />
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
                        <a href="index.do"><i class="fa fa-home"></i> 홈</a>
                        <span>쇼핑기능</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

	<section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="shop__sidebar">
                        <div class="sidebar__categories">
                            <div class="section-title">
                                <h4>카테고리</h4>
                            </div>
                            <div class="categories__accordion">
                                <div class="accordion" id="accordionExample">
                                    <div class="card">
                                        <div class="card-heading active">
                                            <a data-toggle="collapse" data-target="#collapseOne">여성</a>
                                        </div>
                                        <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                    <li><a href="shop_type.do?category_type_id=2">아우터</a></li>
                                                    <li><a href="shop_type.do?category_type_id=1">원피스</a></li>
                                                    <li><a href="shop_type.do?category_type_id=3">블라우스</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    
                                   
                                   
                                </div>
                            </div>
                        </div>

    <!-- Shop Section Begin -->


  <div class="sidebar__filter">
                            <div class="section-title">
                                <h4>금액 검색(천원)</h4>
                            </div>
                            <form action="shop_search.do">
                            <div class="filter-range-wrap">
                                <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                data-min="3" data-max="100"></div>
                                <div class="range-slider">
                                    <div class="price-input">
                                        <p>:</p>
                                        <input type="text" id="minamount" name="minamount">
                                        <input type="text" id="maxamount" name="maxamount" >
                                    </div>
                                </div>
                            </div>
                            <input type="submit" value="검색">
                            </form>
                        </div>
                        <div class="sidebar__sizes">
                            <div class="section-title">
                                <h4>사이즈 ALL Free</h4>
                            </div>
                            
                        </div>
                        <div class="sidebar__color">
                            <div class="section-title">
                                <h4>모든 상품 무료 배송</h4>
                            </div>
                            <div class="size__list color__list">
                             
                            </div>
                        </div>
                    </div>
                </div>






                <div class="col-lg-9 col-md-9">
                    <div class="row">
                    
                    <c:forEach items="${product_infoList}" var="product_info">
                    	<c:if test="${product_info.sell_price ge param.minamount*1000 and product_info.sell_price le param.maxamount*1000}">
                        <div class="col-lg-4 col-md-6">
                            <div class="product__item">                        
                                <div class="product__item__pic set-bg" data-setbg="resources/upload/${product_info.product_fname}">
                                    <div class="label new">New</div>                                            
                                    <ul class="product__hover">                                   	
                                        <li><a href="img/shop/shop1.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                                        <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                        <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="product_details.do?product_id=${product_info.product_id}">${product_info.product_name}</a></h6>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product__price">${product_info.sell_price}원</div>
                                </div>
                            </div>
                        </div>
                        </c:if>
                        </c:forEach>
                        
                        <!-- <div class="col-lg-4 col-md-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="img/shop/shop2.jpg">
                                    <ul class="product__hover">
                                        <li><a href="img/shop/shop2.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                                        <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                        <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#"></a></h6>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product__price"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="img/shop/shop3.jpg">
                                    <ul class="product__hover">
                                        <li><a href="img/shop/shop3.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
                                        <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                        <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#"></a></h6>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product__price"></div>
                                </div>
                            </div>
                        </div> -->
                    <div class="col-lg-12 text-center">
                            <div class="pagination__option">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#"><i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->


</body>

</html>