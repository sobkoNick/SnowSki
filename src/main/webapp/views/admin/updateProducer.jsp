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
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" align="center">
            <label style="text-align: center;
			font-size: 20px; color: aqua;
			padding-top: 20px;">Update Producer</label>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" align="center">
            <div style="width: 50%;">
                <form:form modelAttribute="updateProducer" method="post" action="/updateProducer">
                    <%--<label>id</label>--%>
                    <div class="form-group">
                        <form:input type="hidden" path="id" value="${updateProducer.id}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>name</label>
                        <form:input path="name" class="form-control" value="${updateProducer.name}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>description</label>
                        <form:input path="description" class="form-control"
                                    value="${updateProducer.description}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>numberOfProducts</label>
                        <form:input path="numberOfProducts" class="form-control"
                                    value="${updateProducer.numberOfProducts}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>path To image</label>
                        <form:input path="pathToImage" class="form-control"
                                    value="${updateProducer.pathToImage}"></form:input><br>
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
