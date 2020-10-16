from django.urls import path

from shoppingmallPrj import views

urlpatterns=[
    path("",views.home),
    path("shop_cart",views.shop_cart),
    path("shop_cart",views.shop_cart),
    path("my_page",views.my_page),
    path("product_details",views.product_details),
    path("shop",views.shop),
]