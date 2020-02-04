<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>join</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/commonlayout.css">
<link rel="stylesheet" href="/resources/css/join.css">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- <script> -->
<!--  //     //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
//     function sample4_execDaumPostcode() {
//         new daum.Postcode({
//             oncomplete: function(data) {
//                 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

//                 // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
//                 // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
//                 var roadAddr = data.roadAddress; // 도로명 주소 변수
//                 var extraRoadAddr = ''; // 참고 항목 변수

//                 // 법정동명이 있을 경우 추가한다. (법정리는 제외)
//                 // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
//                 if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
//                     extraRoadAddr += data.bname;
//                 }
//                 // 건물명이 있고, 공동주택일 경우 추가한다.
//                 if(data.buildingName !== '' && data.apartment === 'Y'){
//                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
//                 }
//                 // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
//                 if(extraRoadAddr !== ''){
//                     extraRoadAddr = ' (' + extraRoadAddr + ')';
//                 }

//                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
//                 document.getElementById('sample4_postcode').value = data.zonecode;
//                 document.getElementById("sample4_roadAddress").value = roadAddr;
//                 document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
//                 // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
//                 if(roadAddr !== ''){
//                     document.getElementById("sample4_extraAddress").value = extraRoadAddr;
//                 } else {
//                     document.getElementById("sample4_extraAddress").value = '';
//                 }

//                 var guideTextBox = document.getElementById("guide");
//                 // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
//                 if(data.autoRoadAddress) {
//                     var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
//                     guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
//                     guideTextBox.style.display = 'block';

//                 } else if(data.autoJibunAddress) {
//                     var expJibunAddr = data.autoJibunAddress;
//                     guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
//                     guideTextBox.style.display = 'block';
//                 } else {
//                     guideTextBox.innerHTML = '';
//                     guideTextBox.style.display = 'none';
//                 }
//             }
//         }).open();
//     } -->
<!-- </script> -->

</head>
<body>

	</head>
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
		<h2><a href="./admin">Admin</a></h2>
		
	</header>

	<section>
		<form  method="post">
			<div class = "join">
				<ul>
				
					<li><label for="name">이름 입력</label> <br></li>
					<li><input id="name" type="text" name="mb_name"
						placeholder="이름을 입력하세요." title="이름입력"><br></li>
				
					<li><label for="email">이메일 입력</label> <br></li>
					<li><input id="email" type="email" name="mb_email"
						placeholder="계정을 입력하세요." title="이메일입력"><br></li>	
						
<!-- 					<li><label for="name">이름 입력</label> <br></li> -->
<!-- 					<li><input id="name" type="text" name="mb_name" -->
<!-- 						placeholder="이름을 입력하세요." title="이름입력"><br></li> -->
<!-- 					<li><label for="아이디">아이디입력</label></li> -->
<!-- 					<li><input id="아이디" type="text" name="mb_email" -->
<!-- 						placeholder="아이디를 입력하세요." title="아이디입력"><br></li> -->

					<li><label for="password">비밀번호 입력</label><br></li>
					<li><input id="password" type="password" name="mb_password"
						placeholder="비밀번호를 입력하세요." title="password입력"><br></li>

					<li><label for="password">비밀번호 재확인</label> <br></li>
					<li><input id="password" type="password" name="mb_password"
						placeholder="비밀번호를 입력하세요." title="password입력"><br></li>

					<li><label for="date">생년월일 입력</label><br></li>
					<li><input id="date" type="date" name="mb_date"
						placeholder="생년월일을 입력하세요" title="birthdate"><br></li>
					
					<li><label for="addr">주소 입력 </label><br></li>
					<li class="addr"> 
						<div class = "addr1">
						<input type="text" id="sample4_postcode" placeholder="우편번호">
						<input id = button type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"> </div> </li>	
<!-- 					<li><input type="text" id="sample4_postcode" placeholder="우편번호"></li> -->
					
<!-- 					<li><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"></li><br> -->
					<li><input type="text" id="sample4_roadAddress" placeholder="도로명주소"></li>
<!-- 					<li><input type="text" id="sample4_jibunAddress" placeholder="지번주소"></li> -->
					<li><span id="guide" style="color:#999;display:none"></span>
					<li><input type="text" id="sample4_detailAddress" placeholder="상세주소"></li>



<!-- 					<li><label for="addr">주소 입력 </label><br></li> -->
<!-- 					<li class="addr"> <div class = "addr1"><input type="text" name=""> -->
<!-- 						<button>우편번호</button>  </div> </li> -->
<!-- 					<li><input type="text" name="addr1"></li> -->
<!-- 					<li><input type="text" name="addr2"></li> -->
					
					<li><label>성별선택</label><br></li>
					<li>
						<select name=gender>
							<option value=male>남성</option>
							<option value=female>여성</option>
						</select>
					</li>
					
					<li><label>연락처</label><br></li>
					<li><input id = "number" type="tel" name="mb_number" placeholder="연락처를 입력하세요."  title="number" onchange="ck()"></li>
<!-- 			<tr> -->
<!--         	<th scope="row">연락처</th> -->
<!--         	<td><input id = "number" type="tel" name="mb_number" -->
<!--     		value= "01012345555"placeholder="연락처를 입력하세요."  title="number"  -->
<!--     		onchange="ck()"></td> -->
<!--     		</tr> -->
					
				</ul>
			<button>회원가입완료</button>
			</div>
		</form>
	</section>
	<footer>
		<p>Created by VYVOJ</p>
		<h4>본 사이트에서 사용된 모든 이미지는 <a href="https://store.musinsa.com/">MUSINSA Store</a>에 저작권이 있습니다.</h4>
	</footer>
	<script type="text/javascript" src="/resources/js/mypage.js"></script>
</body>
</html>