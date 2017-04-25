<%@ page import="com.websystique.springmvc.DAO.History" %>
<%@ page import="org.apache.commons.io.IOUtils" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.util.List" %><%--
  Author: Shuai Zheng
  Date: 4/24/17
  Time: 8:40 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h2>Spring MVC and List Example</h2>

<%--<c:if test="${not empty lists}">--%>

<ul>
    <%
        List<History> historys = (List<History>) request.getAttribute("historys");


        for (History history : historys
                ) {
            out.write("<h1>" + history.getUsername() + "</h1>");
            out.write("<h1>" + IOUtils.toString(history.getResult(), StandardCharsets.UTF_8.name()) + "</h1>");
            out.write("<h1>" + history.getDate().toString() + "</h1>");


        }

    %>

</ul>

<%--</c:if>--%>
</body>
</html>