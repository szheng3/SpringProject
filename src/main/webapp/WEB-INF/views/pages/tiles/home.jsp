<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Author: Shuai Zheng
  Date: 4/6/17
  Time: 3:27 PM
--%>
<jsp:include page="/WEB-INF/views/tiles/template/defaultMenu.jsp"/>


<body>
Hello World

session: <%= session.getAttribute("name")%>
request: <%=request.getAttribute("name")%>
request: ${address}
<%--<c:out value="${name}"></c:out>--%>

<%--<c:forEach var="row" items="${offers}">--%>
<%--id:${row.name}<br/>--%>
<%--</c:forEach>--%>
</body>
</html>
