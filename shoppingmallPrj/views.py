from django.shortcuts import render

# Create your views here.
def home(request):
    return render(request,'shoppingmallPrj/index.jsp')

def shop_cart(request):
    return render(request,'shoppingmallPrj/shop_cart.jsp')

def my_page(request):
    return render(request, 'shoppingmallPrj/my_page.jsp')

def product_details(request):
    return render(request, 'shoppingmallPrj/product_details.jsp')

def shop(request):
    return render(request, 'shoppingmallPrj/shop.jsp')