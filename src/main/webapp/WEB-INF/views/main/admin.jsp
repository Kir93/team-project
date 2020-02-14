<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
<!-- 		<meta name="viewport" content="width=640, heigth=device-heigth,"> -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel = "stylesheet" href = "/resources/css/admin.css">
		<link rel="shortcut icon" type="image/x-icon" href="/resources/images/admin/adminFavicon.png">
		<title>상품관리 / 관리자 전용</title>
		<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap&subset=korean" rel="stylesheet">
		<script src="/lib/jquery/3.4.1/dist/jquery.min.js"></script>
		<script src="/resources/js/admin.js"></script>
		<script src="/resources/js/product.js"></script>
	</head>
	<body onload="Accordion()">
	 	<header>
			<nav id = "nav_tab">
				<ul>
					<li><input id = "tab1" type = "radio" name = "tabs"><label for = "tab1" onclick = "home('/main/index')" class = "logo">LOGO</label></li>
					<li><input id = "tab2" type = "radio" name = "tabs" checked="checked"><label for = "tab2" onclick = "menu('#Main')">Home</label></li>
					<li><input id = "tab3" type = "radio" name = "tabs"><label for = "tab3" onclick = "menu('#ItemList')">상품관리</label></li>
					<li><input id = "tab4" type = "radio" name = "tabs"><label for = "tab4" onclick = "menu('#Money')">결제/주문관리</label></li>
					<li><input id = "tab5" type = "radio" name = "tabs"><label for = "tab5" onclick = "menu('#Delivery')">반품/교환관리</label></li>
					<li><input id = "tab6" type = "radio" name = "tabs"><label for = "tab6" onclick = "menu('#Inquiry')">문의관리</label></li>
					<li><input id = "tab7" type = "radio" name = "tabs"><label for = "tab7" onclick = "menu('#Member')">회원관리</label></li>
<!-- 					<li class="switch"><input type="checkbox"><span class="slider"></span> 테마 토글스위치 -->
				</ul>
			</nav>
		</header>	
		<section id = "ItemList">
					<h1 class = "title">상품관리</h1>
					<hr>
					<h3 class = "subtitle">상품현황</h3>
				<div class = "itemstatus">
					<ul>
						<li>
							<a>
								<strong>전체</strong>
								<span>80건</span>
							</a>
						</li>
						<li>
							<a>
								<strong>판매중</strong>
								<span>65건</span>
							</a>
						</li>
						<li>
							<a class = "a_line">
								<strong>품절</strong>
								<span>2건</span>
							</a>
						</li>
					</ul>
				</div>
					<h3 class = "subtitle">상품목록</h3>
					<div class = "btnset">
						<button id="open" type="button" onclick = "openModal('.M1')">상품등록</button>
						<button type="button" onclick = "openModal('.M3')">수정</button>
					</div>
					<div class = "item_inventory2">
					<form >
						<ul>
							<li class = "li_tatle item_name_li2"><input type = "checkbox" class = "checkboxAll"></li>
							<li class = "item_name_li2">no</li>
							<li class = "item_name_li1">상품구분</li>
							<li class = "item_name_li1">상품코드</li>
							<li class = "item_name_li3">상품명</li>
							<li class = "item_name_li1">판매가</li>
						</ul>
					</form>	
					</div>	
				<div class = "item_inventory">	
					<form class = "scroll">	
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">상품구분</li>
							<li class = "item_inventory_li1">상품코드</li>
							<li class = "item_inventory_li3">상품명</li>
							<li class = "item_inventory_li1">판매가</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">상품구분</li>
							<li class = "item_inventory_li1">상품코드</li>
							<li class = "item_inventory_li3">상품명</li>
							<li class = "item_inventory_li1">판매가</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">상품구분</li>
							<li class = "item_inventory_li1">상품코드</li>
							<li class = "item_inventory_li3">상품명</li>
							<li class = "item_inventory_li1">판매가</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">상품구분</li>
							<li class = "item_inventory_li1">상품코드</li>
							<li class = "item_inventory_li3">상품명</li>
							<li class = "item_inventory_li1">판매가</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">상품구분</li>
							<li class = "item_inventory_li1">상품코드</li>
							<li class = "item_inventory_li3">상품명</li>
							<li class = "item_inventory_li1">판매가</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">상품구분</li>
							<li class = "item_inventory_li1">상품코드</li>
							<li class = "item_inventory_li3">상품명</li>
							<li class = "item_inventory_li1">판매가</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">상품구분</li>
							<li class = "item_inventory_li1">상품코드</li>
							<li class = "item_inventory_li3">상품명</li>
							<li class = "item_inventory_li1">판매가</li>
						</ul>
					</form>
				</div>
			<div class="modal hidden M1">
				<div class = "modal__overlay"></div>
				<div class="modal__content">
				<span class="close" onclick="closeModal()">&times;</span> 
					<h1 class = "title2">상품등록</h1>
					<hr>
					<div class = "inputarea">
						<form id="setProduct">
							<ul>
								<li>
									<label class = "li_tatle" for = "sname">상품명</label>
									<input class = "input_name" type = "text" id = "sname" name="sname" placeholder="EX : 나만알고싶은 세미오버 싱글코트" >
								</li>	
							</ul>	
							<ul>
								<li>
									<label class = "li_tatle" for = "price1">판매가</label>
									<input class = "input_price" type = "text" id = "price1" name="price1" placeholder="EX : 48,500">	 
								</li>
							</ul>
							<ul>	
								<li>
									<label class = "li_tatle" for = "thumbnailImg">썸네일이미지등록</label>
									<input type ="file" name = "thumbnailImg" id = "thumbnailImg">
								</li>
							</ul>
							<ul>	
								<li>
									<label class = "li_tatle" for = "explain1">상품컬러</label>
									<div class = "input_check">
										<input class = "" type = "checkbox"><span>Black</span>
										<input class = "" type = "checkbox"><span>White</span>
										<input class = "" type = "checkbox"><span>Gray</span>
										<input class = "" type = "checkbox"><span>Blue</span>
										<input class = "" type = "checkbox"><span>Red</span>
									</div>
								</li>
								
							</ul>
							<ul>						
								<li>
									<label class = "li_tatle" for = "detailImg">상품상세설명</label>
									<input class = "" type ="file" name = "detailImg" id = "detailImg">
	 <!-- 					        <textarea class = "li_input inputexplain2" name = "txt"></textarea>  텍스트 --> 	
								</li>
							</ul>
							<div  class="btnregister">	
								<input type="submit" value="등록" class = "submit">
							</div>	
						</form>
						</div>
					</div>	
				</div>
				<div class="modal hidden M3">
				<div class = "modal__overlay"></div>
				<div class="modal__content">
				<span class="close" onclick="closeModal()">&times;</span> 
					<h1 class = "title2">상품수정</h1>
					<hr>
					<div class = "inputarea">
						<form autocomplete="off">
							<ul>
								<li>
									<label class = "li_tatle" for = "item_name">상품명</label>
									<input class = "input_name" type = "text" id = "item_name" placeholder="EX : 나만알고싶은 세미오버 싱글코트" >
								</li>	
							</ul>	
							<ul>
								<li>
									<label class = "li_tatle" for = "price2">판매가</label>
									<input class = "input_price" type = "text" id = "price2" placeholder="EX : 48,500">	 
								</li>
							</ul>
							<ul>	
								<li>
									<label class = "li_tatle" for = "thumbnail_id">썸네일이미지등록</label>
									<input type ="file" name = "thumbnail" id = "thumbnail_id">
								</li>
							</ul>
							<ul>	
								<li>
									<label class = "li_tatle" for = "explain1">상품컬러</label>
									<div class = "input_check">
										<input class = "" type = "checkbox"><span>Black</span>
										<input class = "" type = "checkbox"><span>White</span>
										<input class = "" type = "checkbox"><span>Gray</span>
										<input class = "" type = "checkbox"><span>Blue</span>
										<input class = "" type = "checkbox"><span>Red</span>
									</div>
								</li>
							</ul>
							<ul>						
								<li>
									<label class = "li_tatle" for = "explain2">상품상세설명</label>
									<input class = "" type ="file" name = "profile" id = "explain2">
	 <!-- 					        <textarea class = "li_input inputexplain2" name = "txt"></textarea>  텍스트 --> 	
								</li>
							</ul>
							<ul>	
								<li>
									<label class = "li_tatle" for = "explain1">상품상태</label>
									<div class = "input_check">
										<input class = "" type = "checkbox"><span>품절</span>
									</div>
								</li>
							</ul>
							<div  class="btnregister">	
								<input type="submit" value="수정" class = "submit">
							</div>	
						</form>
						</div>
					</div>	
				</div>	
		</section>
		<section id = "Main" class="show">
		 	<h1 class = "title">HOME</h1>
		 	<hr>
			<h3 class = "subtitle">주문관리</h3>
			<div class = "order">
				<form>
					<ul>
						<li>
							<a>
								<span id = "Home_pay"></span>
								<h4>결제완료</h4>
							</a>
						</li>
						<li>
							<a>
								<span id = "Home_countRefund">0</span>
								<h4>반품신청</h4>
							</a>
						</li>
						<li>
							<a>
								<span id = "Home_countExchange">0</span>
								<h4>교환신청</h4>
							</a>
						</li>
					</ul>
				</form>
			</div>
			<hr>	
			<h3 class = "subtitle">회원/방문자</h3>
			<div class = "visitant">
				<form>
					<ul>
						<li>
							<a>
								<span id = "Home_SelectUserCount">0</span>
								<h4>전체회원</h4>
							</a>
						</li>
						<li>
							<a>
								<span id = "Home_monthUserSignup">0</span>
								<h4>이달가입회원</h4>
							</a>
						</li>
						<li>
							<a>
								<span id = "Home_todayLogin">0</span>
								<h4>오늘방문자</h4>
							</a>
						</li>
						<li>
							<a>
								<span id = "Home_monthLogin">0</span>
								<h4>이달방문자</h4>
							</a>
						</li>
					</ul>
				</form>
			</div>
			<hr>	
			<h3 class = "subtitle">매출</h3>
			<div class = "sales">
				<form>
					<ul>
						<li>
							<a>
								<span id = "Home_dateSales">0</span>
								<h4>오늘매출</h4>
							</a>
						</li>
						<li>
							<a>
								<span id = "Home_monthSales">0</span>
								<h4>당월매출</h4>
							</a>
						</li>
					</ul>
				</form>
			</div>
		</section>
		<section id = "Delivery">
			<h1 class = "title">반품/교환 관리</h1>
				<hr>
				<h3 class = "subtitle">반품/교환 현황</h3>
				<div class = "itemstatus itemstatusfont">
					<ul>
						<li>
							<a>
								<strong>반품</strong>
								<span id = "countRefund"></span>
							</a>
						</li>
						<li>
							<a>
								<strong>교환</strong>
								<span id = "countExchange"></span>
							</a>
						</li>
						<li>
							<a class = "a_line">
								<strong>반품완료</strong>
								<span id = "finishRefund"></span>
							</a>
						</li>
						<li>
							<a class = "a_line">
								<strong>교환완료</strong>
								<span id = "finishExchange"></span>
							</a>
						</li>
					</ul>
				</div>
					<h3 class = "subtitle">반품/교환 목록</h3>
					<div class = "btnset">
						<button type="button" id = "approve">승인처리</button>
						<button type="button" id = "denial">거절처리</button>
						<button type="button" id = "selectRefund">반품정렬</button>
						<button type="button" id = "selectExchange">교환정렬</button>
						<button type="button" id = "selectAllExchange">전체보기</button>
					</div>	
				<div class = "item_inventory2">	
					<form>
						<ul>
							<li class = "li_tatle cancel_name_li1"><input type = "checkbox" name ="" class = "checkboxAll"></li>
							<li class = "cancel_name_li1">no</li>
							<li class = "cancel_name_li2">상태구분</li>
							<li class = "cancel_name_li2">주문코드</li>
							<li class = "cancel_name_li3">사유</li>
							<li class = "cancel_name_li2">상품명</li>
							<li class = "cancel_name_li2">처리상태</li>
						</ul>
					</form>	
				</div>	
				<div class = "item_inventory">
					<form class = "scroll" id = "cancel_List"></form>
				</div>
		</section>
		<section id = "Inquiry">
			<h1 class = "title">문의 관리</h1>
			<hr>
			<h3 class = "subtitle">문의 현황</h3>
				<div class = "itemstatus itemstatusfont">
					<ul>
						<li>
							<a>
								<strong>전체문의</strong>
								<span>13건</span>
							</a>
						</li>
						<li>
							<a>
								<strong>미처리</strong>
								<span>2건</span>
							</a>
						<li>
							<a class = "a_line">
								<strong>문의완료</strong>
								<span>3건</span>
							</a>
						</li>
					</ul>
				</div>
					<h3 class = "subtitle">문의목록</h3>
					<div class = "btnset">
						<button type="button">처리완료정렬</button>
						<button type="button">미처리정렬</button>
						<button type="button">처리완료</button>
					</div>	
					<div class = "item_inventory2">	
						<form>
							<ul>
								<li class = "li_tatle item_name_li2"><input type = "checkbox" name ="" class = "checkboxAll"></li>
								<li class = "item_name_li2">no</li>
								<li class = "item_name_li1">문의상태</li>
								<li class = "item_name_li1">이름</li>
								<li class = "item_name_li3">문의내용</li>
								<li class = "item_name_li1">작성일</li>
							</ul>
						</form>
					</div>	
					<div class = "item_inventory">		
					 	<form class = "scroll">	
						<ul class = "accordion">
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">문의상태</li>
							<li class = "item_inventory_li1">이름</li>
							<li class = "item_inventory_li3">문의내용</li>
							<li class = "item_inventory_li1">작성일</li>
						</ul>
						<ul class = "panel">
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2 answer">no</li>
							<li class = "item_inventory_li1 answer">문의상태</li>
							<li class = "item_inventory_li1 answer">담당자명</li>
							<li class = "text_inventory_li3 answer scroll"><textarea class = "textAnswer scroll" placeholder="답변을 등록해주세요."></textarea></li>
							<li class = "item_inventory_li1 answer">답변작성일</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">문의상태</li>
							<li class = "item_inventory_li1">이름</li>
							<li class = "item_inventory_li3">문의내용</li>
							<li class = "item_inventory_li1">작성일</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">문의상태</li>
							<li class = "item_inventory_li1">이름</li>
							<li class = "item_inventory_li3">문의내용</li>
							<li class = "item_inventory_li1">작성일</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">문의상태</li>
							<li class = "item_inventory_li1">이름</li>
							<li class = "item_inventory_li3">문의내용</li>
							<li class = "item_inventory_li1">작성일</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">문의상태</li>
							<li class = "item_inventory_li1">이름</li>
							<li class = "item_inventory_li3">문의내용</li>
							<li class = "item_inventory_li1">작성일</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">문의상태</li>
							<li class = "item_inventory_li1">이름</li>
							<li class = "item_inventory_li3">문의내용</li>
							<li class = "item_inventory_li1">작성일</li>
						</ul>
						<ul>
							<li class = "li_tatle item_inventory_li2"><input type = "checkbox"></li>
							<li class = "item_inventory_li2">no</li>
							<li class = "item_inventory_li1">문의상태</li>
							<li class = "item_inventory_li1">이름</li>
							<li class = "item_inventory_li3">문의내용</li>
							<li class = "item_inventory_li1">작성일</li>
						</ul>
					</form>
				</div>
		</section>	
		<section id = "Member">
			<h1 class = "title">회원관리</h1>
			<hr>
			<h3 class = "subtitle">회원현황</h3>
				<div class = "memberstatus itemstatusfont">
					<ul>
						<li>
							<a>
								<strong>전체회원</strong>
								<span>100,000명</span>
							</a>
						</li>
						<li>
							<a>
								<strong>남자회원</strong>
								<span>50,000명</span>
							</a>
						</li>
						<li>
							<a>
								<strong>여자회원</strong>
								<span>50,000명</span>
							</a>
						</li>
					</ul>
				</div>
					<h3 class = "subtitle">회원목록</h3>
					<div class = "search">
						<form>
							<button type="button" class = "search_array">관리자정렬</button>
							<button type="button" class = "search_array">회원정렬</button>
							<input type="text" placeholder="회원명을 입력하세요." class= "searchbar"/>
							<button type="button" class = "search_btn">검색</button>
						</form>
					</div>	
				<div class = "item_inventory2">	
					<form>
						<ul>
							<li class = "li_tatle user_item_name_li1"><input type = "checkbox" name ="" class = "checkboxAll"></li>
							<li class = "user_item_name_li1">no</li>
							<li class = "user_item_name_li2">성별</li>
							<li class = "user_item_name_li3">이름</li>
							<li class = "user_item_name_li3">구분</li>
							<li class = "user_item_name_li3">회원정보</li>
							<li class = "user_item_name_li3">가입일자</li>
						</ul>
					</form>
				</div>		
				<div class = "item_inventory">
					<form class = "scroll">		
						<ul>
							<li class = "li_tatle user_inventory_li1"><input type = "checkbox"></li>
							<li class = "user_inventory_li1">no</li>
							<li class = "user_inventory_li2">성별</li>
							<li class = "user_inventory_li3">이름</li>
							<li class = "user_inventory_li3">
							<select name="division">
							  <option value="회원" selected="selected">회원</option>
							  <option value="관리자">관리자</option>
							</select>
							</li>
							<li class = "user_inventory_li3">회원정보</li>
							<li class = "user_inventory_li3">가입일자</li>
						</ul>
						<ul>
							<li class = "li_tatle user_inventory_li1"><input type = "checkbox"></li>
							<li class = "user_inventory_li1">no</li>
							<li class = "user_inventory_li2">성별</li>
							<li class = "user_inventory_li3">이름</li>
							<li class = "user_inventory_li3">
							<select name="division">
							  <option value="회원" selected="selected">회원</option>
							  <option value="관리자">관리자</option>
							</select>
							</li>
							<li class = "user_inventory_li3">회원정보</li>
							<li class = "user_inventory_li3">가입일자</li>
						</ul>
						<ul>
							<li class = "li_tatle user_inventory_li1"><input type = "checkbox"></li>
							<li class = "user_inventory_li1">no</li>
							<li class = "user_inventory_li2">성별</li>
							<li class = "user_inventory_li3">이름</li>
							<li class = "user_inventory_li3">
							<select name="division">
							  <option value="회원" selected="selected">회원</option>
							  <option value="관리자">관리자</option>
							</select>
							</li>
							<li class = "user_inventory_li3">회원정보</li>
							<li class = "user_inventory_li3">가입일자</li>
						</ul>
						<ul>
							<li class = "li_tatle user_inventory_li1"><input type = "checkbox"></li>
							<li class = "user_inventory_li1">no</li>
							<li class = "user_inventory_li2">성별</li>
							<li class = "user_inventory_li3">이름</li>
							<li class = "user_inventory_li3">
							<select name="division">
							  <option value="회원" selected="selected">회원</option>
							  <option value="관리자">관리자</option>
							</select>
							</li>
							<li class = "user_inventory_li3">회원정보</li>
							<li class = "user_inventory_li3">가입일자</li>
						</ul>
						<ul>
							<li class = "li_tatle user_inventory_li1"><input type = "checkbox"></li>
							<li class = "user_inventory_li1">no</li>
							<li class = "user_inventory_li2">성별</li>
							<li class = "user_inventory_li3">이름</li>
							<li class = "user_inventory_li3">
							<select name="division">
							  <option value="회원" selected="selected">회원</option>
							  <option value="관리자">관리자</option>
							</select>
							</li>
							<li class = "user_inventory_li3">회원정보</li>
							<li class = "user_inventory_li3">가입일자</li>
						</ul>
						<ul>
							<li class = "li_tatle user_inventory_li1"><input type = "checkbox"></li>
							<li class = "user_inventory_li1">no</li>
							<li class = "user_inventory_li2">성별</li>
							<li class = "user_inventory_li3">이름</li>
							<li class = "user_inventory_li3">
							<select name="division">
							  <option value="회원" selected="selected">회원</option>
							  <option value="관리자">관리자</option>
							</select>
							</li>
							<li class = "user_inventory_li3">회원정보</li>
							<li class = "user_inventory_li3">가입일자</li>
						</ul>
						<ul>
							<li class = "li_tatle user_inventory_li1"><input type = "checkbox"></li>
							<li class = "user_inventory_li1">no</li>
							<li class = "user_inventory_li2">성별</li>
							<li class = "user_inventory_li3">이름</li>
							<li class = "user_inventory_li3">
							<select name="division">
							  <option value="회원" selected="selected">회원</option>
							  <option value="관리자">관리자</option>
							</select>
							</li>
							<li class = "user_inventory_li3">회원정보</li>
							<li class = "user_inventory_li3">가입일자</li>
						</ul>
					</form>
				</div>
		</section>
		<section id = "Money">
			<h1 class = "title">결제/주문관리</h1>
			<hr>
			<h3 class = "subtitle">매출현황</h3>
				<div class = "salesStatus itemstatusfont" id = "totalsales">
					<ul>
						<li>
							<a>
								<strong>총매출액</strong>
								<span id = "totSales"></span>
							</a>
						</li>
						<li>
							<a>
								<strong>이번달 매출액</strong>
								<span id = "monthSales"></span>
							</a>
						</li>
						<li class = "a_line2">
							<a>
								<strong>저번달 매출액</strong>
								<span id = "lastMonthSales"></span>
							</a>
						</li>
						<li class = "a_line2">
							<a>
								<strong>전월대비 증감액</strong>
								<span id = "salesGap"></span>
							</a>
						</li>
					</ul>
				</div>
					<h3 class = "subtitle">주문목록</h3>
					<div class = "search">
						<form>
							<button id = "open2" type="button" class = "search_array" onclick="openModal('.M2')">결제정보 등록</button>
							<button type="button" id = "deposit_range"class = "search_array">무통장 정렬</button>
							<input id = "order_search_text" type="text" placeholder="회원명 또는 주문번호를 입력하세요." class= "searchbar"/>
							<button type="button" id = "order_search" class = "search_btn">검색</button>
						</form>
					</div>	
				<div class = "item_inventory2">	
					<form>
						<ul>
							<li class = "li_tatle order_item_name_li2"><input type = "checkbox" name ="" class = "checkboxAll" checked="checked" onclick="return false"></li>
							<li class = "order_item_name_li2">no</li>
							<li class = "order_item_name_li3">주문상태</li>
							<li class = "order_item_name_li4">상품코드</li>
							<li class = "order_item_name_li4">상품수량</li>
							<li class = "order_item_name_li1">상품명</li>
							<li class = "order_item_name_li1">주문합계</li>
							<li class = "order_item_name_li3">구매자명</li>
							<li class = "order_item_name_li1">주문일자</li>
						</ul>
					</form>
				</div>		
				<div class = "item_inventory">
					<form id = "order_itemlist" class = "scroll"></form>	
<!-- 						<ul> -->
<!-- 							<li class = "li_tatle item_inventory_li2"><input type = "checkbox" name ="" class = "checkboxAll"></li> -->
<!-- 							<li class = "item_inventory_li2">no</li> -->
<!-- 							<li class = "item_inventory_li1">주문상태</li> -->
<!-- 							<li class = "item_inventory_li1">상품코드</li> -->
<!-- 							<li class = "item_inventory_li1">상품명</li> -->
<!-- 							<li class = "item_inventory_li1">주문합계</li> -->
<!-- 							<li class = "item_inventory_li1">구매자명</li> -->
<!-- 							<li class = "item_inventory_li1">주문일자</li> -->
<!-- 						</ul> -->
<!-- 					</form> -->
				</div>
			<div class="modal hidden M2">
				<div class = "modal__overlay"></div>
				<div class="modal__content">
				<span class="close" onclick="closeModal()">&times;</span> 
			<h1 class = "title2">결제관리</h1>
			<hr>
			<div class = "inputarea">
				<form autocomplete="off" id = "bankbook">
					<ul>
						<li>
							<label class = "li_tatle" for = "depositor">무통장 예금주명</label>
							<input class = "input_name" type = "text" id = "depositor" placeholder="EX : 한충렬" >
						</li>	
					</ul>	
					<ul>
						<li>
							<label class = "li_tatle" for = "bank">입금은행</label>
							<input class = "input_price" type = "text" id = "bank"
							 placeholder="EX : 국민은행 : 0000000-00-000000">	 
						</li>
					</ul>
					<div  class="btnregister">	
						<input type="submit" value="등록" class = "submit">
					</div>	
				</form>	
			</div>
			</div>
			</div>
		</section>
	<footer>
		<p>Created by VYVOJ</p>
	</footer>
	</body>
</html>