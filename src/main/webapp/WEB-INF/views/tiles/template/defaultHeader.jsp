<%--<div>--%>
<%--<h1>Tiles Demo</h1>--%>
<%--</div>--%>
<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>--%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<header>
    <!-- Navigation Menu start-->
    <nav class="navbar clean-main-menu" role="navigation">
        <div class="container">

            <!-- Navbar Toggle -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <!-- Logo -->
                <a class="navbar-brand" href="index.html"><img class="logo" id="logo"
                                                               src="<c:url value='/static/images/logo.png' />"
                                                               alt="Page"></a>

            </div>
            <!-- Navbar Toggle End -->

            <!-- navbar-collapse start-->
            <div id="nav-menu" class="navbar-collapse collapse" role="navigation">
                <ul class="nav navbar-nav clean-menu-wrapper">
                    <li>
                        <a href="${pageContext.request.contextPath}/?welcome#clean-slider">Home</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/?welcome#about">Overview</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/?welcome#featured-works">Product</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/?welcome#offer">Partner</a>
                    </li>
                    <%--<li>--%>
                    <%--<a href="#pricing">Pricing</a>--%>
                    <%--</li>--%>
                    <li>
                        <a href="${pageContext.request.contextPath}/?welcome#testimonial">People</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/login">Demo</a>
                    </li>
                </ul>
            </div>
            <!-- navbar-collapse end-->

        </div>
    </nav>
    <!-- Navigation Menu end-->
</header>
