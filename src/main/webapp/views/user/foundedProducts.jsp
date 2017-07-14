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

    <link rel="stylesheet" href="/css/order.css" type="text/css">
    <script src="/js/order.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<div class="container-fluid">
    <div class="row">
            <c:forEach var="product" items="${products}">
                <div class="col-sm-6 col-md-4" style="height: 500px">
                    <div class="thumbnail">
                        <img src="/${product.pathToImage}" alt="" width="200" height="200">
                        <div class="caption">
                            <h3>${product.name}</h3>
                            <h4>${product.price}</h4>
                            <p>${product.description}</p>
                            <p>
                                <sec:authorize access="!hasRole('ROLE_ADMIN') and isAuthenticated()">
                                    <a href="/addToCard/${product.id}" class="btn btn-success">Add to Cart</a>
                                </sec:authorize>
                                <a href="/viewProduct/${product.id}" class="btn btn-default" role="button">View</a>
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>
    </div>
</div>
</body>
</html>
