<!DOCTYPE html>
<html lang="ko">
{% load static %}
{% static "" as baseUrl %}
<head>
    <meta charset="UTF-8">
 
    <title>상품추가</title>

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

<style>
    p{
        text-align: center;
    }
</style>

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
                      <img src="{{baseUrl}}/img/login_title_id.gif" alt="" />
                    </label>
                    <input type="text" name="client_id" id="client_id" ></input>
                 </p>
                 <p class="password">
                    <label for="password">
                      <img src="{{baseUrl}}/img/login_title_pw.gif" alt="" />
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
    
      
<div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="index"><i class="fa fa-home"></i> 홈</a>
                  <a href="#">관리자페이지</a>
                  <span>상품 추가</span>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>

 <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                <a href="manager">관리자 홈으로</a><br><br>
                    <h6 class="coupon__link"><span class="icon_tag_alt"></span> <a href="#">상품 추가</a> </h6>
                </div>
            </div>
       </div>
  
  
  
  
  
<!--   ---------------------------- 아래 표 ------------------------------- -->
  <style>  input {border: 1px solid #b4b4b4;  border-radius: 0px;} </style>
  
  
<form action="add_product" method="post" name="add_product" id="add_product" enctype="multipart/form-data">
<div class="product_info" align="center" >
   <table class="product_info1"  border=0 cellspacing=10 style="margin-left: auto; margin-right: auto;">

      <!-- --폼으로 -->
      

         <tr>
            <th>* 상품명</th>
            <td>
               <input type="text" class="input_txt" name="product_name" id="product_name" maxlength="100" value="" title="상품명">            
            </td>
         </tr>


         <tr>   <th>* 상품카테고리1<br></th>
         <td colspan="3" class="product_info1">
            <label style="padding-right:20px;">
               <input type="checkbox" class="input_txt" name="category_gender_id" id="category_gender_id" value="1">
                  &nbsp;여성복
            </label>
            

            
            
                  
            </td>
            </tr>

                        <!-- --------------------------------------------- -->            

                  <tr>   <th>* 상품카테고리2<br></th>   
         <td colspan="3" class="product_info1">
            <label style="padding-right:20px;">
               <input type="checkbox" class="input_txt" name="category_type_id" id="category_type_id" value="1">
                  &nbsp;원피스
            </label>
            
            <label style="padding-right:20px;">
               <input type="checkbox" class="input_txt" name="category_type_id" id="category_type_id" value="2">
                  &nbsp;아우터
            </label>
            
            <label style="padding-right:20px;">
               <input type="checkbox" class="input_txt" name="category_type_id" id="category_type_id" value="3">
                  &nbsp;블라우스         
            </label>
            
               
            </td>
            </tr>




                  <!-- --------------------------------------------- -->   

                  

               <tr>
                  <th>* 상품설명<br></th>
                  <td>
                     <textarea class="input_txt" name="product_info" id="product_info" maxlength="300" cols='40' rows='10' autofocus required wrap='hard' placeholder='상품 설명을 입력해주세요.'></textarea>
                  </td>
               </tr>


                  <!-- --------------------------------------------- -->            

   
                  <tr>   
                  
                  <th>* 구입처<br></th>   
         <td colspan="3" class="product_info1">
            <label style="padding-right:20px;">
               <input type="checkbox" class="input_txt" name="buy_place" id="buy_place" value="유어스">
                  유어스
            </label>
            
            <label style="padding-right:20px;">
               <input type="checkbox" class="input_txt" name="buy_place" id="buy_place"  value="디오트">
                  디오트
            </label>
            
            </td>
            </tr>
                  <!-- --------------------------------------------- -->   


               <tr>
                  <th>* 입고<br></th>
                  <td>
                     가격 <input type="text" class="input_txt" name="buy_price" id="buy_price" maxlength="10" style="width:20%;"> 
                     &nbsp;X&nbsp;
                     수량 <input type="text" class="input_txt" name="stock" id="stock" maxlength="6" style="width:20%;">&nbsp;&nbsp;
                     
                  </td>
               </tr>
                     <!-- --------------------------------------------- -->   


               <tr>
                  <th>* 판매 가격<br></th>
                  <td><input type="text" class="input_txt" name="sell_price" id="sell_price" maxlength="30" style="width:20%;"></td>
               </tr>

                  <!-- --------------------------------------------- -->   

               <tr>
                  <th>* 이미지 업로드</th>
                  <td><input type="file" name='file' id='file' maxlength="500" style="width:50%;">
                  <input type="hidden" name='product_ip' value="<%=request.getRemoteAddr()%>"> </td>
               </tr>

   
   </table>   
</div>   

      
<br>

<p><input type='submit'  class="primary-btn" style="text-align:center"  value='상품 등록'></p>
<!-- --폼으로 -->
</form>
      
      

<br><br>
<br><br>
<br><br>

  


</section>

</body>

</html>
