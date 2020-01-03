<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>id</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/commonlayout.css">
<link rel="stylesheet" href="/resources/css/join.css">
</head>
<body>
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
				<a href="./shoppingBasket"><img src="/resources/images/shoppingCart.png" alt="장바구니"></a>
			</li>
			<li>
				<a href="./mypageMain">OOO님</a>
			</li>
		</ul>
		<h2><a href="./admin">Admin</a></h2>
		
	</header>
<section> 
		<form action="#" method="post">

<!-- 			<h3>아이디 찾기</h3> -->
			<div class = "join">
				<ul>
					<li><label for="name">이름 입력</label> <br></li>
					<li><input id="name" type="text" name="mb_name"
						placeholder="이름을 입력하세요." title="이름입력"><br></li>
					
					<li><label for="phoneNo">휴대전화</label> <br></li>
					<li><input id="phoneNo" type="text" name="mb_phoneNo"
						placeholder="휴대전화번호" title="휴대전화번호"><br></li>
				</ul>
					<button class = "idpwd" type="submit">아이디 찾기</button>
			</div>
		
		</form>
	</section>

<footer>
		<p>Created by VYVOJ</p>
		<h4>본 사이트에서 사용된 모든 이미지는 <a href="https://store.musinsa.com/">MUSINSA Store</a>에 저작권이 있습니다.</h4>
	</footer>


</body>
</html>