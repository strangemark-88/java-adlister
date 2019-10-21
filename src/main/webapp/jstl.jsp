<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: ms07
  Date: 2019-10-21
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>

<%
    List<String> favFoods = Arrays.asList("Pizza", "pho", "pie");
    request.setAttribute("favFoods", favFoods);
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>jstl example</title>
</head>
<body>

    <h1>jstl example</h1>

    <c:if test="${2 > 3}">
        <h2>will not show</h2>
    </c:if>

    <c:if test="${2 < 3}">
        <h2>will show</h2>
    </c:if>

    <ol>
        <c:forEach var="favFood" items="${favFoods}">

            <li>${favFood}</li>

        </c:forEach>
    </ol>

</body>
</html>
