<!DOCTYPE html>
{% load static %}
{% static "" as baseUrl %}
<html lang="ko">

<head>
    <meta charset="UTF-8">
 
    <title>마이페이지</title>

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
            <a href="index.do"><img src="{{baseUrl}}/img/logo.png" alt=""></a>
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
                        <a href="index.do"><img src="{{baseUrl}}/img/logo.png" alt=""></a>
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
                            <a href="my_page.do">마이페이지</a>
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
                     <a href="checkout.do">회원가입</a>

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
                        <a href="index.do"><i class="fa fa-home"></i> 홈</a>
						<a href="#">마이페이지</a>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    
    
 <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6 class="coupon__link"><span class="icon_tag_alt"></span> <a href="#">나의 문의 내역</a> </h6>
                </div>
            </div>
             <div class="shop__cart__table">
            <table>
                            <thead>
                                <tr>
                                	<th>등록일</th>
                                    <th>제목</th>
                                    <th>내용</th>                                                                     

                                   
                                </tr>
                            </thead>
                            <tbody>
                            <form action="delete_qna.do" method="post">
                            <c:forEach items="${myqna}" var="myqna">
                                <tr>
									<td>${myqna.dat}</td>
                                    <td>${myqna.title}</td>
                                    <td>${myqna.content}</td>                                                         

                             		</form>
                                </tr>
                                </c:forEach>
                                </tbody>
                                </table> 
                                
                                
                             
                    
                        
                    </div>
            
            
 <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6 class="coupon__link"><span class="icon_tag_alt"></span> <a href="#">나의 구매 내역</a> </h6>
                </div>
            </div>
            
             <div class="shop__cart__table">
                        <table>
                            <thead>
                                <tr>
                                	<th>구매일자</th>
                                    <th>상품</th>
                                    <th>상품가격</th>                                 
                                    <th>수량</th>
                                    <th>금액</th>

                                   
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${mylist}" var="mylist">
                                <tr>
									<td>${mylist.dat}</td>
                                    <td>${mylist.name}</td>
                                    <td>${mylist.price}</td>
                                    <td>${mylist.qty}</td>
                                    <td></td>
                             
                                </tr>
                                </c:forEach>
                                
                                
                             
                    
                        
                    </div>
         

   

    
</body>

</html>
