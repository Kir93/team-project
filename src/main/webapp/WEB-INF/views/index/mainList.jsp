<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<body>
	<c:forEach var="row" items="${data.result}">
		<div class="item">
			<c:if test="${sessionScope.User.no != null}">
				<c:set var="target" value="false"/>
				<c:forEach var="chose" items="${sessionScope.Chose}">
					<c:if test="${chose.pno == row.no}">
						<c:set var="target" value="true"/>
						<c:set var="no" value="${chose.no}" />
					</c:if>
		    	</c:forEach>
				<c:choose>
					<c:when test="${target}">
						<span class="js-chose" onclick="choseItem(${sessionScope.User.no}, ${row.no}, this)">♥</span>
						<input type="hidden" class="no" value="${no}" />
					</c:when>
					<c:otherwise>
						<span class="js-chose" onclick="choseItem(${sessionScope.User.no}, ${row.no}, this)">♡</span>
					</c:otherwise>
				</c:choose>
		    </c:if>
		    	<a href="/main/item?no=${row.no}"><img src="${row.thumbnailImg}" alt="${row.sname}"/></a>
		    	<div class="itemArea">
		        	<p class="itemName"><a href="/main/item">${row.sname}</a></p>
		        	<p class="itemPrice"><a href="/main/item"><fmt:formatNumber value="${row.price}" type="currency" /></a></p>
		    	</div>
		</div>
	</c:forEach>
</body>