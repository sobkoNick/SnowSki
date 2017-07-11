<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 28.06.2017
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                            <%--<c:forEach items="${product.productImages}" var="image">--%>
                                <%--<c:set var="imageIndex" value="${image}" />--%>
                                <%--<c:if test="${imageIndex}==1">--%>
                                    <%--<div class="tab-pane active" id="pic-1"><img src="${image.pathToImage}"/></div>--%>
                                <%--</c:if>--%>
                                <%--<div class="tab-pane" id="pic-${imageIndex}">--%>
                                    <%--<img src="${image.pathToImage}"/>--%>
                                <%--</div>--%>
                            <%--</c:forEach>--%>


                                <c:forEach var="img" items="${product.productImages}">
                                    <img src="${img.pathToImage}" height="192px" width="150px">
                                </c:forEach>

                            <div class="tab-pane active" id="pic-1"><img src="${product.pathToImage}"/></div>
                            <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
                            <div class="tab-pane" id="pic-3"><img src="https://ebanoe.it/wp-content/uploads/2017/06/belarus_hungry_it_games.jpg" /></div>
                            <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252"/></div>
                            <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252"/></div>
                        </div>
                        <ul class="preview-thumbnail nav nav-tabs">
                            <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="${product.pathToImage}"/></a></li>
                            <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126"/></a></li>
                            <li><a data-target="#pic-3" data-toggle="tab"><img src="https://ebanoe.it/wp-content/uploads/2017/06/belarus_hungry_it_games.jpg" /></a></li>
                            <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126"/></a></li>
                            <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126"/></a></li>

                                <%--<c:forEach var="img" items="${product.productImages}">--%>
                                    <%--<li><img src="${img.pathToImage}" height="192px" width="150px"></li>--%>
                                <%--</c:forEach>--%>

                        </ul>

                    </div>
                    <div class="details col-md-6">
                        <h3 class="product-title">${product.name}</h3>
                        <div class="rating">
                            <div class="stars">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                            <span class="review-no">41 reviews</span>
                        </div>
                        <p class="product-description">${product.description}</p>
                        <%--<p class="product-description">${product.producer}</p>--%>
                        <%--<p class="product-description">${product.categoryOfProduct}</p>--%>
                        <h4 class="price">current price: <span>$ ${product.price}</span></h4>
                        <%--<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>--%>
                        <h5 class="sizes">sizes:
                            <span class="size" data-toggle="tooltip" title="small">s</span>
                            <span class="size" data-toggle="tooltip" title="medium">m</span>
                            <span class="size" data-toggle="tooltip" title="large">l</span>
                            <span class="size" data-toggle="tooltip" title="xtra large">xl</span>
                        </h5>
                        <h5 class="colors">colors:
                            <span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
                            <span class="color green"></span>
                            <span class="color blue"></span>
                        </h5>
                        <div class="action">
                            <button class="add-to-cart btn btn-default" type="button">add to cart</button>
                            <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
