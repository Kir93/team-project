<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
	<ul>
		<li>
			<strong>전체</strong>
			<span>${status.tot}건</span>
		</li>
		<li>
			<strong>판매중</strong>
			<span>${status.sale}건</span>
		</li>
		<li>
			<strong>품절</strong>
			<span>${status.soldout}건</span>
		</li>
	</ul>
</body>