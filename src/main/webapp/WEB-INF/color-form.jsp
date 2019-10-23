<%--
  Created by IntelliJ IDEA.
  User: ms07
  Date: 2019-10-23
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Color Form</title>
</head>
<body>

    <h1>Color Profile Form</h1>

    <form action="color-profile" method="post">
        <fieldset>
            <legend>Choose Color Preferences for profile.</legend>

<%--                <c:when test="${sessionScope['font-color'] != null}">--%>
<%--                    <input type="text">--%>
<%--                </c:when>--%>

            <label for="font-color">Font Color</label>
            <input type="color" name="font-color" id="font-color" value="${sessionScope['font-color']}">
            <br>
            <br>
            <label for="background-color">Background Color</label>
            <input type="color" name="background-color" id="background-color" value="${sessionScope['background-color']}">
            <br>
            <br>
            <button type="submit">Submit</button>
        </fieldset>
    </form>
    <form action="color-profile" method="post">
        <input type="hidden" name="forget">
        <button>Forget Preferences</button>
    </form>

</body>
</html>
