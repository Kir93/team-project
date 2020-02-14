<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>MypageMain</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/commonlayout.css">
<link rel="stylesheet" href="/resources/css/mypageMain.css">

</head>
<body>
<c:import url="/header" />
	
<section> 
   <div class = "list1">
   <div class = "list1-1">
    <h3> 구매내역 목록  </h3> 
   <form class = "form" >

			<select name= date>
					<option value=term15>15일</option>
					<option value=termOneMonth>1개월</option>
					<option value=termOneMonth>3개월</option>
					<option value=termSixMonth>6개월</option>
			</select>


   </form>
   </div>
   
   <div class = "list1-2">
   <div class = "ova">
		  <ul class="bg1">
		      <li class = "li1"> 선택  </li>  
			  <li>주문일자</li>
			  <li>주문번호</li>
			  <li class = "li2">대표 제품명</li>
			  <li>결제금액</li>
			  <li>처리현황</li>
			  <li>배송조회</li>
<!-- 			  <li>수취확인</li> -->
		  </ul>
		  
		  
			<ul  class="panel accordion">
			  <li class = "li1"> <input id = "one" type = "radio" value= "one" name= "date"> </li>
			  <li>19.01.12</li>
			  <li>12345</li>
			  <li class = "li2"><a href= "./mypageMain1">$$$$$$</a></li>
			  <li>50,000원</li>
			  <li>처리현황</li>
			  <li>배송조회</li>

		  </ul>
		  
		  
		  
		  	<ul>
		  	  <li class = "li1"> <input id = "two" type = "radio" value= "two" name= "date"> </li>
			  <li>19.5.09</li>
			  <li>12345</li>
			 <li >$$$$$$</li>
			  <li>50,000원</li>
			  <li>처리현황</li>
			  <li>배송조회</li>
			 
		  </ul>
		  	<ul>
		  	  <li class = "li1"> <input id = "three" type = "radio" value= "three" name= "date"> </li>
			  <li>19.6.21</li>
			  <li>12345</li>
			  <li class = "li2">$$$$$$</li>
			  <li>50,000원</li>
			  <li>처리현황</li>
			  <li>배송조회</li>

		  </ul>  
		  <ul>
		      <li class = "li1"> <input id = "four" type = "radio" value= "four" name= "date"> </li>
			  <li>19.7.01</li>
			  <li>12345</li>
			  <li class = "li2">$$$$$$</li>
			  <li>50,000원</li>
			  <li>처리현황</li>
			  <li>배송조회</li>

		  </ul>
		  	<ul>
		  	  <li class = "li1"> <input id = "five" type = "radio" value= "five" name= "date"> </li>
			  <li>19.11.09</li>
			  <li>12345</li>
			  <li class = "li2">$$$$$$</li>
			  <li>50,000원</li>
			  <li>처리현황</li>
			  <li>배송조회</li>

		  </ul>
		  	<ul>
		  	  <li class = "li1"> <input id = "six" type = "radio" value= "six" name= "date"> </li>
			  <li>19.12.24</li>
			  <li>12345</li>
			  <li class = "li2">$$$$$$</li>
			  <li>50,000원</li>
			  <li>처리현황</li>
			  <li>배송조회</li>

		  </ul> 
		  
	  </div> 
	  </div>
	  </div>
	  
<!-- 	   <div>  -->
<!-- 	   <button type="submit"> 교환 및 환불  </button>  -->
	   
	   
<!-- 	   </div> -->
	<div  class = "exchange">
 		<button type="button"  onclick="modal()"> 교환 및 환불 </button>
   </div>

 
	   <div id = "modal">
  <div id="modal-body"></div>
  <div id= "popup">
  	  <div id="popup-head">
  	  	<button type="button" onclick="modal()">X</button>
  	  </div>
	  <div>
	  	<ul>
					<li>
						<select name=exchange>
							<option value=exchange>교환</option>
							<option value=refund>환불</option>
						</select>
					</li>
			<li><input id="password1" type="text" name="mb_password1"
				placeholder="사유를 입력하세요." title="사유입력"></li>
		</ul>
		 	<div id="popup-footer">
  	  	          <button type="button" onclick="modal()" 
  	  	          class = "outbut">교환및환불신청 </button>
  	        </div>	 
	  </div>
  </div> 
 </div>
	  	  


</section>
<c:import url="/footer" />
	<script type="text/javascript" src="/resources/js/mypage.js"></script>
	<script type="text/javascript" src="/resources/js/mypageMain.js"></script>
</body>
</html>