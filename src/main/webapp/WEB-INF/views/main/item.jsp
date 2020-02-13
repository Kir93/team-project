<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>TeamProject MainPage</title>
		<link rel="stylesheet" href="/resources/css/reset.css" />
		<link rel="stylesheet" href="/resources/css/commonlayout.css" />
		<link rel="stylesheet" href="/resources/css/item.css" />
		<script src="/lib/jquery/3.4.1/dist/jquery.min.js"></script>
		<script type="text/javascript" src="/resources/js/item.js"></script>
        <script>
	        $(document).ready(function() {
	        	var colors = JSON.parse('${item.color}');
	        	viewColors(colors);
	        });
        </script>
    </head>
<body>
	<c:import url="/header" />
	<aside>
		<ul class="js-bar">
			<li onclick="topPage();" class="js-top">▲</li>
			<li onclick="buyNow(${sessionScope.User.no})">BUY</li>
			<li onclick="cartNow(${sessionScope.User.no})"><img src="/resources/images/shoppingCart-W.png" alt="장바구니" /></li>
			<c:if test="${sessionScope.User.no != null}">
			<li onclick="choseItem(${sessionScope.User.no})" class="js-chose chose">♡</li>
			</c:if>
		</ul>
	</aside>
	<section>
		<div id="itemArea">
			<img src="${ item.thumbnailImg }" alt="${ item.sname }" />
			<div>
				<input id="no" type="hidden" value="${ item.no }" />
				<h2>${ item.sname }</h2>
				<input id="sname" type="hidden" value="${ item.sname }" />
				<p class="price"><fmt:formatNumber value="${ item.price }" type="currency" /></p>
				<input id="price" type="hidden" value="${ item.price }" />
				<p class="amount">
					<span class="countName">수량</span>
					<span class="countBtn" onclick="countBtn(event, this, 0)">-</span>
					<span><input class="js-count count" type="text" value="1" /></span>
					<span class="countBtn" onclick="countBtn(event, this, 1)">+</span>
				</p>
				<p class="color">
					<span>색상</span>
					<select id="colorList">
					<option value="">색상을 선택해 주세요</option>
					</select>
				</p>
				<div id="btnArea">
					<span class="buybtn" onclick="buyNow(${sessionScope.User.no})">BUY NOW</span>
					<span class="cartbtn" onclick="cartNow(${sessionScope.User.no})"><img alt="cart" src="/resources/images/shoppingCart-W.png"></span>
					<span onclick="choseItem(${sessionScope.User.no})" class="js-chose chose">♡</span>
				</div>
			</div>
		</div>
		<div id="itemDetail">
			<img src="${ item.detailImg }" alt="${ item.sname }" />
		</div>
	</section>
	<c:import url="/footer" />
</body>
</html>