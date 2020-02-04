<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TeamProject PaymentPage</title>
<link rel="stylesheet" href="/resources/css/reset.css" />
<link rel="stylesheet" href="/resources/css/commonlayout.css" />
<link rel="stylesheet" href="/resources/css/paymentFinish.css" />
</head>
<body>
	<c:import url="/header" />
	<section>
		<div>
			<h2>결제에 성공하셨습니다.</h2>
			<span><a href="./mypageMain">주문내역</a></span>
			<span><a href="./index">홈으로</a></span>
		</div>
	</section>
	<c:import url="/footer" />
	<script type="text/javascript" src="/resources/js/main.js"></script>
</body>
</html>