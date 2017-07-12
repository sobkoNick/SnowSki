<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 13.06.2017
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <link rel="stylesheet" href="/css/profile.css" type="text/css">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">${userWithBasket.name}</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class=" col-md-12 col-lg-12 ">
                            <table class="table table-user-information">
                                <tbody>
                                <tr>
                                    <td>Name:</td>
                                    <td>${user.firstName} ${user.lastName}</td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>${user.email}</td>
                                </tr>
                                <tr>
                                <td>Phone Number</td>
                                <td>${user.telephone}</td>
                                </tr>
                                </tbody>
                            </table>
                            <a href="/updateProfile" class="btn btn-primary">Update Profile</a>
                            <a href="/deleteUserFromProfile" class="btn btn-warning">Delete profile</a>
                        </div>
                    </div>
                </div>
                <%--<div class="panel-footer">--%>
                    <%--<a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>--%>
                    <%--<span class="pull-right">--%>
                            <%--<a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>--%>
                            <%--<a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>--%>
                        <%--</span>--%>
                <%--</div>--%>

            </div>
        </div>
    </div>

    <table class="table table-hover">
        <thead>
        <tr>
            <c:if test="${userWithBasket.products.size() != 0}">
                <th>Product name</th>
                <th></th>
                <th>Description</th>
                <th>Price</th>
                <th></th>

                    <%--<form:form action="/buy/${user.id}"  method="post">--%>
                    <form:form action="/buy"  method="post" class="form-group">

                        <label for="deliveryMethod">Delivery Method</label>

                        <input name="deliveryMethod" path="deliveryMethod" type="text" class="form-control" id="deliveryMethod"
                               placeholder="Delivery Method" required="required"/>

                        <label for="deliveryMethod">Pay Method</label>

                        <input name="payMethod" path="payMethod" type="text" class="form-control" id="payMethod"
                               placeholder="Pay Method" required="required"/>

                        <label for="comment">Your Comment</label>

                        <textarea name="comment" path="comment" class="form-control" rows="5" id="comment"
                                  placeholder="Description" required="required"></textarea>
                        <br>

                        <button class="btn btn-success">buy</button>
                    </form:form>

            </c:if>
            <c:if test="${userWithBasket.products.size() == 0}">
                <th>
                   You don't have any products in your basket
                </th>
            </c:if>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${userWithBasket.products}">
            <tr>
                <td>
                        ${product.name}
                </td>
                <td>
                    <%--!!!!!!!!!!!!!!!!!!!!!!!!--%>
                    <img src="${product.pathToImage}" alt="${product.name}" height="192px" width="150px">
                </td>
                <td>
                        ${product.description}
                </td>
                <td>
                        ${product.price}
                </td>
                <td>
                    <a href="/deleteFromBasket/${userWithBasket.id}/${product.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


</div>


</body>
</html>
