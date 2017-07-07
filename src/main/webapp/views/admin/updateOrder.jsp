<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 29.05.2017
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
    <form:form modelAttribute="updateOrder" method="post" action="/updateOrderFully">
        <label>id</label>
        <form:input path="id" value="${updateOrder.id}"></form:input><br>
        <label>name</label>
        <form:input path="name" value="${updateOrder.name}"></form:input><br>
        <label>orderStatus</label>
        <form:input path="orderStatus" value="${updateOrder.orderStatus}"></form:input><br>
        <label>payMethod</label>
        <form:input path="payMethod" value="${updateOrder.payMethod}"></form:input><br>
        <label>deliveryMethod</label>
        <form:input path="deliveryMethod" value="${updateOrder.deliveryMethod}"></form:input><br>
        <label>comment</label>
        <form:input path="comment" value="${updateOrder.comment}"></form:input>
        <%--<form:select path="products" items="${updateOrder.products}" itemLabel="name" itemValue="id"/>--%>
        <br>
        <c:forEach items="${updateOrder.products}" var="product">
            ${product.name} <a href="/updateOrder/${updateOrder.id}/${product.id}">delete product</a><br>
        </c:forEach>
        <button>Update</button>
    </form:form>
</body>
</html>
