<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!-- <!-- <script> --> 
<!-- //     	function modal() { -->
<!-- //     		if(document.getElementById("modal").style.display == "block"){ -->
<!-- //     			document.getElementById("modal").style.display = "none"; -->
<!-- //     		} else { -->
<!-- //     			document.getElementById("modal").style.display = "block"; -->
<!-- //     		}    		 -->
<!-- // 		} -->
    	
<!-- <!--     </script> --> 
</head>+9
<body>
<header>
		<h1>
			<a href="./index">LOGO</a>
		</h1>
		<h2>
			<a href="./loginTeam">Login</a>
		</h2>
		<ul class="show">
			<li><a href="./mypage">회원정보</a></li>
			<li>
				<a href="./shoppingBasket"><img src="/resources/images/shoppingCart.png" alt="장바구니"></a>
			</li>
			<li>
				<a href="./mypageMain">OOO님</a>
			</li>
		</ul>
		<h2><a href="./admin.html">Admin</a></h2>
		<nav>
			<ul>
				<li><a href="./index.html">전체상품</a></li>
				<li><a href="./newItem.html">신상품</a></li>
				<li><a href="./bestItem.html">Best Item</a></li>
				<li><a href="./choseItem.html">찜한상품</a></li>
				<li><a href="./faq.html">FAQ</a></li>
			</ul>
		</nav>
	</header>
	
<section> 
   <div class = "list1">
   <div class = "list1-1">
    <h3> 구매내역 목록  </h3> 
   <form class = "form" >
<!--     <span> 기간별조회 </span> -->
<!--  		<input id = "term15" type = "radio" value= "term15" name= "term"> -->
<!--  		<label for ="term15">15일</label> -->
 		
<!--  		<input id = "termOneMonth" type = "radio" value= "termOneMonth" name= "term"> -->
<!--  		<label for = "termOneMonth">1개월</label> -->
 		
<!--  		<input id = "termOneMonth" type = "radio" value= "termOneMonth" name= "term"> -->
<!--  		<label for = "termThreeMonth">3개월</label> -->
 		
<!--  		<input id = "termSixMonth" type = "radio" value= "termSixMonth" name= "term"> -->
<!--  		<label for = "termSixMonth">6개월</label> -->
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
			  <li class = "li2">$$$$$$</li>
			  <li>50,000원</li>
			  <li>처리현황</li>
			  <li>배송조회</li>
<!-- 			  <li>수취확인</li> -->
		  </ul>
		  
		  
		  
		  	<ul>
<!-- 		  	  <li class = "li1"> <input id = "two" type = "radio" value= "two" name= "date"> </li> -->
<!-- 			  <li>19.5.09</li> -->
<!-- 			  <li>12345</li> -->
			 <li> 대표제품명</li>
			 <li class = "li1"> <input id = "three" type = "radio" value= "three" name= "date"> </li>
			 <li >$$$$$$</li>
			 <li > <input id = "three" type = "radio" value= "three" name= "date"> </li>
			 <li >$$$$$$</li>
			 <li > <input id = "three" type = "radio" value= "three" name= "date"> </li>
			 <li >$$$$$$</li>
<!-- 			  <li>50,000원</li> -->
<!-- 			  <li>처리현황</li> -->
<!-- 			  <li>배송조회</li> -->
<!-- 			  <li>수취확인</li> -->
		  </ul>
		  	<ul>
		  	  <li class = "li1"> <input id = "three" type = "radio" value= "three" name= "date"> </li>
			  <li>19.6.21</li>
			  <li>12345</li>
			  <li class = "li2">$$$$$$</li>
			  <li>50,000원</li>
			  <li>처리현황</li>
			  <li>배송조회</li>
<!-- 			  <li>수취확인</li> -->
		  </ul>  
		  <ul>
		      <li class = "li1"> <input id = "four" type = "radio" value= "four" name= "date"> </li>
			  <li>19.7.01</li>
			  <li>12345</li>
			  <li class = "li2">$$$$$$</li>
			  <li>50,000원</li>
			  <li>처리현황</li>
			  <li>배송조회</li>
<!-- 			  <li>수취확인</li> -->
		  </ul>
		  	<ul>
		  	  <li class = "li1"> <input id = "five" type = "radio" value= "five" name= "date"> </li>
			  <li>19.11.09</li>
			  <li>12345</li>
			  <li class = "li2">$$$$$$</li>
			  <li>50,000원</li>
			  <li>처리현황</li>
			  <li>배송조회</li>
<!-- 			  <li>수취확인</li> -->
		  </ul>
		  	<ul>
		  	  <li class = "li1"> <input id = "six" type = "radio" value= "six" name= "date"> </li>
			  <li>19.12.24</li>
			  <li>12345</li>
			  <li class = "li2">$$$$$$</li>
			  <li>50,000원</li>
			  <li>처리현황</li>
			  <li>배송조회</li>
<!-- 			  <li>수취확인</li> -->
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
<footer>
		<p>Created by VYVOJ</p>
		<h4>본 사이트에서 사용된 모든 이미지는 <a href="https://store.musinsa.com/">MUSINSA Store</a>에 저작권이 있습니다.</h4>
	</footer>
	<script type="text/javascript" src="/resources/js/mypageMain.js"></script>
</body>
</html>