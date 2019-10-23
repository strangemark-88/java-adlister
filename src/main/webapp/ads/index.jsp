<%--
  Created by IntelliJ IDEA.
  User: ms07
  Date: 2019-10-22
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Ads List" />
    </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp" />
<div class="container">
    <h1>Here are all the Ads!</h1>
<br>

    <c:forEach var="ad" items="${ads}">
        <h3>${ad.title}</h3>
        <p>${ad.description}</p>
    </c:forEach>

</body>
</html>
