<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 12.07.2017
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Product</title>
</head>
<body>
<form:form modelAttribute="updateProduct" method="post" action="/updateProducerFully">
    <label>id</label>
    <form:input path="id" value="${updateProduct.id}"></form:input><br>
    <label>name</label>
    <form:input path="name" value="${updateProduct.name}"></form:input><br>
    <%--<form:select path="producer" items="producers" itemValue="">--%>
    <%--</form:select>--%>
    <%--<form:select path="categoryOfProduct" items="categories" itemValue="">--%>
    <%--</form:select>--%>
    <label>description</label>
    <form:input path="description" value="${updateProduct.description}"></form:input><br>
    <label>model</label>
    <form:input path="model" value="${updateProduct.model}"></form:input><br>
    <label>price</label>
    <form:input path="price" value="${updateProduct.price}"></form:input><br>
    <label>avaible</label>
    <form:input path="avaible" value="${updateProduct.avaible}"></form:input><br>
    <label>Count</label>
    <form:input path="count" value="${updateProduct.count}"></form:input><br>
    <label>options</label>
    <form:input path="options" value="${updateProduct.options}"></form:input><br>
    <label>weight</label>
    <form:input path="weight" value="${updateProduct.weight}"></form:input><br>
    <label>path To image</label>
    <form:input path="pathToImage" value="${updateProduct.pathToImage}"></form:input><br>
    <br>
    <button>Update</button>
</form:form>
</body>
</html>
