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
        <link rel="stylesheet" href="/resources/css/style.css" />
    </head>
<body>
	<header>
            <h1>
                <a href="/main/index">LOGO</a>
            </h1>
            <h2>
                <a href="/main/loginTeam">Login</a>
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
            <h2 class="show"><a href="/main/admin">Admin</a></h2>
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
			<div class="item">
				<span class="js-chose" onclick="choseItem()">♥</span>
				<a href="/main/item"><img src="/resources/images/img1.jpg" alt="sample1" /></a>
				<div class="itemArea">
					<p class="itemName"><a href="/main/item">Sample Item</a></p>
					<p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
				</div>
			</div>
			<div class="item">
				<span class="js-chose" onclick="choseItem()">♥</span>
				<a href="/main/item"><img src="/resources/images/img2.jpg" alt="sample1" /></a>
				<div class="itemArea">
					<p class="itemName"><a href="/main/item">Sample Item</a></p>
					<p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
				</div>
			</div>
			<div class="item">
				<span class="js-chose" onclick="choseItem()">♡</span>
				<a href="/main/item"><img src="/resources/images/img3.jpg" alt="sample1" /></a>
				<div class="itemArea">
					<p class="itemName"><a href="/main/item">Sample Item</a></p>
					<p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
				</div>
			</div>
			<div class="item">
				<span class="js-chose" onclick="choseItem()">♡</span>
				<a href="/main/item"><img src="/resources/images/img1.jpg" alt="sample1" /></a>
				<div class="itemArea">
					<p class="itemName"><a href="/main/item">Sample Item</a></p>
					<p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
				</div>
			</div>
			<div class="item">
				<span class="js-chose" onclick="choseItem()">♡</span>
				<a href="/main/item"><img src="/resources/images/img2.jpg" alt="sample1" /></a>
				<div class="itemArea">
					<p class="itemName"><a href="/main/item">Sample Item</a></p>
					<p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
				</div>
			</div>
			<div class="item">
				<span class="js-chose" onclick="choseItem()">♡</span>
				<a href="/main/item"><img src="/resources/images/img3.jpg" alt="sample1" /></a>
				<div class="itemArea">
					<p class="itemName"><a href="/main/item">Sample Item</a></p>
					<p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
				</div>
			</div>
			<div class="item">
				<span class="js-chose" onclick="choseItem()">♡</span>
				<a href="/main/item"><img src="/resources/images/img1.jpg" alt="sample1" /></a>
				<div class="itemArea">
					<p class="itemName"><a href="/main/item">Sample Item</a></p>
					<p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
				</div>
			</div>
			<div class="item">
				<span class="js-chose" onclick="choseItem()">♡</span>
				<a href="/main/item"><img src="/resources/images/img2.jpg" alt="sample1" /></a>
				<div class="itemArea">
					<p class="itemName"><a href="/main/item">Sample Item</a></p>
					<p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
				</div>
			</div>
			<div class="item">
				<span class="js-chose" onclick="choseItem()">♡</span>
				<a href="/main/item"><img src="/resources/images/img3.jpg" alt="sample1" /></a>
				<div class="itemArea">
					<p class="itemName"><a href="/main/item">Sample Item</a></p>
					<p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
				</div>
			</div>
			<div class="item">
				<span class="js-chose" onclick="choseItem()">♡</span>
				<a href="/main/item"><img src="/resources/images/img1.jpg" alt="sample1" /></a>
				<div class="itemArea">
					<p class="itemName"><a href="/main/item">Sample Item</a></p>
					<p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<p>Created by VYVOJ</p>
		<h4>본 사이트에서 사용된 모든 이미지는 <a href="https://store.musinsa.com/">MUSINSA Store</a>에 저작권이 있습니다.</h4>
	</footer>
	<script type="text/javascript" src="/resources/js/item.js"></script>
</body>
</html>