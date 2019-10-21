<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Contact" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: ms07
  Date: 2019-10-21
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>

<%
    List<Contact> contacts = Arrays.asList(
            new Contact("bob smith", "2105554444"),
            new Contact("bryan smith", "2105553333"),
            new Contact("nancy smith", "2105552222")
    );
    request.setAttribute("contacts", contacts);

    request.setAttribute("loggedInUser", new User("bob smith"));
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        div{
            background: blue;
            color: white;
            margin: 1em;
            padding: 1em;
            border-radius: .2em;
        }
        a{
            color: white;
        }
    </style>
</head>
<body>

    <h1>contacts</h1>

    <c:forEach var="contact" items="${contacts}">

        <div>
            <h3>${contact.name}</h3>
            <h3>Phone Number: ${contact.num}</h3>
            <c:if test="${contact.name.equalsIgnoreCase(loggedInUser.name)}">
                <a href="">Edit Contact</a>
            </c:if>
        </div>


    </c:forEach>

</body>
</html>
