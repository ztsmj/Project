from django.urls import path

from shoppingmallPrj import views
#
urlpatterns=[
    path("",views.home),
    path("shop_cart",views.shop_cart),
    path("my_page",views.my_page),
    path("product_details",views.product_details),
    path("shop",views.shop),
    path("index",views.index),
    path("manager",views.manager),
    path("qna_board", views.qna_board),
    path("checkout", views.checkout),
    path("login", views.login),
    path("logout", views.logout),
    path("logout_shop", views.logout_shop),
    path("logout_cart", views.logout_cart),
    path("sign_in", views.sign_in),
    path("login_shop", views.login_shop),
    path("login_cart", views.login_cart),
    path("shop_type", views.shop_type),
    path("shop_search", views.shop_search),
    path("manager_customer_detail", views.manager_customer_detail),
    path("manager_product_detail", views.manager_product_detail),
    path("manager_add_product", views.manager_add_product),
    path("manager_qna_board", views.manager_qna_board),
]