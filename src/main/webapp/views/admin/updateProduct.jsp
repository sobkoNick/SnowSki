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
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" align="center">
            <label style="text-align: center;
			font-size: 20px; color: aqua;
			padding-top: 20px;">Update Product</label>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" align="center">
            <div style="width: 50%;">
                <form:form modelAttribute="updateProduct" method="post" action="/updateProducerFully">
                    <div class="form-group">
                        <form:input type="hidden" path="id" value="${updateProduct.id}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>name</label>
                        <form:input path="name" class="form-control" value="${updateProduct.name}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>description</label>
                        <form:input path="description" class="form-control"
                                    value="${updateProduct.description}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>model</label>
                        <form:input path="model" class="form-control" value="${updateProduct.model}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>price</label>
                        <form:input path="price" class="form-control" value="${updateProduct.price}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>avaible</label>
                        <form:input path="avaible" class="form-control"
                                    value="${updateProduct.avaible}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>Count</label>
                        <form:input path="count" class="form-control" value="${updateProduct.count}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>options</label>
                        <form:input path="options" class="form-control"
                                    value="${updateProduct.options}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>weight</label>
                        <form:input path="weight" class="form-control" value="${updateProduct.weight}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>path To image</label>
                        <form:input path="pathToImage" class="form-control"
                                    value="${updateProduct.pathToImage}"></form:input><br>
                    </div>
                    <br>
                    <button class="btn btn-success">Update</button>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
