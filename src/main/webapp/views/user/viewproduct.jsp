<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 28.06.2017
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>${product.name}</title>
    <link rel="stylesheet" href="/css/viewproduct.css" type="text/css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
</head>
<body>

   <div class="container">
        <div class="card">
            <div class="container-fliud">
                <div class="wrapper row">
                    <div class="preview col-md-6">
                        <div class="preview-pic tab-content">
                            <div class="tab-pane active" id="pic-100"><img src="/${product.pathToImage}"/></div> <c:forEach var="img" items="${product.productImages}" varStatus="ind">
                                    <div class="tab-pane" id="#pic-${ind.index}"><img src="/${img.pathToImage}"/></div>
                                </c:forEach>
                        </div>
                        <ul class="preview-thumbnail nav nav-tabs">
                            <li class="active"><a data-target="#pic-100" data-toggle="tab"><img src="/${product.pathToImage}"/></a></li>
                                <c:forEach var="img" items="${product.productImages}" varStatus="i">
                                    <li><a data-target="#pic-${i.index}" data-toggle="tab"><img src="/${img.pathToImage}"/></a></li>
                                </c:forEach>
                        </ul>

                    </div>
                    <div class="details col-md-6">
                        <h3 class="product-title">${product.name}</h3>
                        <div class="rating">
                            <div class="stars">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                            </div>
                            <span class="review-no">41 reviews</span>
                        </div>
                        <p class="product-description">${product.description}</p>
                        <h4 class="price">current price: <span>$ ${product.price}</span></h4>
                        <div class="action">
                            <sec:authorize access="!hasRole('ROLE_ADMIN') and isAuthenticated()">
                                <a href="/addToCard/${product.id}" class="add-to-cart btn btn-default">Add to Cart</a>
                            </sec:authorize>
                            <%--<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
