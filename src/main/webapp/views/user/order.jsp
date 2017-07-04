<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="/css/order.css" type="text/css">
    <script src="/js/order.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Orders</title>
</head>
<body>
<%--<div>--%>
    <%--<form action="/order" method="post">--%>
        <%--<input name="name" type="text" placeholder="name"><br>--%>
        <%--<input name="numberOfProducts" type="text" placeholder="numberOfProducts"><br>--%>
        <%--<input name="orderPrice" type="text" placeholder="orderPrice"><br>--%>
        <%--<input name="deliveryMethod" type="text" placeholder="deliveryMethod"><br>--%>
        <%--<input name="payMethod" type="text" placeholder="payMethod"><br>--%>
        <%--<input name="orderStatus" type="text" placeholder="orderStatus"><br>--%>
        <%--<input name="comment" type="text" placeholder="comment"><br>--%>
        <%--<br>--%>
        <%--<select multiple="multiple" name="productsIds">--%>
            <%--<option>choose</option>--%>
            <%--<c:forEach var="product" items="${products}">--%>
                <%--<option value="${product.id }">${product.name}</option>--%>
            <%--</c:forEach>--%>
        <%--</select>--%>
        <%--<button>save Order</button>--%>
        <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
    <%--</form>--%>
<%--</div>--%>

<%--Using binders--%>
<%--<div>--%>
<%--<form:form modelAttribute="order" action="/order" method="post">--%>
<%--<form:input path="name"/>--%>
<%--<form:select path="product" items="${products}" itemValue="id" itemLabel="name"/>--%>
<%--<button>Save order</button>--%>
<%--</form:form>--%>

<%--</div>--%>

<%--<div>--%>
    <%--<ol>--%>
        <%--<c:forEach var="order" items="${orders}">--%>
            <%--<li>${order.name}--%>
                <%--| products:--%>
                <%--<c:forEach var="product" items="${order.products}">--%>
                    <%--${product.name}--%>
                <%--</c:forEach>--%>
                <%--<a href="/deleteOrder/${order.id}">delete</a>--%>
                <%--<a href="/updateOrder/${order.id}">update</a>--%>
                <%--<br></li>--%>
        <%--</c:forEach>--%>
    <%--</ol>--%>
<%--</div>--%>

<section>
    <!--for demo wrap-->
    <h1>ORDERS TABLE</h1>
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Products</th>
                <th>Order Status</th>
                <th>DELETE</th>
                <th>UPDATE</th>
            </tr>
            </thead>
        </table>
    </div>
    <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
            <c:forEach var="order" items="${orders}">
                <tr>
                    <td>${order.id}</td>
                    <td>${order.name}</td>
                    <td>${order.orderPrice}</td>
                    <td>
                        <c:forEach var="product" items="${order.products}">
                            ${product.name};
                        </c:forEach>
                    </td>
                    <td>${order.orderStatus}</td>
                    <td><a href="/deleteOrder/${order.id}">delete</a></td>
                    <td><a href="/updateOrder/${order.id}">update</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>

</body>
</html>