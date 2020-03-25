<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<h1 align="center">Users:</h1>
<table border="1" cellspacing="0" align="center">
    <tr align="center">
        <th>Id</th>
        <th>Name</th>
        <th>Last name</th>
        <th>Email</th>
        <th colspan="2">Action</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr align="center">
            <td>${user.id}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.email}</td>
            <td width="40"><a href="/edit/${user.id}">edit</a></td>
            <td width="40"><a href="/delete/${user.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
<p align="center"><a href="/add">Add user</a></p>
</body>
</html>
