<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 12.07.2017
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Profile</title>
</head>
<body>

<form:form modelAttribute="updateUser" method="post" action="/updateUser">
    <label>name</label>
    <form:input path="name" value="${updateUser.name}"></form:input><br>
    <label>email</label>
    <form:input path="email" value="${updateUser.email}"></form:input><br>
    <label>password</label>
    <span style="color: red">${passwordException}</span><br>
    <form:input type="password" path="password" value="" placeholder="Old Password"></form:input><br>
    <label>New password</label>
    <input type="password" path="newPassword" name="newPassword" placeholder="New Password"></input><br>

    <label>first name</label>
    <form:input path="firstName" value="${updateUser.firstName}"></form:input><br>
    <label>last name</label>
    <form:input path="lastName" value="${updateUser.lastName}"></form:input><br>
    <label>telephone</label>
    <form:input path="telephone" value="${updateUser.telephone}"></form:input><br>

    <button>Update</button>
</form:form>

</body>
</html>
