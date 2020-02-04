<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>TeamProject MainPage</title>
		<link rel="stylesheet" href="/resources/css/reset.css" />
		<link rel="stylesheet" href="/resources/css/commonlayout.css" />
		<link rel="stylesheet" href="/resources/css/item.css" />
    </head>
<body>
	<c:import url="/header" />
	<section>
		<div id="itemArea">
			<img src="/resources/images/img1.jpg" alt="sample1" />
			<div>
				<h2>Sample Item</h2>
				<p class="price">19,000 Won</p>
				<p class="amount">
					<span class="countName">수량</span>
					<span class="countBtn" onclick="countBtn(event, this, 0)">-</span>
					<span><input class="js-count" type="text" value=1 /></span>
					<span class="countBtn" onclick="countBtn(event, this, 1)">+</span>
				</p>
				<p class="color">
					<span>색상</span>
					<select>
						<option value="">색상을 선택해 주세요</option>
						<option value="흰색">흰색</option>
						<option value="검정색">검정색</option>
						<option value="파란색">파란색</option>
						<option value="네이비색">네이비색</option>
						<option value="회색">회색</option>
					</select>
				</p>
				<div id="btnArea">
					<span class="buybtn" onclick="location.href='/main/payment';">BUY NOW</span>
					<span class="cartbtn" onclick="location.href='/main/shoppingBasket';"><img alt="cart" src="/resources/images/shoppingCart-W.png"></span>
					<span onclick="choseItem();" class="js-chose chose">♡</span>
				</div>
			</div>
		</div>
		<div id="itemDetail">
			<img src="/resources/images/sample.jpg" alt="sampleDetaile" />
		</div>
	</section>
	<c:import url="/footer" />
	<script type="text/javascript" src="/resources/js/item.js"></script>
</body>
</html>