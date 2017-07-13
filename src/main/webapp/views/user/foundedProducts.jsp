<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 13.07.2017
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your products</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/product.css" type="text/css">
    <link rel="stylesheet" href="/css/top.css" type="text/css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="row">
                <c:forEach var="product" items="${products}">
                    <div class="col-xs-4 col-sm-4 col-md-4">
                        <figure class="snip1246">
                            <img src="${product.pathToImage}" alt="sample88"/>
                            <figcaption>
                                <h2>${product.name}</h2>
                                <p>${product.description}</p>
                                <div class="price">${product.price}</div>
                                <a href="/viewProduct/${product.id}" class="view-product">View product</a>
                                <sec:authorize access="isAuthenticated()">
                                    <a href="/addToCard/${product.id}" class="add-to-cart">Add to Cart</a>
                                </sec:authorize>
                            </figcaption>
                        </figure>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>
</html>
