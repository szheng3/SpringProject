<%--
  Author: Shuai Zheng
  Date: 4/22/17
  Time: 3:21 PM
--%>
<%@ page language="java" contentType="text/html; charset = gb2312" pageEncoding="gb2312" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

    /*css select html*/

    .btn-primary:hover, .btn-primary:focus, .btn-primary.focus, .btn-primary:active, .btn-primary.active, .open > .dropdown-toggle.btn-primary {
        color: #fff;
        background-color: #7cd552;
        border-color: #7cd552;
    }

    /*#choosefile {*/
    /*!*padding: 5px 10px;*!*/
    /*background: #00ad2d;*/
    /*!*border: 1px solid #00ad2d;*!*/
    /*!*position: relative;*!*/
    /*color: #fff;*/
    /*!*border-radius: 2px;*!*/
    /*!*text-align: center;*!*/
    /*!*float: left;*!*/
    /*cursor: pointer*/
    /*}*/

    /*.container {*/
    /*text-align: center;*/
    /*}*/

    /*!*.content {*!*/
    /*!*padding-top: 25%;*!*/
    /*!*text-align: center;*!*/
    /*!*text-shadow: 0px 4px 3px rgba(0, 0, 0, 0.4),*!*/
    /*!*0px 8px 13px rgba(0, 0, 0, 0.1),*!*/
    /*!*0px 18px 23px rgba(0, 0, 0, 0.1);*!*/
    /*!*}*!*/

    /*.hide_file {*/
    /*!*position: absolute;*!*/
    /*!*z-index: 1000;*!*/
    /*opacity: 0;*/
    /*cursor: pointer;*/
    /*!*right: 0;*!*/
    /*!*top: 0;*!*/
    /*!*height: 100%;*!*/
    /*font-size: 24px;*/
    /*!*width: 100%;*!*/
    /*}*/
</style>
<!-- ===================================
LOGIN SECTION
==================================== -->
<section id="login" class="clean-section-wrapper background-one">
    <div class="container" id="logincontainer">
        <div class="row">

            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                <h1><span class="clean-color-contras">DEMO</span></h1>
                <div class="clean-line"></div>
                <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Lorem ipsum dolor sit amet,
                    consectetur adipisicing elit. Officia voluptas voluptatem est nobis quibusdam, laboriosam ipsam
                    porro nesciunt quae officiis rem deserunt, nisi magni unde ipsa labore! Maiores, necessitatibus,
                    facilis!</p>
            </div>


            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="content">
                            <h2>Machine Learning</h2>
                            <hr>
                            <div>
                                <%--<form action="upload" method="post" enctype="multipart/form-data" class="form-inline">--%>
                                <form action="${pageContext.request.contextPath}/singleUpload" method="post"
                                      enctype="multipart/form-data" class="form-inline">
                                    <div class="form-group" id="choosefile">
                                        <%--Choose File:--%>
                                        <input type="file" name="file" class="hide_file"/>
                                    </div>
                                    <div class="form-group">
                                        <%--&lt;%&ndash;%>
                                        <%--String username = (String) request.getAttribute("username");--%>
                                        <%--System.out.println("username is: " + username);--%>
                                        <%--%>--%>
                                        <%--<input type="hidden" name="name" value="${username}"/>--%>
                                        <input class="btn btn-primary" type="submit" value="upload"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--<div class="form-container">--%>
            <%--<h1>Spring 4 MVC File Upload Example </h1>--%>
            <%--<form:form method="POST" enctype="multipart/form-data"--%>
            <%--class="form-horizontal">--%>

            <%--<div class="row">--%>
            <%--<div class="form-group col-md-12">--%>
            <%--<label class="col-md-3 control-lable" for="file">Upload a file</label>--%>
            <%--<div class="col-md-7">--%>
            <%--<input type="file" path="file" id="file" class="form-control input-sm"/>--%>
            <%--&lt;%&ndash;<div class="has-error">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<form:errors path="file" class="help-inline"/>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="row">--%>
            <%--<div class="form-actions floatRight">--%>
            <%--<input type="submit" value="Upload" class="btn btn-primary btn-sm">--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</form:form>--%>

            <%--</div>--%>


        </div>
    </div>
</section>










