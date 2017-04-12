<%--
  Author: Shuai Zheng
  Date: 4/10/17
  Time: 12:04 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .error1 {
            font-size: small;
            color: red;
            margin-left: 10px;
        }
    </style>
</head>
<body>

<form:form method="post" action="${pageContext.request.contextPath}/doCreate" commandName="offer">
    <tr>
        <td>name:</td>
        <td><form:input name="name" type="text" path="name"></form:input><form:errors path="name"
                                                                                      cssClass="error1"></form:errors></td>
    </tr>
    <tr>
        <td>email:</td>
        <td><form:input name="email" type="text" path="email"></form:input><form:errors path="email"
                                                                                        cssClass="error1"></form:errors></td>
    </tr>
    <tr>
        <td>text:</td>
        <td><form:textarea name="text" rows="10" cols="10" path="text"></form:textarea><form:errors cssClass="error1"
                                                                                                    path="text"></form:errors></td>
    </tr>
    <tr>
        <td><input value="create" type="submit"></input></td>
    </tr>


</form:form>

</body>
</html>
