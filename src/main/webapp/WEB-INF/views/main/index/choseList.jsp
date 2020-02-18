<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="row" items="${data.result}">
		<div class="item">
			<c:if test="${sessionScope.User.no != null}">
		    	<span class="js-chose" onclick="choseItem(event, this)">♥</span>
		    </c:if>
		    	<a href="/main/item?no=${ row.no }"><img src="${ row.thumbnailImg }" alt="${ row.sname }"/></a>
		    	<div class="itemArea">
		        	<p class="itemName"><a href="/main/item">${ row.sname }</a></p>
		        	<p class="itemPrice"><a href="/main/item"><fmt:formatNumber value="${ row.price }" type="number" /></a></p>
		    	</div>
		</div>
	</c:forEach>
</body>
</html>