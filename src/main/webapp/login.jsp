<%--
  Created by IntelliJ IDEA.
  User: ms07
  Date: 2019-10-21
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>

<%
    if ("post".equalsIgnoreCase(request.getMethod())) {

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username.equalsIgnoreCase("admin") && password.equals("password")) {
        response.sendRedirect("/profile.jsp");
    }
}%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Login</title>
    <%@ include file="partials/head.jsp" %>
</head>
<body>

    <h1>Login</h1>

    <%@ include file="partials/navbar.jsp" %>

    <form method="post" action="/login.jsp">

        <label for="username">Username:</label>
        <input name="username" id="username" type="text">

        <label for="password">Password:</label>
        <input name="password" id="password" type="password">

        <button type="submit">Submit</button>
    </form>

<%--<c:if test="${param.username.equalsIgnoreCase('admin') and param.password.equals('password')}">--%>
<%--    <c:redirect url = "profile.jsp"/>--%>
<%--</c:if>--%>

</body>
</html>
