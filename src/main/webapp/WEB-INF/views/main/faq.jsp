<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content="width=device-width,initial-scale=1.0"/>
<title>FAQ페이지</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/commonlayout.css">
<link rel="stylesheet" href="/resources/css/faq.css">
</head>
<body>
	<c:import url="/header" />
	<section>
			<div class="faq_tb">
				<ul class="tb_1">
					<li class="no title">NO.</li>
					<li class="detail title">제목</li>
					<li class="name title">작성자</li>
					<li class="date title">작성일</li>
				</ul>
				<ul class="tb_1 accordion">
					<li class="no">8</li>
					<li class="detail subject">질문이여~</li>
					<li class="name">남재규</li>
					<li class="date"> 2019-12-19 06:21:02</li>
				</ul>
				
				<ul class="tb_1 panel accordion">
					<li class="no"></li>
					<li class="question"> 이제품 언제 재입고 되나요? </li>
				</ul>
				
				<ul class="tb_1 panel">
					<li class="no"></li>
					<li class="answer"> 안녕하세요 고객님.현재 재입고 미정입니다.감사합니다.. </li>
					<li class="date">2019-12-19 10:46:43</li>
				</ul>
				<ul class="tb_1 accordion">
					<li class="no">7</li>
					<li class="detail subject">재입고요</li>
					<li class="name">박성민</li>
					<li class="date"> 2019-12-18 23:15:18</li>
				</ul>
				
				<ul class="tb_1 panel accordion">
					<li class="no"></li>
					<li class="question"> 검은색 후리스 언제 재입고 되는지 알수 있나요?</li>
				</ul>
				
				<ul class="tb_1 panel">
					<li class="no"></li>
					<li class="answer"> 안녕하세요 문의하신 상품은 재입고 미정입니다.불편을 드려서 죄송합니다.
					<li class="date"> 2019-12-19 09:51:41</li>
				</ul>	
				<ul class="tb_1">
					<li class="no">6</li>
					<li class="detail subject">교환문의</li>
					<li class="name">박성진</li>
					<li class="date"> 2019-12-18 22:17:44</li>
				</ul>

				<ul class="tb_1">
					<li class="no">5</li>
					<li class="detail subject">재입고문의</li>
					<li class="name">박찬희</li>
					<li class="date"> 2019-12-18 21:18:17</li>
				</ul>

				<ul class="tb_1">
					<li class="no">4</li>
					<li class="detail subject">문의</li>
					<li class="name">배종훈</li>
					<li class="date"> 2019-12-18 21:01:16</li>
				</ul>

				<ul class="tb_1">
					<li class="no">3</li>
					<li class="detail subject">환불이요</li>
					<li class="name">양혜리</li>
					<li class="date"> 2019-12-18 20:44:12</li>
				</ul>

				<ul class="tb_1">
					<li class="no">2</li>
					<li class="detail subject">재입고문의</li>
					<li class="name">윤경민</li>
					<li class="date"> 2019-12-18 20:42:01</li>
				</ul>

				<ul class="tb_1">
					<li class="no">1</li>
					<li class="detail subject">상품문의</li>
					<li class="name">이규철</li>
					<li class="date"> 2019-12-18 20:26:43</li>
				</ul>
			</div>
			<div class="number">
				<a class="left-arrow" href="#Previous_p">&#60;</a>
				<a href="#1page" class="select">1</a> 
				<a href="#2page">2</a>
				<a href="#3page">3</a>
				<a href="#4page">4</a>
				<a href="#5page">5</a>
				<a class="right-arrow" href="#next_pd">&#62;</a>
				<button class="button">글쓰기</button>				
			</div>
			<div class="modal">
				<div class="writemodal">
					<form>
					<div class="one">
					<label for="title">제목</label> 
					<input id="title" type="text" name="txt" placeholder="제목을 입력하세요">
				</div>
				<div class="two">
				<label for="content">내용</label>
				<textarea id="content" cols="58" rows="8" placeholder="내용을 입력하세요"></textarea>
				</div>
				<div id="b_all">
					<button class="m_button" id="cancel">취소</button>
					<button class="m_button" id="sub_b">등록</button>
				</div>
				</form>
				</div>
			</div>
	</section>
	<c:import url="/footer" />
	<script type="text/javascript" src="/resources/js/faq.js"></script>
</body>
