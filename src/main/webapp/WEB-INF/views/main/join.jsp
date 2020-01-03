<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>join</title>
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
		<form action="./loginTeamSuccess.html" method="post">
			<div class = "join">
				<ul>
				
					<li><label for="email">이메일 입력</label> <br></li>
					<li><input id="email" type="email" name="mb_email"
						placeholder="계정을 입력하세요." title="이메일입력"><br></li>	
						
<!-- 					<li><label for="name">이름 입력</label> <br></li> -->
<!-- 					<li><input id="name" type="text" name="mb_name" -->
<!-- 						placeholder="이름을 입력하세요." title="이름입력"><br></li> -->
<!-- 					<li><label for="아이디">아이디입력</label></li> -->
<!-- 					<li><input id="아이디" type="text" name="mb_email" -->
<!-- 						placeholder="아이디를 입력하세요." title="아이디입력"><br></li> -->

					<li><label for="password">비밀번호 입력</label><br></li>
					<li><input id="password" type="password" name="mb_password"
						placeholder="비밀번호를 입력하세요." title="password입력"><br></li>

					<li><label for="password">비밀번호 재확인</label> <br></li>
					<li><input id="password" type="password" name="mb_password"
						placeholder="비밀번호를 입력하세요." title="password입력"><br></li>

					<li><label for="date">생년월일 입력</label><br></li>
					<li><input id="date" type="date" name="mb_date"
						placeholder="생년월일을 입력하세요" title="birthdate"><br></li>

					<li><label for="addr">주소 입력 </label><br></li>
					<li class="addr"> <div class = "addr1"><input type="text" name="">
						<button>우편번호</button>  </div> </li>
					<li><input type="text" name="addr1"></li>
					<li><input type="text" name="addr2"></li>
					
					<li><label>성별선택</label><br></li>
					<li>
						<select name=gender>
							<option value=male>남성</option>
							<option value=female>여성</option>
						</select>
					</li>
				</ul>
			<button>회원가입완료</button>
			</div>
		</form>
	</section>
	<footer>
		<p>Created by VYVOJ</p>
		<h4>본 사이트에서 사용된 모든 이미지는 <a href="https://store.musinsa.com/">MUSINSA Store</a>에 저작권이 있습니다.</h4>
	</footer>
</body>
</html>