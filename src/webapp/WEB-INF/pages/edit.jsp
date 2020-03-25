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
        User select: firstname "<c:out value="${user.firstName}" />", lastname "
        <c:out value="${user.lastName}" />", email "<c:out value="${user.email}" />"</p>
    </c:if>
<form action="${action}" method="POST">
    <c:if test="${!empty id}">
        <input type="hidden" name="id" value="${id}">
    </c:if>
    <label for="firstName">first name</label>
    <input type="text" name="firstName" id="firstName">
    <label for="lastName">last name</label>
    <input type="text" name="lastName" id="lastName">
    <label for="email">email</label>
    <input type="text" name="email" id="email">
    <c:if test="${empty id}">
        <input type="submit" value="add">
    </c:if>
    <c:if test="${!empty id}">
        <input type="submit" value="edit">
    </c:if>
</form>
</body>
</html>
