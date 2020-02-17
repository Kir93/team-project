<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>TeamProject MainPage</title>
        <link rel="stylesheet" href="/resources/css/reset.css" />
        <link rel="stylesheet" href="/resources/css/commonlayout.css" />
        <link rel="stylesheet" href="/resources/css/style.css" />
        <script src="/lib/jquery/3.4.1/dist/jquery.min.js"></script>
        <script src="/resources/js/new.js"></script>
    </head>
<body>
	<c:import url="/header" />
	<section>
		<div id="itemArea"></div>
	</section>
	<c:import url="/footer" />
	<script type="text/javascript" src="/resources/js/main.js"></script>
</body>
</html>