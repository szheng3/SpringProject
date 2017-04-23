<%@ page language="java" contentType="text/html; charset = gb2312" pageEncoding="gb2312" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>

<%--<head>--%>
<%--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">--%>
<%--<title><tiles:getAsString name="title" /></title>--%>
<%--<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>--%>
<%--<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>--%>
<%--</head>--%>
<%--<style>--%>
<%--#footer {--%>
<%--position: absolute;--%>
<%--right: 0;--%>
<%--bottom: 0;--%>
<%--left: 0;--%>
<%--/*padding: 0rem;*/--%>
<%--/*margin-top: 1000px;*/--%>
<%--/*background-color: #efefef;*/--%>
<%--text-align: center;--%>
<%--}--%>
<%--</style>--%>

<head>
    <%--<meta charset="UTF-8">--%>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- PAGE TITLE -->
    <title>CLEAN - SLIDER RESPONSIVE HTML TEMPLATE</title>

    <!-- ===================================
        FAVICON ICON
    ==================================== -->
    <link rel="shortcut icon" href="<c:url value='/static/images/favicon.ico' />">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- ===================================
        NORMALIZE CSS
    ==================================== -->
    <link rel="stylesheet" href="<c:url value='/static/css/normalize.css' />">

    <!-- ===================================
        BOOTSTRAP
    ==================================== -->
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css' />">

    <!-- ===================================
        GOOGLE FONTS
    ==================================== -->
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:600,700,400,300' rel='stylesheet' type='text/css'>

    <!-- ===================================
        FONTS ICON
    ==================================== -->
    <%--===================================--%>
    <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>

    <!-- ===================================
        PLUGIN
    ==================================== -->


    <link href="<c:url value='/static/css/magnific-popup.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/slider-pro.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/owl.carousel.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/owl.theme.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/owl.transitions.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/animate.css' />" rel="stylesheet"></link>


    <!-- ===================================
        MAIN STYLESHEET
    ==================================== -->


    <%--===============--%>
    <link href="<c:url value='/static/css/main.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/responsive.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/static/css/color-green.css' />" rel="stylesheet" id="colors"></link>


    <!--[if lt IE 9]>

    <script src="http://s3.amazonaws.com/nwapi/nwmatcher/nwmatcher-1.2.5-min.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/files/css3-mediaqueries.js"></script>
    <script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script>


    <script src="<c:url value='/static/js/html5shiv.min.js' />"></script>
    <script src="<c:url value='/static/js/respond.min.js' />"></script>
    <script src="<c:url value='/static/js/selectivizr-min.js' />"></script>


    <![endif]-->
</head>


<body>


<header id="header">
    <tiles:insertAttribute name="header"/>
</header>

<section id="sidemenu">
    <tiles:insertAttribute name="menu"/>
</section>

<section id="site-content">
    <tiles:insertAttribute name="body"/>
</section>

<footer id="footer" class="background-one">
    <tiles:insertAttribute name="footer"/>
</footer>
</body>
</html>