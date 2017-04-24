<%--
  Author: Shuai Zheng
  Date: 4/23/17
  Time: 12:27 PM
--%>
<%@ page language="java" contentType="text/html; charset = gb2312" pageEncoding="gb2312" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--<!-- Latest compiled and minified CSS -->--%>
<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"--%>
<%--integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">--%>

<%--<!-- Optional theme -->--%>
<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"--%>
<%--integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">--%>

<%--<!-- Latest compiled and minified JavaScript -->--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"--%>
<%--integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"--%>
<%--crossorigin="anonymous"></script>--%>

<link href="${pageContext.request.contextPath}/static/css/main.css"
      rel="stylesheet" type="text/css"/>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/static/script/jquery.js"></script>

<style>
    /*.label {*/
    /*color: #000;*/
    /*}*/
    /*table {*/
    /*width: 400px;*/
    /*margin-left: auto;*/
    /*margin-right: auto;*/
    /*}*/

    /*th {*/
    /*width: 200px;*/
    /*}*/

    /*div#table {*/
    /*width: 500px;*/
    /*}*/
    #signup {
        width: 600px;

        padding-top: 10%;
        text-align: center;
        text-shadow: 0px 4px 3px rgba(0, 0, 0, 0.4),
        0px 8px 13px rgba(0, 0, 0, 0.1),
        0px 18px 23px rgba(0, 0, 0, 0.1);
    }

    .btn-primary:hover, .btn-primary:focus, .btn-primary.focus, .btn-primary:active, .btn-primary.active, .open > .dropdown-toggle.btn-primary {
        color: #fff;
        background-color: #7cd552;
        border-color: #7cd552;
    }

    #logincontainer {
        width: 400px;
        text-align: center;
        margin: auto;

    }

    .error {
        color: red;
    }

</style>

<script type="text/javascript">
    function onLoad() {

        $("#password").keyup(checkPasswordsMatch);
        $("#confirmpass").keyup(checkPasswordsMatch);

        $("#details").submit(canSubmit);
    }

    function canSubmit() {
        var password = $("#password").val();
        var confirmpass = $("#confirmpass").val();

        if (password != confirmpass) {
            <%--alert("<fmt:message key='UnmatchedPasswords.user.password' />")--%>
            alert("Passwords do not match.");

            return false;
        }
        else {
            return true;
        }
    }

    function checkPasswordsMatch() {
        var password = $("#password").val();
        var confirmpass = $("#confirmpass").val();

        if (password.length > 3 || confirmpass.length > 3) {

            if (password == confirmpass) {
                <%--$("#matchpass").text("<fmt:message key='MatchedPasswords.user.password' />");--%>
                $("#matchpass").text("Passwords match.");

                $("#matchpass").addClass("valid");
                $("#matchpass").removeClass("error");
            } else {
                <%--$("#matchpass").text("<fmt:message key='UnmatchedPasswords.user.password' />");--%>
                $("#matchpass").text("Passwords do not match.");
                $("#matchpass").addClass("error");
                $("#matchpass").removeClass("valid");
            }
        }
    }

    $(document).ready(onLoad);
</script>


<!-- ===================================
LOGIN SECTION
==================================== -->
<section id="login" class="clean-section-wrapper background-one">
    <div class="container" id="signup">
        <div class="row">

            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                <h1><span class="clean-color-contras">SIGN UP</span></h1>
                <div class="clean-line"></div>
                <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Lorem ipsum dolor sit amet,
                    consectetur adipisicing elit. Officia voluptas voluptatem est nobis quibusdam, laboriosam ipsam
                    porro nesciunt quae officiis rem deserunt, nisi magni unde ipsa labore! Maiores, necessitatibus,
                    facilis!</p>
            </div>
            <%--password and login--%>

            <div class="container" id="logincontainer">
                <sf:form id="details" method="post"
                         action="${pageContext.request.contextPath}/createaccount"
                         commandName="user">

                    <table class="table">
                        <tr>
                            <td>Username:</td>
                            <td><sf:input class="control" path="username" name="username"
                                          type="text"/><br/>
                                <div class="error">
                                    <sf:errors path="username"></sf:errors>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><sf:input class="control" path="email" name="email"
                                          type="text"/>
                                <div class="error">
                                    <sf:errors path="email"></sf:errors>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><sf:input id="password" class="control" path="password"
                                          name="password" type="password"/>
                                <div class="error">
                                    <sf:errors path="password"></sf:errors>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Confirm Password:</td>
                            <td><input id="confirmpass" class="control" name="confirmpass"
                                       type="password"/>
                                <div id="matchpass"></div>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input class="btn btn-block btn-primary btn-default"
                                       value="Create account"
                                       type="submit"/>
                            </td>
                        </tr>
                    </table>

                </sf:form>

            </div>
        </div>
    </div>
</section>


