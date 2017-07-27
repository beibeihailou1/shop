<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 蒋松冬
  Date: 2017/7/26
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>Material Design Lite</title>

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="images/android-desktop.png">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#3372DF">

    <link rel="shortcut icon" href="images/favicon.png">

    <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
    <!--
    <link rel="canonical" href="http://www.example.com/">
    -->

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.cyan-light_blue.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/infostyle.css">
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/list.js"></script>
    <script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">
    <script src="${pageContext.request.contextPath}/js/distpicker.js"></script>
    <style>
        #view-source {
            position: fixed;
            display: block;
            right: 0;
            bottom: 0;
            margin-right: 40px;
            margin-bottom: 40px;
            z-index: 900;
        }

        .templatemo-blue-button {
            background-color: #39ADB4;
            border: none;
            color: white;
        }

        .no-border{border: 0px solid transparent !important;}

        .bs-example {
            position: relative;
            padding: 45px 15px 15px;
            margin: 0 -15px 15px;
            border-color: #e5e5e5 #eee #eee;
            border-style: solid;
            border-width: 1px 0;
            -webkit-box-shadow: inset 0 3px 6px rgba(0,0,0,.05);
            box-shadow: inset 0 3px 6px rgba(0,0,0,.05);
        }
    </style>
</head>
<body>

<div class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
    <header class="demo-header mdl-layout__header mdl-color--grey-100 mdl-color-text--grey-600">
        <div class="mdl-layout__header-row">
            <span class="mdl-layout-title">订单管理</span>
            <div class="mdl-layout-spacer"></div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                <%-- <label class="mdl-button mdl-js-button mdl-button--icon" for="search">
                     <i class="material-icons">search</i>
                 </label>
                 <div class="mdl-textfield__expandable-holder">
                     <input class="mdl-textfield__input" type="text" id="search">
                     <label class="mdl-textfield__label" for="search">Enter your query...</label>
                 </div>--%>
            </div>
            <%-- <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="hdrbtn">
                 <i class="material-icons">more_vert</i>
             </button>
             <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="hdrbtn">
                 <li class="mdl-menu__item">About</li>
                 <li class="mdl-menu__item">Contact</li>
                 <li class="mdl-menu__item">Legal information</li>
             </ul>--%>
        </div>
    </header>
    <div class="demo-drawer mdl-layout__drawer mdl-color--blue-grey-900 mdl-color-text--blue-grey-50">
        <header class="demo-drawer-header">
            <%-- <img src="images/user.jpg" class="demo-avatar">--%>
            <div class="demo-avatar-dropdown">
                <%-- <span>hello@example.com</span>--%>
                <div class="mdl-layout-spacer"></div>
                <%--<button id="accbtn" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
                    <i class="material-icons" role="presentation">arrow_drop_down</i>
                    <span class="visuallyhidden">Accounts</span>
                </button>
                <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="accbtn">
                    <li class="mdl-menu__item">hello@example.com</li>
                    <li class="mdl-menu__item">info@example.com</li>
                    <li class="mdl-menu__item"><i class="material-icons">add</i>Add another account...</li>
                </ul>--%>
            </div>
        </header>
        <nav class="demo-navigation mdl-navigation mdl-color--blue-grey-800">
            <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/main"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">home</i>主页</a>
            <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/information"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">inbox</i>个人信息</a>
            <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/info/list"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">forum</i>订单管理</a>
            <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/info/address"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">forum</i>地址管理</a>
        </nav>
    </div>
    <main class="mdl-layout__content mdl-color--grey-100">
            <div class="mdl-grid demo-content" id="parent">
                <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
                    <h3>未收到货</h3><%--未收到货--%>
                    <c:forEach items="${orderList}" var="order">
                        <c:if test="${!order.isreceive}">
                            <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" name="parent">
                            <div class="tab-content col-lg-10">
                                <table class="table " cellpadding="6" cellspacing="1" ><%--订单信息--%>
                                    <tbody>
                                    <tr>
                                        <td class="no-border col-lg-2" >
                                            订单号：<i  name="orderid">${order.orderid}</i>
                                        </td>
                                        <td class="no-border col-lg-4">
                                            订单日期:
                                            ${order.ordertime.year}年
                                            ${order.ordertime.month}月
                                            ${order.ordertime.day}日
                                        </td>
                                        <td  class="no-border col-lg-6">
                                            收货地址:
                                            ${order.address.province}
                                            ${order.address.city}
                                            ${order.address.county}
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            <c:forEach items="${order.goodsInfo}" var="good">
                                    <table class="table table-bordered" cellpadding="6" cellspacing="1" ><%--商品信息--%>
                                        <thead>
                                        商品号:${good.goodsid}
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="col-lg-2">
                                                ${good.goodsname}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.goodsname}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.price}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.num}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.category}
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                            </c:forEach>
                            </div>
                            <div class="mdl-card__actions mdl-card--border">
                                <button class="templatemo-blue-button" name="deleteList"><h5>删除订单</h5></button>
                            </div>
                        </div>
                        </c:if>
                    </c:forEach>
                </div>
                <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
                    <h3>未完成</h3><%--未完成--%>
                    <c:forEach items="${orderList}" var="order">
                        <c:if test="${!order.iscomplete}">
                            <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" name="parent">
                                <div class="tab-content col-lg-10">
                                    <table class="table " cellpadding="6" cellspacing="1" ><%--订单信息--%>
                                        <tbody>
                                        <tr>
                                            <td class="no-border col-lg-2" >
                                                订单号：<i  name="orderid">${order.orderid}</i>
                                            </td>
                                            <td class="no-border col-lg-4">
                                                订单日期:
                                                    ${order.ordertime.year}年
                                                    ${order.ordertime.month}月
                                                    ${order.ordertime.day}日
                                            </td>
                                            <td  class="no-border col-lg-6">
                                                收货地址:
                                                    ${order.address.province}
                                                    ${order.address.city}
                                                    ${order.address.county}
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <c:forEach items="${order.goodsInfo}" var="good">
                                    <table class="table table-bordered" cellpadding="6" cellspacing="1" ><%--商品信息--%>
                                        <thead>
                                        商品号:${good.goodsid}
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="col-lg-2">
                                                    ${good.goodsname}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.goodsname}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.price}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.num}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.category}
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    </c:forEach>
                                </div>
                                <div class="mdl-card__actions mdl-card--border">
                                    <button class="templatemo-blue-button" name="deleteList"><h5>删除订单</h5></button>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
                <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
                    <h3>已完成</h3><%--已完成--%>
                    <c:forEach items="${orderList}" var="order">
                        <c:if test="${order.iscomplete}">
                            <div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" name="parent">
                                <div class="tab-content col-lg-10">
                                    <table class="table " cellpadding="6" cellspacing="1" ><%--订单信息--%>
                                        <tbody>
                                        <tr>
                                            <td class="no-border col-lg-2" >
                                                订单号：<i name="orderid">${order.orderid}</i>
                                            </td>
                                            <td class="no-border col-lg-4">
                                                订单日期:
                                                    ${order.ordertime.year}年
                                                    ${order.ordertime.month}月
                                                    ${order.ordertime.day}日
                                            </td>
                                            <td  class="no-border col-lg-6">
                                                收货地址:
                                                    ${order.address.province}
                                                    ${order.address.city}
                                                    ${order.address.county}
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <c:forEach items="${order.goodsInfo}" var="good">
                                    <table class="table table-bordered" cellpadding="6" cellspacing="1" ><%--商品信息--%>
                                        <thead>
                                        商品号:${good.goodsid}
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="col-lg-2">
                                                    ${good.goodsname}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.goodsname}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.price}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.num}
                                            </td>
                                            <td class="col-lg-2">
                                                    ${good.category}
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    </c:forEach>
                                </div>
                                <div class="mdl-card__actions mdl-card--border">
                                    <button class="templatemo-blue-button" name="deleteList"><h5>删除订单</h5></button>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
    </main>
</div>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" style="position: fixed; left: -1000px; height: -1000px;">
    <defs>
        <mask id="piemask" maskContentUnits="objectBoundingBox">
            <circle cx=0.5 cy=0.5 r=0.49 fill="white" />
            <circle cx=0.5 cy=0.5 r=0.40 fill="black" />
        </mask>
        <g id="piechart">
            <circle cx=0.5 cy=0.5 r=0.5 />
            <path d="M 0.5 0.5 0.5 0 A 0.5 0.5 0 0 1 0.95 0.28 z" stroke="none" fill="rgba(255, 255, 255, 0.75)" />
        </g>
    </defs>
</svg>
<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 500 250" style="position: fixed; left: -1000px; height: -1000px;">
    <defs>
        <g id="chart">
            <g id="Gridlines">
                <line fill="#888888" stroke="#888888" stroke-miterlimit="10" x1="0" y1="27.3" x2="468.3" y2="27.3" />
                <line fill="#888888" stroke="#888888" stroke-miterlimit="10" x1="0" y1="66.7" x2="468.3" y2="66.7" />
                <line fill="#888888" stroke="#888888" stroke-miterlimit="10" x1="0" y1="105.3" x2="468.3" y2="105.3" />
                <line fill="#888888" stroke="#888888" stroke-miterlimit="10" x1="0" y1="144.7" x2="468.3" y2="144.7" />
                <line fill="#888888" stroke="#888888" stroke-miterlimit="10" x1="0" y1="184.3" x2="468.3" y2="184.3" />
            </g>
            <g id="Numbers">
                <text transform="matrix(1 0 0 1 485 29.3333)" fill="#888888" font-family="'Roboto'" font-size="9">500</text>
                <text transform="matrix(1 0 0 1 485 69)" fill="#888888" font-family="'Roboto'" font-size="9">400</text>
                <text transform="matrix(1 0 0 1 485 109.3333)" fill="#888888" font-family="'Roboto'" font-size="9">300</text>
                <text transform="matrix(1 0 0 1 485 149)" fill="#888888" font-family="'Roboto'" font-size="9">200</text>
                <text transform="matrix(1 0 0 1 485 188.3333)" fill="#888888" font-family="'Roboto'" font-size="9">100</text>
                <text transform="matrix(1 0 0 1 0 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">1</text>
                <text transform="matrix(1 0 0 1 78 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">2</text>
                <text transform="matrix(1 0 0 1 154.6667 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">3</text>
                <text transform="matrix(1 0 0 1 232.1667 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">4</text>
                <text transform="matrix(1 0 0 1 309 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">5</text>
                <text transform="matrix(1 0 0 1 386.6667 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">6</text>
                <text transform="matrix(1 0 0 1 464.3333 249.0003)" fill="#888888" font-family="'Roboto'" font-size="9">7</text>
            </g>
            <g id="Layer_5">
                <polygon opacity="0.36" stroke-miterlimit="10" points="0,223.3 48,138.5 154.7,169 211,88.5
              294.5,80.5 380,165.2 437,75.5 469.5,223.3 	"/>
            </g>
            <g id="Layer_4">
                <polygon stroke-miterlimit="10" points="469.3,222.7 1,222.7 48.7,166.7 155.7,188.3 212,132.7
              296.7,128 380.7,184.3 436.7,125 	"/>
            </g>
        </g>
    </defs>
</svg>
<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
</body>
</html>