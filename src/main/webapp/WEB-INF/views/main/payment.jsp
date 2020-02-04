<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>TeamProject PaymentPage</title>
        <link rel="stylesheet" href="/resources/css/reset.css" />
        <link rel="stylesheet" href="/resources/css/commonlayout.css" />
        <link rel="stylesheet" href="/resources/css/payment.css" />
    </head>
    <body>
        <header>
            <h1>
                <a href="./index">LOGO</a>
            </h1>
            <h2>
                <a href="./loginTeam">Login</a>
            </h2>
            <ul class="show">
                <li><a href="./mypage">회원정보</a></li>
                <li>
                    <a href="./shoppingBasket"><img src="/resources/images/shoppingCart.png" alt="장바구니"/></a>
                </li>
                <li>
                    <a href="./mypageMain">OOO님</a>
                </li>
            </ul>
            <h2><a href="./admin">ADMIN</a></h2>
            <nav>
                <ul>
                    <li><a href="./index">전체상품</a></li>
                    <li><a href="./newItem">신상품</a></li>
                    <li><a href="./bestItem">Best Item</a></li>
                    <li><a href="./choseItem">찜한상품</a></li>
                    <li><a href="./faq.html">FAQ</a></li>
                </ul>
            </nav>
        </header>
        <section>
            <div id="order">
                <h2>주문내역</h2>
                <ul class="order-header">
                    <li class="size-0"><input type="checkbox" checked="checked" /></li>
                    <li class="size-1">상품정보</li>
                    <li class="size-3">색상</li>
                    <li class="size-2">판매가</li>
                    <li class="size-2">수량</li>
                    <li class="size-2">주문금액</li>
                </ul>
                <ul>
                    <li class="size-0"><input name="order" type="checkbox" checked="checked" /></li>
                    <li class="size-1">Sample Item</li>
                    <li class="size-3">
                        <select>
                            <option value="">색상을 선택해 주세요</option>
                            <option value="Black">Black</option>
                            <option value="White" selected="selected">White</option>
                            <option value="Gray">Gray</option>
                            <option value="Blue">Blue</option>
                            <option value="Red">Red</option>
                        </select>
                    </li>
                    <li class="size-2">19,000 Won</li>
                    <li class="amount size-2">
                        <p>1</p>
                    </li>
                    <li class="js-itemPrice bold size-2">19,000 Won</li>
                </ul>
                <ul>
                    <li class="size-0"><input name="order" type="checkbox" checked="checked" /></li>
                    <li class="size-1">Sample Item2</li>
                    <li class="size-3">
                        <select>
                            <option value="">색상을 선택해 주세요</option>
                            <option value="Black" selected="selected">Black</option>
                            <option value="White">White</option>
                            <option value="Gray">Gray</option>
                            <option value="Blue">Blue</option>
                            <option value="Red">Red</option>
                        </select>
                    </li>
                    <li class="size-2">10,000 Won</li>
                    <li class="amount size-2">
                        <p>1</p>
                    </li>
                    <li class="js-itemPrice bold size-2">10,000 Won</li>
                </ul>
                <span class="btn" onclick="backPage()">이전페이지</span>
            </div>
            <div id="address">
                <h2>배송지</h2>
                <input type="text" value="인천광역시 미추홀구 연남로 35(관교동, 롯데백화점) 7층" />
            </div>
            <div id="address">
                <h2>연락처</h2>
                <input type="text" value="010-3333-4444" />
            </div>
            <div id="pay">
                <h2>결제수단</h2>
                <label for="kakaopay">
                    <input type="radio" name="payment" id="kakaopay" checked="checked" onchange="bankOpen()" />
                    <span>카카오페이</span>
                </label>
                <label for="bankpay">
                    <input class="js-bankBtn" type="radio" name="payment" id="bankpay" onchange="bankOpen()" />
                    <span>무통장입금</span>
                </label>
                <div id="bankpage">
                    <label class="bold" for="username">입금자</label>
                    <input type="text" id="username" value="OOO" />
                    <p>
                        <span class="bold">입금은행</span>
                        <span>104300-00-000000(국민)</span>
                    </p>
                    <p>
                        <span class="bold">예금주</span>
                        <span>LOGO</span>
                    </p>
                </div>
                <h3>최종결제 금액 : <span class="sumPrice bold">29,000 Won</span></h3>
                <span class="btn" onclick="openModal()">결제하기</span>
                <div id="payModal" class="js-modal">
                    <div>
                        <span class="btn" onclick="closeModal()">결제취소</span>
                        <span class="btn"><a href="./paymentFinish.html">결제하기</a></span>
                    </div>
                </div>
            </div>
        </section>
        <footer>
            <p>Created by VYVOJ</p>
            <h4>본 사이트에서 사용된 모든 이미지는 <a href="https://store.musinsa.com/">MUSINSA Store</a>에 저작권이 있습니다.</h4>
        </footer>
        <script src="/resources/js/payment.js"></script>
    </body>
</html>
