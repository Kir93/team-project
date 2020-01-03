<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>password</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/commonlayout.css">
<link rel="stylesheet" href="/resources/css/join.css">
</head>
<body>
<header>
		<h1>
			<a href="./index">LOGO</a>
		</h1>
		<h2 class="show">
			<a href="./loginTeam">Login</a>
		</h2>
		<ul>
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
			<div class = "join">
				<ul>
					<li><label for="name">이름 입력</label> <br></li>
					<li><input id="name" type="text" name="mb_name"
						placeholder="이름을 입력하세요." title="이름입력"><br></li>
					<li><label for="email">이메일입력</label></li>
					<li><input id="email" type="email" name="mb_email"
						placeholder="계정을 입력하세요." title="email입력"><br></li>

					<li><label for="password">비밀번호 입력</label><br></li>
					<li><input id="password" type="password" name="mb_password"
						placeholder="비밀번호를 입력하세요." title="password입력"><br></li>

					<li><label for="password">비밀번호 재확인</label> <br></li>
					<li><input id="password" type="password" name="mb_password"
						placeholder="비밀번호를 입력하세요." title="password입력"><br></li>

			</ul>	
			<button  type="submit" class = "idpwd">비밀번호 찾기</button>
			</div>
			
		</form>
	</section>

	<footer>
		<p>Created by VYVOJ</p>
		<h4>본 사이트에서 사용된 모든 이미지는 <a href="https://store.musinsa.com/">MUSINSA Store</a>에 저작권이 있습니다.</h4>
	</footer>



</body>
</html>