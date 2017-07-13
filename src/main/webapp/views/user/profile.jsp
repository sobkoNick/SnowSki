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
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
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
                <form:form action="/buy" method="post" class="form-group">
                    <label>Delivery Method</label>
                    <select class="form-control" name="deliveryMethod" path="deliveryMethod" required="required">
                        <option>New Post</option>
                        <option>New Post Currier</option>
                        <option>Ukrainian post</option>
                        <option>In Time post</option>
                        <option>Other</option>
                    </select>

                    <label>Pay Method</label>
                    <select class="form-control" name="payMethod" path="payMethod" required="required">
                        <option>Visa/Mastercard</option>
                        <option>Cash in post office</option>
                        <option>By card in post office</option>
                        <option>Bitcoin</option>
                        <option>Other</option>
                    </select>
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
