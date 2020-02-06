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
    </head>
    <body>
    	<c:import url="/header" />
        <section>
            <div id="itemArea">
                <div class="item">
                	<c:if test="${user}">
                    <span class="js-chose" onclick="choseItem(event, this)">♥</span>
                    </c:if>
                    <a href="/main/item"><img src="/resources/images/img1.jpg" alt="sample1"/></a>
                    <div class="itemArea">
                        <p class="itemName"><a href="/main/item">Sample Item</a></p>
                        <p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
                    </div>
                </div>
                <div class="item">
                    <c:if test="${user}">
                    <span class="js-chose" onclick="choseItem(event, this)">♥</span>
                    </c:if>
                    <a href="/main/item"><img src="/resources/images/img2.jpg" alt="sample1"/></a>
                    <div class="itemArea">
                        <p class="itemName"><a href="/main/item">Sample Item</a></p>
                        <p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
                    </div>
                </div>
                <div class="item">
                    <c:if test="${user}">
                    <span class="js-chose" onclick="choseItem(event, this)">♥</span>
                    </c:if>
                    <a href="/main/item"><img src="/resources/images/img3.jpg" alt="sample1"/></a>
                    <div class="itemArea">
                        <p class="itemName"><a href="/main/item">Sample Item</a></p>
                        <p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
                    </div>
                </div>
                <div class="item">
                    <c:if test="${user}">
                    <span class="js-chose" onclick="choseItem(event, this)">♥</span>
                    </c:if>
                    <a href="/main/item"><img src="/resources/images/img1.jpg" alt="sample1"/></a>
                    <div class="itemArea">
                        <p class="itemName"><a href="/main/item">Sample Item</a></p>
                        <p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
                    </div>
                </div>
                <div class="item">
                    <c:if test="${user}">
                    <span class="js-chose" onclick="choseItem(event, this)">♥</span>
                    </c:if>
                    <a href="/main/item"><img src="/resources/images/img2.jpg" alt="sample1"/></a>
                    <div class="itemArea">
                        <p class="itemName"><a href="/main/item">Sample Item</a></p>
                        <p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
                    </div>
                </div>
                <div class="item">
                    <c:if test="${user}">
                    <span class="js-chose" onclick="choseItem(event, this)">♥</span>
                    </c:if>
                    <a href="/main/item"><img src="/resources/images/img3.jpg" alt="sample1"/></a>
                    <div class="itemArea">
                        <p class="itemName"><a href="/main/item">Sample Item</a></p>
                        <p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
                    </div>
                </div>
                <div class="item">
                    <c:if test="${user}">
                    <span class="js-chose" onclick="choseItem(event, this)">♥</span>
                    </c:if>
                    <a href="/main/item"><img src="/resources/images/img1.jpg" alt="sample1"/></a>
                    <div class="itemArea">
                        <p class="itemName"><a href="/main/item">Sample Item</a></p>
                        <p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
                    </div>
                </div>
                <div class="item">
                    <c:if test="${user}">
                    <span class="js-chose" onclick="choseItem(event, this)">♥</span>
                    </c:if>
                    <a href="/main/item"><img src="/resources/images/img2.jpg" alt="sample1"/></a>
                    <div class="itemArea">
                        <p class="itemName"><a href="/main/item">Sample Item</a></p>
                        <p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
                    </div>
                </div>
                <div class="item">
                    <c:if test="${user}">
                    <span class="js-chose" onclick="choseItem(event, this)">♥</span>
                    </c:if>
                    <a href="/main/item"><img src="/resources/images/img3.jpg" alt="sample1"/></a>
                    <div class="itemArea">
                        <p class="itemName"><a href="/main/item">Sample Item</a></p>
                        <p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
                    </div>
                </div>
                <div class="item">
                    <c:if test="${user}">
                    <span class="js-chose" onclick="choseItem(event, this)">♥</span>
                    </c:if>
                    <a href="/main/item"><img src="/resources/images/img1.jpg" alt="sample1"/></a>
                    <div class="itemArea">
                        <p class="itemName"><a href="/main/item">Sample Item</a></p>
                        <p class="itemPrice"><a href="/main/item">19,000 Won</a></p>
                    </div>
                </div>
            </div>
        </section>
        <c:import url="/footer" />
        <script type="text/javascript" src="/resources/js/main.js"></script>
    </body>
</html>