<%--
  Author: Shuai Zheng
  Date: 4/22/17
  Time: 3:21 PM
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
                <h1><span class="clean-color-contras">LOGIN IN</span></h1>
                <div class="clean-line"></div>
                <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Lorem ipsum dolor sit amet,
                    consectetur adipisicing elit. Officia voluptas voluptatem est nobis quibusdam, laboriosam ipsam
                    porro nesciunt quae officiis rem deserunt, nisi magni unde ipsa labore! Maiores, necessitatibus,
                    facilis!</p>
            </div>
            <%--password and login--%>

            <div id="mainWrapper">
                <div class="login-container">
                    <div class="login-card">
                        <div class="login-form">
                            <c:url var="loginUrl" value="/login"/>
                            <form action="${loginUrl}" method="post" class="form-horizontal">
                                <c:if test="${param.error != null}">
                                    <div class="input-group input-sm">
                                        <p>Invalid username and password.</p>
                                    </div>
                                </c:if>
                                <c:if test="${param.logout != null}">
                                    <div class="input-group input-sm">
                                        <p>You have been logged out successfully.</p>
                                    </div>
                                </c:if>
                                <div class="input-group input-sm">
                                    <label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
                                    <input type="text" class="form-control" id="username" name="ssoId"
                                           placeholder="Enter Username"
                                           required>
                                </div>
                                <div class="input-group input-sm">
                                    <label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label>
                                    <input type="password" class="form-control" id="password" name="password"
                                           placeholder="Enter Password" required>
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                <div class="input-group input-sm">
                                    <%--<div class="form-actions">--%>
                                    <input type="submit"
                                           class="btn btn-block btn-primary btn-default" value="Log in">
                                    <%--</div>--%>
                                </div>
                            </form>


                            <div class="input-group input-sm">
                                <form action="${pageContext.request.contextPath}/newaccount">
                                    <input type="submit" class="btn btn-block btn-primary btn-default" value="Sign Up"/>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</section>










