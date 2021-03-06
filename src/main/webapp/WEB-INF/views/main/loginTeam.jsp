<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<title>login</title>
		<link rel="stylesheet" href="/resources/css/reset.css">
		<link rel="stylesheet" href="/resources/css/commonlayout.css">
		<link rel="stylesheet" href="/resources/css/loginteam.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="/resources/js/login.js"></script>
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
		<form>
			 <div class = "login"> 
			<h2> 로그인</h2>
		   	<ul> 
		   		<li><input type = "email" placeholder="이메일입력하세요."  title="이메일입력" required="required" id = "email"> </li>
		   		<li><input type = "password" placeholder="비밀번호을 입력하세요." title="비밀번호 입력" required="required" id = "password"> </li>
		   		<li><input type = "checkbox" id = "chk_id"><label for = "chk_id" > 아이디저장</label></li>
		   		<li><button type="submit" >로그인</button></li>
		   	</ul>
		   <div>
		   	<ul>
				<li><a href= "./join">회원가입 </a></li>
				<li><a href= "./id">아이디 찾기</a></li>
				<li><a href= "./password">비밀번호 찾기</a></li>	
			 </ul>   
		   </div>
		   </div>
		</form>
		</section>
		
		<footer>
		<p>Created by VYVOJ</p>
		<h4>본 사이트에서 사용된 모든 이미지는 <a href="https://store.musinsa.com/">MUSINSA Store</a>에 저작권이 있습니다.</h4>
	</footer>
	</body>
</html>
