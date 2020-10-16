

'use strict';


$(function () {

	// 사용자의 자료 입력여부를 검사하는 함수
	$('.sign_in_check').click(function(){
		if($.trim($('.client_name1').val())==''){
    		alert("이름입력해주세요.");
    		$('#client_name').foucs();
    		return;
    	}
    	
    	if( $.trim($(".idCheck").val()) == '' ){
            alert("아이디를 입력해 주세요.");
            $("#client_id").focus();
            return;
        }
    	
    	if($.trim($('.password1').val())==''){
    		alert("비번입력해주세요.");
    		$('#password').focus();
    		return;
    	}
    	
    	if($.trim($('.password1').val()) != $.trim($('.passcheck1').val())){
    		alert("비밀번호가 일치하지 않습니다..");
    		$('#passcheck').focus();
    		return;
    	}
    	
        // 자료를 전송합니다.
        alert("회원가입이 완료되었습니다.");
        document.userinput.submit();
	});

	//아이디 중복체크
	$('.idCheck').keyup(function(){
        $.ajax({
        	type:'post',
        	url:'idCheck.do',
        	data: "client_id="+$('.idCheck').val() ,
        	contentType:'application/x-www-form-urlencoded;charset=UTF-8',
        	success: function(resultData){
        		$('#idCheckResult').html(resultData);
        	},
        	error: function(){
        		alert(err);
        	}
        })
       
	})

	//관리자모드
	$(".header__menu ul li:nth-child(2)").hide();
	if(sessionStorage.getItem("login")=="manager"){
		$(".header__menu ul li:nth-child(2)").show();
	}
	

	//로그인 로그아웃
	if(sessionStorage.getItem("login")!=null && sessionStorage.getItem("login")!='null'){
		$('#login_click').text("로그아웃");
		$('#login_click').click(function(){
			sessionStorage.clear();
			location.href="index_logout.do";
	    });
	}
	else if(sessionStorage.getItem("login")==null  || sessionStorage.getItem("login").trim()=='null'){
		$('#login_click').text("로그인");
	}

	
	//장바구니 삭제 기능
//	$(".cart__close").click(function(){
//		
//		var tr=$(this).parent();
//		tr.remove();
//		
//	});

	//필터테스트

	
	/*필터_테스트 */
	var rangeSlider = $(".price-range"),
    minamount = $("#minamount"),
    maxamount = $("#maxamount"),
    minPrice = rangeSlider.data('min'),
    maxPrice = rangeSlider.data('max');
    rangeSlider.slider({
    range: true,
    min: minPrice,
    max: maxPrice,
    values: [minPrice, maxPrice],
    slide: function (event, ui) {
        minamount.val( ui.values[0]);
        maxamount.val( ui.values[1]);
        }
    });
    minamount.val( rangeSlider.slider("values", 0));
    maxamount.val( rangeSlider.slider("values", 1));


	

	
//	$('#go_pay').click(function(){
//		
//		alert("결제가 정상적으로 완료되었습니다.");
//		
//	});
//	
	
	$('#go_cart').click(function(){
		
		
		
		var result = confirm(" 장바구니에 추가되었습니다. 장바구니로 이동하시겠습니까?");

        if(result){location.href="shop_cart.do";}

		
		
	});



			$('#login_click').click(function(){


					$('#login_f').css({'top':'70px'}); 

	    });

		$('.login_close_btn').click(function(){

					$('#login_f').css({'top':'-500px'}); 

		});


    /*------------------
        Preloader
    --------------------*/
    $(window).on('load', function () {
        $(".loader").fadeOut();
        $("#preloder").delay(200).fadeOut("slow");

        /*------------------
            Product filter
        --------------------*/
        $('.filter__controls li').on('click', function () {
            $('.filter__controls li').removeClass('active');
            $(this).addClass('active');
        });
        if ($('.property__gallery').length > 0) {
            var containerEl = document.querySelector('.property__gallery');
            var mixer = mixitup(containerEl);
        }
    });

    /*------------------
        Background Set
    --------------------*/
    $('.set-bg').each(function () {
        var bg = $(this).data('setbg');
        $(this).css('background-image', 'url(' + bg + ')');
    });

    //Search Switch
    $('.search-switch').on('click', function () {
        $('.search-model').fadeIn(400);
    });

    $('.search-close-switch').on('click', function () {
        $('.search-model').fadeOut(400, function () {
            $('#search-input').val('');
        });
    });

    //Canvas Menu
    $(".canvas__open").on('click', function () {
        $(".offcanvas-menu-wrapper").addClass("active");
        $(".offcanvas-menu-overlay").addClass("active");
    });

    $(".offcanvas-menu-overlay, .offcanvas__close").on('click', function () {
        $(".offcanvas-menu-wrapper").removeClass("active");
        $(".offcanvas-menu-overlay").removeClass("active");
    });

    /*------------------
		Navigation
	--------------------*/
    $(".header__menu").slicknav({
        prependTo: '#mobile-menu-wrap',
        allowParentLinks: true
    });

    /*------------------
        Accordin Active
    --------------------*/
    $('.collapse').on('shown.bs.collapse', function () {
        $(this).prev().addClass('active');
    });

    $('.collapse').on('hidden.bs.collapse', function () {
        $(this).prev().removeClass('active');
    });

    /*--------------------------
        Banner Slider
    ----------------------------*/
    $(".banner__slider").owlCarousel({
        loop: true,
        margin: 0,
        items: 1,
        dots: true,
        smartSpeed: 1200,
        autoHeight: false,
        autoplay: true
    });

    /*--------------------------
        Product Details Slider
    ----------------------------*/
    $(".product__details__pic__slider").owlCarousel({
        loop: false,
        margin: 0,
        items: 1,
        dots: false,
        nav: true,
        navText: ["<i class='arrow_carrot-left'></i>","<i class='arrow_carrot-right'></i>"],
        smartSpeed: 1200,
        autoHeight: false,
        autoplay: false,
        mouseDrag: false,
        startPosition: 'URLHash'
    }).on('changed.owl.carousel', function(event) {
        var indexNum = event.item.index + 1;
        product_thumbs(indexNum);
    });

    function product_thumbs (num) {
        var thumbs = document.querySelectorAll('.product__thumb a');
        thumbs.forEach(function (e) {
            e.classList.remove("active");
            if(e.hash.split("-")[1] == num) {
                e.classList.add("active");
            }
        })
    }


    /*------------------
		Magnific
    --------------------*/
    $('.image-popup').magnificPopup({
        type: 'image'
    });


    $(".nice-scroll").niceScroll({
        cursorborder:"",
        cursorcolor:"#dddddd",
        boxzoom:false,
        cursorwidth: 5,
        background: 'rgba(0, 0, 0, 0.2)',
        cursorborderradius:50,
        horizrailenabled: false
    });

    /*------------------
        CountDown
    --------------------*/
    // For demo preview start
    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = today.getFullYear();

    if(mm == 12) {
        mm = '01';
        yyyy = yyyy + 1;
    } else {
        mm = parseInt(mm) + 1;
        mm = String(mm).padStart(2, '0');
    }
    var timerdate = mm + '/' + dd + '/' + yyyy;
    // For demo preview end


    // Uncomment below and use your date //

    /* var timerdate = "2020/12/30" */

	$("#countdown-time").countdown(timerdate, function(event) {
        $(this).jsp(event.strftime("<div class='countdown__item'><span>%D</span> <p>Day</p> </div>" + "<div class='countdown__item'><span>%H</span> <p>Hour</p> </div>" + "<div class='countdown__item'><span>%M</span> <p>Min</p> </div>" + "<div class='countdown__item'><span>%S</span> <p>Sec</p> </div>"));
    });

   
    /*------------------
		Single Product
	--------------------*/
	$('.product__thumb .pt').on('click', function(){
		var imgurl = $(this).data('imgbigurl');
		var bigImg = $('.product__big__img').attr('src');
		if(imgurl != bigImg) {
			$('.product__big__img').attr({src: imgurl});
		}
    });
    
    /*-------------------
		Quantity change
	--------------------- */
    var proQty = $('.pro-qty');
	proQty.prepend('<span class="dec qtybtn">-</span>');
	proQty.append('<span class="inc qtybtn">+</span>');
	proQty.on('click', '.qtybtn', function () {
		var $button = $(this);
		var oldValue = $button.parent().find('input').val();
		if ($button.hasClass('inc')) {
			var newVal = parseFloat(oldValue) + 1;
		} else {
			// Don't allow decrementing below zero
			if (oldValue > 0) {
				var newVal = parseFloat(oldValue) - 1;
			} else {
				newVal = 0;
			}
		}
		$button.parent().find('input').val(newVal);
    });
    
    /*-------------------
		Radio Btn
	--------------------- */
    $(".size__btn label").on('click', function () {
        $(".size__btn label").removeClass('active');
        $(this).addClass('active');
    });

});









