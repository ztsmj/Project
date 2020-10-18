from django.shortcuts import render, redirect

# Create your views here.
from django.views.decorators.csrf import csrf_protect

from shoppingmallPrj.models import getLoginChk


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

@csrf_protect
def loginform(request):
    # 세션에 등록한 값이 존재하는 가
    if 'client_id' in request.session:
        return redirect('/login')
    if request.method == 'POST':
        client_id = request.POST['client_id']
        user_pwd = request.POST['pwd']
        print('client_id :',user_id)
        print('user_pwd :',user_pwd)
        #--------------------------------------------------------------
        res = getLoginChk(id=user_id, pwd=user_pwd)
        print('='*30)
        print(res)
        if len(res) > 0:
            print('로그인 성공')
            request.session['client_id'] = client_id
            request.session['user_name'] = res[0][0]
            return redirect('/login')
        else:
            print('로그인 실패')
            msg = '아이디나 비밀번호가 잘못 되었습니다.'
            return render(request, "login/login.html", {"error":msg})
    return render(request, 'login/login.html')

#로그아웃 처리
def logout(request):
    del request.session['client_id']
    del request.session['user_name']
    return redirect('/login')