<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Login and Password</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/createuser" method="post">
    <p>
        Login: <input name="login" >
    </p>
    <p>
        Password: <input   name="password ">
    </p>
    <p>
        <input type="submit">
    </p>
    <p>
    <form action="${pageContext.request.contextPath}/createuser" method="post">
        <button type="submit">Create user</button>
    </form>
    </p>

</form>


</body>
</html>
