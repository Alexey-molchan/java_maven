<%@ page import="entity.User" %><%--
  Created by IntelliJ IDEA.
  User: Леха
  Date: 10.11.2020
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <title>Данные формы</title>
</head>

<body>

<form action="${pageContext.request.contextPath}/createuser" method="post" enctype="multipart/form-data">
    <p>
        Login: <input name="login" >
    </p>
    <p>
        Password: <input   name="password ">
    </p>
    <p>
        First name: <input  name="first_name">
    </p>
    <p>
        Last name: <input name="last_name">
    </p>
    <p>
        Avatar: <input type="file" name="photo" />
    </p>
    <p>
        Is User Admin: <input type="checkbox" name="isAdmin">
    </p>
    <p>
        <input type="submit">
    </p>
</form>

</body>

</html>
