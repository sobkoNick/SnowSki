<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 07.07.2017
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update category</title>
</head>
<body>
<form:form modelAttribute="updateCategory" method="post" action="/updateCategory">
    <label>id</label>
    <form:input path="id" value="${updateCategory.id}"></form:input><br>
    <label>name</label>
    <form:input path="name" value="${updateCategory.name}"></form:input><br>
    <label>description</label>
    <form:input path="description" value="${updateCategory.description}"></form:input><br>
    <label>availability</label>
    <form:input path="availability" value="${updateCategory.availability}"></form:input><br>
    <label>numberOfProducts</label>
    <form:input path="numberOfProducts" value="${updateCategory.numberOfProducts}"></form:input><br>
    <label>numberInHierarchy</label>
    <form:input path="numberInHierarchy" value="${updateCategory.numberInHierarchy}"></form:input>
    <label>path To image</label>
    <form:input path="pathToImage" value="${updateCategory.pathToImage}"></form:input><br>
    <%--<form:select path="products" items="${updateOrder.products}" itemLabel="name" itemValue="id"/>--%>
    <br>
    <button>Update</button>
</form:form>
</body>
</html>
