<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 28.06.2017
  Time: 0:03
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">

    <table class="table table-hover">
        <thead>
        <tr>
            <th>order date</th>
            <th>Products</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="order" items="${user.orders}">
            <tr>
                <td>
                        ${order.date}
                </td>
                <td>
                    <c:forEach items="${order.products}" var="product">
                        ${product.name} <br>
                    </c:forEach>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
