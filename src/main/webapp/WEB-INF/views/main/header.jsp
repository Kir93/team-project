<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<header>
		<h1><a href="/main/index">LOGO</a></h1>
		<h2>${sessionScope.User}</h2>
		<c:choose>
			<c:when test="${sessionScope.User.sector eq 'C'}">
				<ul class="show">
				    <li><a href="/main/mypage">회원정보</a></li>
				    <li><a href="/main/shoppingBasket"><img src="/resources/images/shoppingCart.png" alt="장바구니"/></a></li>
				    <li><a href="/main/mypageMain">OOO님</a></li>
				    <li><a href="/logout">Logout</a></li>
				</ul>
				<nav>
				    <ul>
				        <li><a href="/main/index">전체상품</a></li>
				        <li><a href="/main/newItem">신상품</a></li>
				        <li><a href="/main/bestItem">Best Item</a></li>
				        <li><a href="/main/choseItem">찜한상품</a></li>
				        <li><a href="/main/faq">FAQ</a></li>
				    </ul>
				</nav>
			</c:when>
			<c:when test="${sessionScope.User.sector eq 'A'}">
				<ul class="show">
				    <li><a href="/main/admin">Admin</a></li>
				    <li><a href="/logout">Logout</a></li>
				</ul>
<!-- 				<h2 class="show"><a href="/main/admin">Admin</a></h2> -->
			</c:when>
			<c:otherwise>
				<h2 class="show"><a href="/main/loginTeam">Login</a></h2>
				<nav>
				    <ul>
				        <li><a href="/main/index">전체상품</a></li>
				        <li><a href="/main/newItem">신상품</a></li>
				        <li><a href="/main/bestItem">Best Item</a></li>
				        <li><a href="/main/faq">FAQ</a></li>
				    </ul>
				</nav>
			</c:otherwise>
		</c:choose>
	</header>
</body>
</html>