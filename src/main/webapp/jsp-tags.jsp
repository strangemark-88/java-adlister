<%--
  Created by IntelliJ IDEA.
  User: ms07
  Date: 2019-10-21
  Time: 09:22
  To change this template use File | Settings | File Templates.
--%>

<%-- JSP Directive --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>JSP Tags</title>
</head>
<body>
<h1>JSP tags</h1>
<%@include file="partial/form.html"%>

<h2>Your Name is <%= request.getParameter("name") %></h2>

<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"name" parameter: <%= request.getParameter("name") %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>

<%@include file="partial/footer.html"%>

</body>
</html>
