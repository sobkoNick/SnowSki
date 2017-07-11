<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="springLocal" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="custom" uri="/WEB-INF/custom.tld" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> <springLocal:message code="label.allProducts"/></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/product.css" type="text/css">
    <link rel="stylesheet" href="/css/top.css" type="text/css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="row" style="background-color: #cccccc">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="row">
                <c:forEach var="product" items="${products.content}">
                    <div class="col-xs-4 col-sm-4 col-md-4">
                        <figure class="snip1246">
                                <%--!!!!!!!!!!!!!!!!!!!!!!!!--%>
                            <img src="${product.pathToImage}" alt="sample88"/>
                                <%--<c:forEach var="img" items="${product.productImages}">--%>
                                <%--<img src="${img.pathToImage}" alt="sample88" height="192px" width="150px">--%>
                                <%--</c:forEach>--%>
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
        <div class="col-xs-12 col-md-12 col-sm-12">
            <div style="display: flex; justify-content: center;text-align: center">
                <div class="col-md-12 col-xs-12">
                    <div class="row">
                        <div class="col-md-2 col-xs-6">
                            <div class="dropdown">
                                <%--<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Sort <span--%>
                                <%--class="caret"></span>--%>
                                </button>
                                <ul class="dropdown-menu">
                                    <custom:sort innerHtml="Name asc" paramValue="producerName"/>
                                    <custom:sort innerHtml="Name desc" paramValue="producerName,desc"/>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-8 col-xs-12 text-center">
                            <custom:pageable page="${products}" cell="<li></li>" container="<ul class='pagination'></ul>"/>
                        </div>
                        <div class="col-md-2 col-xs-6">
                            <custom:size posibleSizes="1,2,5,10" size="${products.size}"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div id="result"></div>
        </div>
    </div>
</div>
    <a href="javascript:" id="top"><i class="icon-chevron-up"></i></a>


</body>
</html>
<script src="/js/allproducts.js"></script>
