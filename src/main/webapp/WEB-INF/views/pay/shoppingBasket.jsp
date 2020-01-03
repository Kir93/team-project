<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>장바구니</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/commonlayout.css" />
	<link rel = "stylesheet" href ="/resources/css/shoppingBasket.css">
	<script type="text/javascript" src="/resources/js/payment.js"></script>
</head>
<body>
	<header>
		<h1>
			<a href="./index.html">LOGO</a>
			</h1>
			<h2>
				<a href="./loginTeam.html">Login</a>
			</h2>
			<ul class="show">
				<li><a href="./mypage.html">회원정보</a></li>
				<li>
					<a href="shoppingBasket.html"><img src="/resources/images/shoppingCart.png" alt="장바구니" /></a>
				</li>
				<li>
					<a href="./mypageMain.html">OOO님</a>
				</li>
			</ul>
			<h2><a href="./admin.html">ADMIN</a></h2>
			<nav>
				<ul>
					<li><a href="./index.html">전체상품</a></li>
					<li><a href="./newItem.html">신상품</a></li>
					<li><a href="./bestItem.html">Best Item</a></li>
					<li><a href="./choseItem.html">찜한상품</a></li>
					<li><a href="./faq.html">FAQ</a></li>
				</ul>
			</nav>
		</header>
	<section id = "ShoppingBasket">
		<article>
			<div class = "titlediv">
			 	<img src = "/resources/images/shoppingCart.png" class = "img1">
				<span class = "title">장바구니</span>
			</div>
			<div class = "subtitlediv" >
				<h2>주문상품</h2>
			</div>
			
			<div id="order">
			<form action="">
				<ul class="order-header">
					<li class="size-0"><input type="checkbox" checked="checked"></li>
					<li class="size-1">상품정보</li>
					<li class="size-3">색상</li>
					<li class="size-2">판매가</li>
					<li class="size-2">수량</li>
					<li class="size-2">주문금액</li>
				</ul>
				<ul>
					<li class="size-0"><input name="order" type="checkbox" checked="checked"></li>
					<li class="size-1">Sample Item</li>
					<li class="size-3">
						<select>
							<option value="">색상을 선택해 주세요</option>
							<option value="흰색" selected="selected">흰색</option>
							<option value="검정색">검정색</option>
							<option value="파란색">파란색</option>
							<option value="네이비색">네이비색</option>
							<option value="회색">회색</option>
						</select>
					</li>
					<li class="size-2">19,000 Won</li>
					<li class="amount size-2">
						<span onclick="countBtn(event, this, 0)">-</span>
						<input class="js-count" type="text" value=1 pattern="[0-9]{2}" />
						<span onclick="countBtn(event, this, 1)">+</span>
					</li>
					<li class="js-itemPrice bold size-2">19,000 Won</li>
				</ul>
				<ul>
					<li class="size-0"><input name="order" type="checkbox" checked="checked"></li>
					<li class="size-1">Sample Item2</li>
					<li class="size-3">
						<select>
							<option value="">색상을 선택해 주세요</option>
							<option value="흰색">흰색</option>
							<option value="검정색" selected="selected">검정색</option>
							<option value="파란색">파란색</option>
							<option value="네이비색">네이비색</option>
							<option value="회색">회색</option>
						</select>
					</li>
					<li class="size-2">10,000 Won</li>
					<li class="amount size-2">
						<span onclick="countBtn(event, this, 0)">-</span>
						<input class="js-count" type="text" value=1 />
						<span onclick="countBtn(event, this, 1)">+</span></li>
					<li class="js-itemPrice bold size-2">10,000 Won</li>
				</ul>
				</form>
			</div>
			<div class = "deletebtn">
				<button type="button" >선택상품삭제</button>
				<button type="button">전체상품삭제</button>
			</div>
			<div class = "buy">
				<button type="button" onclick="location.href='./payment.html';">선택상품결제</button>
				<button type="button" onclick="location.href='./payment.html';">전체상품결제</button>
			</div>
		</article>
	</section>
	<footer>
		<p>Created by VYVOJ</p>
		<h4>본 사이트에서 사용된 모든 이미지는 <a href="https://store.musinsa.com/">MUSINSA Store</a>에 저작권이 있습니다.</h4>
	</footer>
</body>
</html>