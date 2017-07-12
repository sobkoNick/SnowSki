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
    <title>Users</title>
</head>
<body>
<section>
    <!--for demo wrap-->
    <h1>User TABLE</h1>
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Telephone</th>
                <th>Status</th>
                <th>Enaibled?</th>
                <th>Discount</th>
                <th>DELETE</th>
                <th>UPDATE</th>
            </tr>
            </thead>
        </table>
    </div>
    <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.telephone}</td>
                    <td>${user.status}</td>
                    <td>${user.isEnabled()}</td>
                    <td>${user.discount}</td>
                    <td><a href="/deleteUser/${user.id}">delete</a></td>
                    <td><a href="/updateUserFields/${user.id}">update</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>

</body>
</html>