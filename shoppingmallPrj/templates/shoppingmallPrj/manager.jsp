<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
 
    <title>관리자 화면</title>

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
    
    
    
    
<div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="index.do"><i class="fa fa-home"></i> 홈</a>
						<a href="#">관리자페이지</a>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    

 <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6 class="coupon__link"><span class="icon_tag_alt"></span> <a href="#">간이매출내역</a> </h6>
                </div>
            </div>
            
            <div class="shop__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>카드결제</th>
                                    <th>간편결제</th>
                                    <th>무통장입금</th>
                                    <th>총 매출</th>
                                 
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
									<td>${pay_card}건</td>
                                    <td>${easypay}건</td>
                                    <td>${cash}건</td>
                                    <td>${sell_total}원</td>
                            
                                  
                                </tr></tbody></table><br><br>
                                <table>
                            <thead>
                                <tr>
                                    
                                    <th>간편결제수수료</th>
                                    <th>이니시스수수료</th>
                                    <th>카드수수료</th>
                                    <th>기타수수료</th>
                                    <th>기타비용(수기)</th>
                                    <th>총 매입가</th>
                                    
                                    
                                    
                                    
                                 
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
									
                                    <td>${commission_1}원</td>
                                    <td>${commission_2}원</td>
                                    <td>${commission_3}원</td>
                                    <td>0원</td>
                                    <td>0원</td>
                                    <td>${purchase}원</td>
                                   
                                   
                            
                                  
                                </tr></tbody></table><br><br>
            
            
      
            <div class="row">
                <div class="col-lg-12">
                    <h6 class="coupon__link"><span class="icon_tag_alt"></span> <a href="#">항목별 보기</a> </h6>
                </div>
            </div>

			<div class='manager'>
						<a href="manager_customer_detail.do" class='manager_btn'>회원 관리</a>
					</div>

					<div class='manager'>
						<a href="manager_product_detail.do" class='manager_btn'>상품 관리</a>


					</div>

					<div class='manager'>
						<a href="manager_pay_all.do" class='manager_btn'>판매 관리</a>


					</div>
					<div class='manager'>
						<a href="manager_add_product.do" class='manager_btn'>상품 추가하기</a>


					</div>
					<div class='manager'>
						<a href="manager_qna_board.do" class='manager_btn'>문의게시판 관리</a>


					</div>
					
			
      
        </section>

			


</body>

</html>