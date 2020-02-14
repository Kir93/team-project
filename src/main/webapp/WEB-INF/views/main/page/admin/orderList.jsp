<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<body>
	<c:forEach var = "result" items="${orderResult}" varStatus="status">
       <ul>
			<li class = "li_tatle order_inventory_li2"><input type = "checkbox" name ="" class = "checkboxAll" checked="checked" onclick="return false"></li>
			<li class = "order_inventory_li2">${result.no}</li>
			<li class = "order_inventory_li3">${result.payCB}</li>
			<li class = "order_inventory_li4">${result.pno}</li>
			<li class = "order_inventory_li4">${result.quantity}</li> 
			<li class = "order_inventory_li1">${result.sname}</li>
			<li class = "order_inventory_li1"><fmt:formatNumber value="${result.sumPrice}" type="currency" /></li>
			<li class = "order_inventory_li3">${result.name}</li>
			<li class = "order_inventory_li1">${result.reg}</li>
		</ul>
     </c:forEach>      	         	
</body>
</html>