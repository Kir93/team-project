<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<body>
		<c:forEach var="row" items="${data.result}">
			<ul>
				<li class = "li_tatle item_inventory_li2"><input class="chk" id="${row.no}" name="chk" type = "radio" value="${row.no}"></li>
				<li><label for = "${row.no}" class = "item_inventory_li1">${row.no}</label></li>
				<li><label for = "${row.no}" class = "item_inventory_li1">${row.soldOut eq 'N' ? "판매중" : "품절"}</label></li>
				<li><label for = "${row.no}" class = "item_inventory_li3">${row.sname}</label></li>
				<li><label for = "${row.no}" class = "item_inventory_li1">${row.price}</label></li>
			</ul>
		</c:forEach>
	</body>