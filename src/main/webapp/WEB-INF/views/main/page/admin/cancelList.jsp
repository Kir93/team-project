<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<body>
	<c:forEach var = "result" items="${cancelResult}" varStatus="status">
       <ul>
			<li class = "li_tatle cancel_inventory_li1"><input type = "checkbox" class = "cancelCheck"></li>
			<li class = "cancel_inventory_li1 checkNo">${result.no}</li>
			<li class = "cancel_inventory_li2">${result.exchange}</li>
			<li class = "cancel_inventory_li2">${result.ono}</li>
			<li class = "cancel_inventory_li3 scroll">${result.reason}</li>
			<li class = "cancel_inventory_li2">${result.sname}</li>
			<li class = "cancel_inventory_li2">${result.cstate}</li>
		</ul>
     </c:forEach>      	         	
</body>
</html>