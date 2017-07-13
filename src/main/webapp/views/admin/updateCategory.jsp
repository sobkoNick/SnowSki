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
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" align="center">
            <label style="text-align: center;
			font-size: 20px; color: aqua;
			padding-top: 20px;">Update Category</label>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" align="center">
            <div style="width: 50%;">
                <form:form modelAttribute="updateCategory" method="post" action="/updateCategory">
                    <div class="form-group">
                        <form:input type="hidden" path="id" value="${updateCategory.id}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>name</label>
                        <form:input path="name" class="form-control" value="${updateCategory.name}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>description</label>
                        <form:input path="description" class="form-control" value="${updateCategory.description}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>availability</label>
                        <form:input path="availability" class="form-control" value="${updateCategory.availability}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>numberOfProducts</label>
                        <form:input type="number" min="1" max="100" path="numberOfProducts" class="form-control" value="${updateCategory.numberOfProducts}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>numberInHierarchy</label>
                        <form:input type="number" min="1" max="100" path="numberInHierarchy" class="form-control" value="${updateCategory.numberInHierarchy}"></form:input>
                    </div>
                    <div class="form-group">
                        <label>path To image (Please change to valid url)</label>
                        <form:input path="pathToImage" class="form-control" value="${updateCategory.pathToImage}"></form:input><br>
                    </div>
                    <%--<form:select path="products" items="${updateOrder.products}" itemLabel="name" itemValue="id"/>--%>
                    <br>
                    <button class="btn btn-success">Update</button>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
