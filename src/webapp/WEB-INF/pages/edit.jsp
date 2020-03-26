<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:if test="${empty id}">
        <title>Add user</title>
    </c:if>
    <c:if test="${!empty id}">
        <title>Edit user</title>
    </c:if>
</head>
<body>
    <c:if test="${empty id}">
        <c:url value="/add" var="action" />
        <h1>Add user:</h1>
    </c:if>
    <c:if test="${!empty id}">
        <c:url value="/edit" var="action" />
        <h1>Edit user:</h1>
    </c:if>
<form action="${action}" method="POST">
    <c:if test="${!empty id}">
        <input type="hidden" name="id" value="${id}">
    </c:if>
    <label for="firstName">First name:</label>
    <input type="text" name="firstName" id="firstName" value=${user.firstName}>
    <label for="lastName">Last name:</label>
    <input type="text" name="lastName" id="lastName" value=${user.lastName}>
    <label for="email">Email:</label>
    <input type="text" name="email" id="email" value=${user.email}>
    <c:if test="${empty id}">
        <input type="submit" value="add">
    </c:if>
    <c:if test="${!empty id}">
        <input type="submit" value="edit">
    </c:if>
</form>
</body>
</html>
