<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>장바구니</title>
        <link rel="stylesheet" href="/resources/css/reset.css" />
        <link rel="stylesheet" href="/resources/css/commonlayout.css" />
        <link rel="stylesheet" href="/resources/css/shoppingBasket.css" />
        <script type="text/javascript" src="/resources/js/payment.js"></script>
    </head>
    <body>
        <c:import url="/header" />
        <section id="ShoppingBasket">
            <article>
                <div class="titlediv">
                    <img src="/resources/images/shoppingCart.png" class="img1" />
                    <span class="title">장바구니</span>
                </div>
                <div class="subtitlediv">
                    <h2>주문상품</h2>
                </div>

                <div id="order">
                    <form action="">
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
                                <span onclick="countBtn(event, this, 0)">-</span>
                                <input class="js-count" type="text" value="1" pattern="[0-9]{2}" />
                                <span onclick="countBtn(event, this, 1)">+</span>
                                <button class="reBtn" onclick="">수정</button>
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
                                <span onclick="countBtn(event, this, 0)">-</span>
                                <input class="js-count" type="text" value="1" />
                                <span onclick="countBtn(event, this, 1)">+</span>
                                <button class="reBtn" onclick="">수정</button>
                            </li>
                            <li class="js-itemPrice bold size-2">10,000 Won</li>
                        </ul>
                    </form>
                </div>
                <div class="deletebtn">
                    <button type="button">선택상품삭제</button>
                    <button type="button">전체상품삭제</button>
                </div>
                <div class="buy">
                    <button type="button" onclick="location.href='./payment';">선택상품결제</button>
                    <button type="button" onclick="location.href='./payment';">전체상품결제</button>
                </div>
            </article>
        </section>
        <c:import url="/footer" />
    </body>
</html>
