<%@ page import="com.websystique.springmvc.DAO.History" %>
<%@ page import="org.apache.commons.io.IOUtils" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.util.List" %><%--
  Author: Shuai Zheng
  Date: 4/24/17
  Time: 8:40 PM
--%>
<%@ page language="java" contentType="text/html; charset = gb2312" pageEncoding="gb2312" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<style>
    /*css select id*/
    #logincontainer {
        padding-top: 10%;
        text-align: center;
        text-shadow: 0px 4px 3px rgba(0, 0, 0, 0.4),
        0px 8px 13px rgba(0, 0, 0, 0.1),
        0px 18px 23px rgba(0, 0, 0, 0.1);
    }

    /*css select class*/
    .input-group {

        width: 400px;
        margin: auto;
    }

    /*.login-form {*/
    /*width: 400px;*/
    /*margin: auto;*/

    /*}*/

    /*css select html*/

    .btn-primary:hover, .btn-primary:focus, .btn-primary.focus, .btn-primary:active, .btn-primary.active, .open > .dropdown-toggle.btn-primary {
        color: #fff;
        background-color: #7cd552;
        border-color: #7cd552;
    }

    div p {
        padding: 10px;
    }

    /*css select p inside div class input-group */
    div.input-group p {
        color: red;
    }

</style>

<!-- ===================================
PRELOADER
==================================== -->
<div class="preloader">
    <div class="status"></div>
</div>

<!-- ===================================
LOGIN SECTION
==================================== -->
<section id="login" class="clean-section-wrapper background-one">
    <div class="container" id="logincontainer">
        <div class="row">

            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                <h1><span class="clean-color-contras">HISTORY</span></h1>
                <div class="clean-line"></div>
                <%
                    List<History> historys = (List<History>) request.getAttribute("historys");


                    for (History history : historys
                            ) {
                        out.write(" <div ><p class=\"col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1\">");
                        out.write(IOUtils.toString(history.getResult(), StandardCharsets.UTF_8.name()));
                        out.write(history.getDate().toString() + "</p></div>");


                    }

                %>


            </div>
        </div>
    </div>
</section>
