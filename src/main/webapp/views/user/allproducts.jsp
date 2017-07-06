<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="springLocal" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> <springLocal:message code="label.allProducts"/></title>
    <link rel="stylesheet" href="/css/product.css" type="text/css">
    <link rel="stylesheet" href="/css/top.css" type="text/css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
</head>
<body>
<div class="row" style="background-color: #cccccc">
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="row">
            <c:forEach var="product" items="${products}">
                <div class="col-xs-4 col-sm-4 col-md-4">
                    <figure class="snip1246">
                            <%--!!!!!!!!!!!!!!!!!!!!!!!!--%>
                            <%--<img src="${product.id}" alt="sample88"/>--%>
                        <c:forEach var="img" items="${product.productImages}">
                            <img src="${img.pathToImage}" alt="sample88" height="192px" width="150px">
                        </c:forEach>
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
    <a href="javascript:" id="top"><i class="icon-chevron-up"></i></a>
</div>
</body>
</html>
<script>
    $(".hover").mouseleave(
        function () {
            $(this).removeClass("hover");
        }
    );

    // ===== Scroll to Top ====
    $(window).scroll(function() {
        if ($(this).scrollTop() >= 50) {    // If page is scrolled more than 50px
            $('#top').fadeIn("fast");       // Fade in the arrow
        } else {
            $('#top').fadeOut("fast");      // Else fade out the arrow
        }
    });
    $('#top').click(function() {            // When arrow is clicked
        $('body,html').animate({
            scrollTop : 0                   // Scroll to top of body
        }, 500);
    });
</script>
