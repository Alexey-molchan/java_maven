<%@ page import="entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.UserDao" %>
<%@ page import="dao.UserDaoFromDBImpl" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Find user</title>
</head>
<body>
<%
    User user = (User) request.getAttribute("user");
%>

<form action="${pageContext.request.contextPath}/finduser" method="get">
    <p>
        <input type="hidden" name="id" value="<%=user.getId()%>">
    </p>
    <p>
        User's last name: <input name="last_name" value="<%=user.getLastName()%>" >
    </p>
    <p>
        <input type="submit">
    </p>
</form>
</body>
</html>
