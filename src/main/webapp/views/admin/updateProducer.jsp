<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 07.07.2017
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update producer</title>
</head>
<body>
<form:form modelAttribute="updateProducer" method="post" action="/updateProducer">
    <label>id</label>
    <form:input path="id" value="${updateProducer.id}"></form:input><br>
    <label>name</label>
    <form:input path="name" value="${updateProducer.name}"></form:input><br>
    <label>description</label>
    <form:input path="description" value="${updateProducer.description}"></form:input><br>
    <label>numberOfProducts</label>
    <form:input path="numberOfProducts" value="${updateProducer.numberOfProducts}"></form:input><br>
    <label>path To image</label>
    <form:input path="pathToImage" value="${updateProducer.pathToImage}"></form:input><br>
    <br>
    <button>Update</button>
</form:form>
</body>
</html>
