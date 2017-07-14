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
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="/${product.pathToImage}" alt="" width="200" height="200">
                        <div class="caption">
                            <h3>${product.name}</h3>
                            <h4>${product.price}</h4>
                            <p>${product.description}</p>
                            <p>
                                <sec:authorize access="isAuthenticated()">
                                    <a href="/addToCard/${product.id}" class="btn btn-success">Add to Cart</a>
                                </sec:authorize>
                                <a href="/viewProduct/${product.id}" class="btn btn-default" role="button">View</a>
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        <%--<div class="col-xs-12 col-sm-12 col-md-12">--%>
        <%--<div class="row">--%>
        <%--<c:forEach var="product" items="${products}">--%>
        <%--<div class="col-xs-4 col-sm-4 col-md-4">--%>
        <%--<figure class="snip1246">--%>
        <%--<img src="${product.pathToImage}" alt="sample88"/>--%>
        <%--<figcaption>--%>
        <%--<h2>${product.name}</h2>--%>
        <%--<p>${product.description}</p>--%>
        <%--<div class="price">${product.price}</div>--%>
        <%--<a href="/viewProduct/${product.id}" class="view-product">View product</a>--%>
        <%--<sec:authorize access="isAuthenticated()">--%>
        <%--<a href="/addToCard/${product.id}" class="add-to-cart">Add to Cart</a>--%>
        <%--</sec:authorize>--%>
        <%--</figcaption>--%>
        <%--</figure>--%>
        <%--</div>--%>
        <%--</c:forEach>--%>
        <%--</div>--%>
        <%--</div>--%>
    </div>
    <section>
        <!--for demo wrap-->
        <h1>User TABLE</h1>
        <div class="tbl-header">
            <table cellpadding="0" cellspacing="0" border="0">
                <thead>
                <tr>
                    <th>pathToImage</th>
                    <th>Name</th>
                    <th>description</th>
                    <th>price</th>
                    <th>id</th>
                </tr>
                </thead>
            </table>
        </div>
        <div class="tbl-content">
            <table cellpadding="0" cellspacing="0" border="0">
                <tbody>
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td>${product.pathToImage}</td>
                        <td>${product.name}</td>
                        <td>${product.description}</td>
                        <td>${product.price}</td>
                        <td>${product.id}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </section>
</div>
</body>
</html>
