<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>장바구니</title>
        <link rel="stylesheet" href="/resources/css/reset.css" />
        <link rel="stylesheet" href="/resources/css/commonlayout.css" />
        <link rel="stylesheet" href="/resources/css/shoppingBasket.css" />
        <script src="/lib/jquery/3.4.1/dist/jquery.min.js"></script>
		<script type="text/javascript" src="/resources/js/shoppingBasket.js"></script>
 		<script type="text/javascript">
 			var url = location.href;
		    var parameter = (url.slice(url.indexOf('=') + 1, url.length));
			var user = '${sessionScope.User.no}';
			if(user === ''){
				alert("로그인 후 이용해주시기바랍니다.");
				location.href = "./loginTeam";
			}
			else if(user !== parameter){
				alert("잘못된 접근입니다.");
				location.href = "./index";
			}
 		</script>
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
					<ul class="order-header">
					    <li class="size-0"><input id="allchk" type="checkbox" checked="checked" /></li>
					    <li class="size-1">상품정보</li>
					    <li class="size-3">색상</li>
					    <li class="size-2">판매가</li>
					    <li class="size-2">수량</li>
					    <li class="size-2">주문금액</li>
					</ul>
					<c:forEach var="row" items="${cart}">
						<script>
						$(document).ready(function() {
							var colors = JSON.parse('${row.colorList}');
							var color = '${row.color}';
							viewColors(colors, color);
						});
						</script>
	                    <ul>
	                       <li class="size-0"><input name="order[]" class="order" type="checkbox" value="${row.no}" checked="checked" /></li>
	                       <li class="size-1">
	                       		<input type="hidden" name="sname[]" class="sname" value="${row.sname}" />
	                       		<input type="hidden" name="pno[]" class="pno" value="${row.pno}" />
	                       		${row.sname}
	                       	</li>
						   <li class="size-3">
						      <input class="no" type="hidden" value="${row.no}" />
							    <select name="colors[]" class="colorList">
							        <option value="">색상을 선택해 주세요</option>
							    </select>
							</li>
							<li class="size-2">
								<input type="hidden" name="price[]" class="price" value="${row.price}" />
								<fmt:formatNumber value="${row.price}" type="currency" />
							</li>
							<li class="amount size-2">
							    <span onclick="countBtn(event, this, 0)">-</span>
								<input name=" quantity[]" class="js-count count" type="text" value="${row.quantity}" />
								<input class="no" type="hidden" value="${row.no}" />
								<span onclick="countBtn(event, this, 1)">+</span>
								<button class="reBtn" onclick="repairCount(this)">수정</button>
							</li>
							<li class="js-itemPrice bold size-2">
								<input type="hidden" name="sumPrice[]" class="sumPrice" value="${row.price*row.quantity}" />
								<fmt:formatNumber value="${row.price*row.quantity}" type="currency" />
							</li>
						</ul>
					</c:forEach>
                </div>
                <div class="deletebtn">
                    <button type="button" onclick="delSelectCart(${sessionScope.User.no})">선택상품삭제</button>
                    <button type="button" onclick="delAllCart(${sessionScope.User.no})">전체상품삭제</button>
                </div>
                <div class="buy">
                    <button type="button" onclick="selectCartSend()">선택상품결제</button>
                    <button type="button" onclick="allselectCart()">전체상품결제</button>
                </div>
            </article>
        </section>
        <c:import url="/footer" />
    </body>
    </html>