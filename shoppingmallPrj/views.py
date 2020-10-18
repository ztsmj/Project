from django.shortcuts import render, redirect

# Create your views here.
from django.views.decorators.csrf import csrf_protect

from shoppingmallPrj.models import getLoginChk, client_insert


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

def index(request):
    return render(request,'shoppingmallPrj/index.jsp')

def manager(request):
    return render(request, 'shoppingmallPrj/manager.jsp')

def qna_board(request):
    return render(request, 'shoppingmallPrj/qna_board.jsp')

def checkout(request):
    return render(request, 'shoppingmallPrj/checkout.jsp')

def shop_type(request):
    return render(request,'shoppingmallPrj/shop_type.jsp')

def shop_search(request):
    return render(request,'shoppingmallPrj/shop_search.jsp')

def manager_customer_detail(request):
    return render(request,'shoppingmallPrj/manager_customer_detail.jsp')

def manager_product_detail(request):
    return render(request,'shoppingmallPrj/manager_product_detail.jsp')

def manager_pay_all(request):
    return render(request,'shoppingmallPrj/manager_pay_all.jsp')

def manager_add_product(request):
    return render(request,'shoppingmallPrj/manager_add_product.jsp')

def manager_qna_board(request):
    return render(request,'shoppingmallPrj/manager_qna_board.jsp')

@csrf_protect
def login(request):
    if 'client_id' in request.session:
        return redirect('/index')
    if request.method == 'POST':
        client_id = request.POST['client_id']
        password = request.POST['password']
        print('client_id :',client_id)
        print('password :',password)
        #--------------------------------------------------------------
        res = getLoginChk(client_id, password)
        print('='*30)
        print(res)
        if len(res) > 0:
            print('로그인 성공')
            request.session['client_id'] = client_id
            request.session['client_name'] = res[0][0]
            return redirect('/shoppingmallPrj')
        else:
            print('로그인 실패')
            msg = '아이디나 비밀번호가 잘못 되었습니다.'
            return render(request, "shoppingmallPrj/index.jsp", {"error":msg})
    return render(request, 'shoppingmallPrj/index.jsp')

@csrf_protect
def login_shop(request):
    if 'client_id' in request.session:
        return redirect('/shoppingmallPrj/shop')
    if request.method == 'POST':
        client_id = request.POST['client_id']
        password = request.POST['password']
        print('client_id :',client_id)
        print('password :',password)
        #--------------------------------------------------------------
        res = getLoginChk(client_id, password)
        print('='*30)
        print(res)
        if len(res) > 0:
            print('로그인 성공')
            request.session['client_id'] = client_id
            request.session['client_name'] = res[0][0]
            return redirect('/shoppingmallPrj/shop')
        else:
            print('로그인 실패')
            msg = '아이디나 비밀번호가 잘못 되었습니다.'
            return render(request, "shoppingmallPrj/shop.jsp", {"error":msg})
    return render(request, 'shoppingmallPrj/shop.jsp')

@csrf_protect
def login_cart(request):
    if 'client_id' in request.session:
        return redirect('/shoppingmallPrj/shop_cart')
    if request.method == 'POST':
        client_id = request.POST['client_id']
        password = request.POST['password']
        print('client_id :',client_id)
        print('password :',password)
        #--------------------------------------------------------------
        res = getLoginChk(client_id, password)
        print('='*30)
        print(res)
        if len(res) > 0:
            print('로그인 성공')
            request.session['client_id'] = client_id
            request.session['client_name'] = res[0][0]
            return redirect('/shoppingmallPrj/shop_cart')
        else:
            print('로그인 실패')
            msg = '아이디나 비밀번호가 잘못 되었습니다.'
            return render(request, "shoppingmallPrj/shop_cart.jsp", {"error":msg})
    return render(request, 'shoppingmallPrj/shop_cart.jsp')

#로그아웃 처리
def logout(request):
    del request.session['client_id']
    del request.session['client_name']
    return redirect('/shoppingmallPrj')

def logout_shop(request):
    del request.session['client_id']
    del request.session['client_name']
    return redirect('/shoppingmallPrj/shop')

def logout_cart(request):
    del request.session['client_id']
    del request.session['client_name']
    return redirect('/shoppingmallPrj/shop_cart')

@csrf_protect
def sign_in(request):
    client_info = (request.POST['client_id'], request.POST['password'],
                request.POST['client_name'], request.POST['addr'],
                request.POST['phone'], request.POST['email'])
    client_insert(client_info)
    return redirect('/shoppingmallPrj')

@csrf_protect
def sign_in_shop(request):
    client_info = (request.POST['client_id'], request.POST['password'],
                request.POST['client_name'], request.POST['addr'],
                request.POST['phone'], request.POST['email'])
    client_insert(client_info)
    return redirect('/shoppingmallPrj/shop')

@csrf_protect
def sign_in_cart(request):
    client_info = (request.POST['client_id'], request.POST['password'],
                request.POST['client_name'], request.POST['addr'],
                request.POST['phone'], request.POST['email'])
    client_insert(client_info)
    return redirect('/shoppingmallPrj/shop_cart')