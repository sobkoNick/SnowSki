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
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" align="center">
            <label style="text-align: center;
			font-size: 20px; color: rebeccapurple;
			padding-top: 20px;">Update Order</label>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" align="center">
            <div style="width: 50%;">
                <form:form modelAttribute="updateOrder" method="post" action="/updateOrderFully">
                    <div class="form-group">
                            <%--<label>id</label>--%>
                        <form:input type="hidden" class="form-control" path="id" value="${updateOrder.id}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <form:input path="name" class="form-control" value="${updateOrder.name}"></form:input><br>
                    </div>
                    <div class="form-group">
                        <label>Order Status</label>
                        <form:select class="form-control" path="orderStatus" required="required">
                            <option selected>${updateOrder.orderStatus}</option>
                            <option>Active</option>
                            <option>Done</option>
                            <option>In process</option>
                            <option>Canceled</option>
                        </form:select>
                    </div>
                    <div class="form-group">
                        <label>Pay Method</label>
                        <form:select class="form-control" path="payMethod" required="required">
                            <option selected>${updateOrder.payMethod}</option>
                            <option>Visa/Mastercard</option>
                            <option>Cash in post office</option>
                            <option>By card in post office</option>
                            <option>Bitcoin</option>
                        </form:select>
                    </div>
                    <div class="form-group">
                        <label>Delivery Method</label>
                        <form:select class="form-control" path="deliveryMethod" required="required">
                            <option selected>${updateOrder.deliveryMethod}</option>
                            <option>New Post</option>
                            <option>New Post Currier</option>
                            <option>Ukrainian post</option>
                            <option>In Time post</option>
                        </form:select>
                    </div>
                    <div class="form-group">
                        <label>Comment</label>
                        <form:input path="comment" class="form-control" value="${updateOrder.comment}"></form:input>
                            <%--<form:select path="products" items="${updateOrder.products}" itemLabel="name" itemValue="id"/>--%>
                        <br>
                    </div>
                    <div class="form-group">
                        <c:forEach items="${updateOrder.products}" var="product">
                            ${product.name} <a href="/updateOrder/${updateOrder.id}/${product.id}">delete
                            product</a><br>
                        </c:forEach>
                    </div>
                    <button class="btn btn-success">Update</button>
                </form:form>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
