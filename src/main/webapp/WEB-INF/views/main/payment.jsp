<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>TeamProject PaymentPage</title>
        <link rel="stylesheet" href="/resources/css/reset.css" />
        <link rel="stylesheet" href="/resources/css/commonlayout.css" />
        <link rel="stylesheet" href="/resources/css/payment.css" />
        <link rel="stylesheet" href="/resources/css/shoppingBasket.css" />
        <script src="/resources/js/mypage.js"></script>
        <script src="/lib/jquery/3.4.1/dist/jquery.min.js"></script>
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    </head>
    <body>
        <c:import url="/header" />
        <section>
        		<div class="subtitlediv">
                    <h2>주문내역</h2>
                </div>
        		<div id="order" data-uno = "">
                    <form action="">
                        <ul class="order-header">
                            <li class="size-0"><input type="checkbox" checked="checked" onclick="return false"/></li>
                            <li class="size-1">상품정보</li>
                            <li class="size-3">색상</li>
                            <li class="size-2">판매가</li>
                            <li class="size-2">수량</li>
                            <li class="size-2">주문금액</li>
                        </ul>
                        <div id = "itemListView"></div>
                    </form>
                    	<span class="btn" onclick="backPage()">이전페이지</span>
                </div>
<!--             <div id="order"> -->
<!--                 <h2>주문내역</h2> -->
<!--                 <ul class="order-header"> -->
<!--                     <li class="size-0"><input type="checkbox" checked="checked" /></li> -->
<!--                     <li class="size-1">상품정보</li> -->
<!--                     <li class="size-3">색상</li> -->
<!--                     <li class="size-2">판매가</li> -->
<!--                     <li class="size-2">수량</li> -->
<!--                     <li class="size-2">주문금액</li> -->
<!--                 </ul> -->
<!--                 <ul> -->
<!--                     <li class="size-0"><input name="order" type="checkbox" checked="checked" /></li> -->
<!--                     <li class="size-1">Sample Item</li> -->
<!--                     <li class="size-3"> -->
<!--                         <select> -->
<!--                             <option value="">색상을 선택해 주세요</option> -->
<!--                             <option value="Black">Black</option> -->
<!--                             <option value="White" selected="selected">White</option> -->
<!--                             <option value="Gray">Gray</option> -->
<!--                             <option value="Blue">Blue</option> -->
<!--                             <option value="Red">Red</option> -->
<!--                         </select> -->
<!--                     </li> -->
<!--                     <li class="size-2">19,000 Won</li> -->
<!--                     <li class="amount size-2"> -->
<!--                         <p>1</p> -->
<!--                     </li> -->
<!--                     <li class="js-itemPrice bold size-2">19,000 Won</li> -->
<!--                 </ul> -->
<!--                 <ul> -->
<!--                     <li class="size-0"><input name="order" type="checkbox" checked="checked" /></li> -->
<!--                     <li class="size-1">Sample Item2</li> -->
<!--                     <li class="size-3"> -->
<!--                         <select> -->
<!--                             <option value="">색상을 선택해 주세요</option> -->
<!--                             <option value="Black" selected="selected">Black</option> -->
<!--                             <option value="White">White</option> -->
<!--                             <option value="Gray">Gray</option> -->
<!--                             <option value="Blue">Blue</option> -->
<!--                             <option value="Red">Red</option> -->
<!--                         </select> -->
<!--                     </li> -->
<!--                     <li class="size-2">10,000 Won</li> -->
<!--                     <li class="amount size-2"> -->
<!--                         <p>1</p> -->
<!--                     </li> -->
<!--                     <li class="js-itemPrice bold size-2">10,000 Won</li> -->
<!--                 </ul> -->
<!--                 <span class="btn" onclick="backPage()">이전페이지</span> -->
<!--             </div> -->
            <div id="address">
                <h2>배송지</h2>
					<div class = "addr addr1">
						<input type="text" id="address1" placeholder="우편번호">
						<input id = button type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" > 
					</div>	
					<input type="text" id="address2" placeholder="도로명주소" >
					<span id="guide" style="color:#999;display:none"></span>
					<input type="text" id="address3" placeholder="상세주소">
            </div>
            <div id="address">
                <h2>연락처</h2>
                <input type="text" id ="tel"/>
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
                    <input type="text" id="username" />
                    <p>
                        <span class="bold">입금은행</span>
                        <span id = "bank"></span>
                    </p>
                    <p>
                        <span class="bold">예금주</span>
                        <span id = "depositor"></span>
                    </p>
                </div>
                <h3>최종결제 금액 : <span class="bold" id="finalPrice"></span></h3>
                <span class="btn" onclick="openModal()">결제하기</span>
                <div id="payModal" class="js-modal">
                    <div>
                    	<input id="payCB" type="hidden" value="C">
                        <span class="btn" onclick="closeModal()">결제취소</span>
                        <span id = "setPay" class="btn"><a>결제하기</a></span>
                    </div>
                </div>
            </div>
        </section>
        <c:import url="/footer" />
        <script src="/resources/js/payment.js"></script>
    </body>
</html>
