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