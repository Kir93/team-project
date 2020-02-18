<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<body>
	<c:forEach var = "result" items="${cartResult}" varStatus="status">
         <ul>
             <li class="size-0 pno" data-pno = "${result.pno}"><input name="order" type="checkbox" checked="checked" onclick="return false"/></li>
             <li class="size-1 sname cno" data-cno = "${result.cno}">${result.sname}</li> 
             <li class="size-3 color">${result.color}</li>
<!--                  <select> -->
<%--                     <option value="" <c:if test = "${result.color == ''}">selected="selected"</c:if>>색상을 선택해 주세요</option> --%>
<%-- 					<option value="흰색" <c:if test = "${result.color == '흰색'}">selected="selected"</c:if>>흰색</option> --%>
<%-- 					<option value="검정색" <c:if test = "${result.color == '검정색'}">selected="selected"</c:if>>검정색</option> --%>
<%-- 					<option value="파란색" <c:if test = "${result.color == '파란색'}">selected="selected"</c:if>>파란색</option> --%>
<%-- 					<option value="네이비색" <c:if test = "${result.color == '네이비색'}">selected="selected"</c:if>>네이비색</option> --%>
<%-- 					<option value="회색" <c:if test = "${result.color == '회색'}">selected="selected"</c:if>>회색</option> --%>
<!--                  </select> -->
             
             <li class="size-2 price"><fmt:formatNumber value="${result.price}" type="currency" /></li>
             <li class="amount size-2">${result.quantity}</li>
<!--                  <span onclick="countBtn(event, this, 0)">-</span> -->
<%--                  <input class="js-count quantity" type="text" value="${result.quantity}" pattern="[0-9]{2}" /> --%>
<!--                  <span onclick="countBtn(event, this, 1)">+</span> -->
<!--                  <button class="reBtn" onclick="">수정</button> -->
             
             <li class="js-itemPrice bold size-2 sumPrice" data-finalPrice = "${result.sumPrice}"><fmt:formatNumber value="${result.sumPrice}" type="currency" /></li>
         </ul>
       </c:forEach>     	
</body>
</html>