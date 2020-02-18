<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<body>
<c:forEach var = "result" items="${itemList}">
     <ul>
         <li class="size-0 pno" data-pno = "${result.pno}"><input name="order" type="checkbox" checked="checked" onclick="return false"/></li>
         <li class="size-1 sname cno" data-cno = "${result.cno}">${result.sname}</li> 
         <li class="size-3 color">${result.color}</li> 
         <li class="size-2 price">${result.price}</li>
         <li class="amount size-2">${result.count}</li>
         <c:set var = "Price" value="${result.price}"/>
<%--           <c:set var = "Price1" value="${fn:substringBefore(Price, 'W')}"/> --%>
<%--           <c:set var = "trimPrice" value ="${fn:trim(Price1)}" /> --%>
         <c:set var = "count" value="${result.count}"/>
<%--          <c:set var = "trimquantity" value ="${fn:trim(quantity)}" /> --%>
         <fmt:parseNumber var = "amount" value="${Price}" type="number"/>
         <fmt:parseNumber var = "unit" value="${count}" type="number"/>
         <li class="js-itemPrice bold size-2 sumPrice" data-finalPrice = "${amount * unit}"><fmt:formatNumber value="${amount * unit}" type="currency" /></li>
         </ul>
</c:forEach>
</body>
</html>