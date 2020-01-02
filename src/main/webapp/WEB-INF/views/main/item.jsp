<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<header>
            <h1>
                <a href="/main/index">LOGO</a>
            </h1>
            <h2 class="show">
                <a href="/main/login">Login</a>
            </h2>
            <ul>
                <li><a href="/main/mypage">회원정보</a></li>
                <li>
                    <a href="/main/shoppingBasket"><img src="/resources/images/shoppingCart.png" alt="장바구니"/></a>
                </li>
                <li>
                    <a href="/main/mypageMain">OOO님</a>
                </li>
            </ul>
            <h2><a href="/main/admin">Admin</a></h2>
            <nav>
                <ul>
                    <li><a href="/main/index">전체상품</a></li>
                    <li><a href="/main/newItem">신상품</a></li>
                    <li><a href="/main/bestItem">Best Item</a></li>
                    <li><a href="/main/choseItem">찜한상품</a></li>
                    <li><a href="/main/faq">FAQ</a></li>
                </ul>
            </nav>
        </header>
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
	<footer>
		<p>Created by VYVOJ</p>
		<h4>본 사이트에서 사용된 모든 이미지는 <a href="https://store.musinsa.com/">MUSINSA Store</a>에 저작권이 있습니다.</h4>
	</footer>
	<script type="text/javascript" src="/resources/js/item.js"></script>
</body>
</html>