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
    path("sign_in", views.sign_in),
]