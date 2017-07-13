<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 12.07.2017
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Profile</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" align="center">
            <label style="text-align: center;
			font-size: 20px; color: aqua;
			padding-top: 20px;">Update your details</label>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" align="center">
            <div style="width: 50%; padding-left: 20px;">
                <form method="post" action="/updateUser">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" placeholder="Name" name="name"
                               required="required" value="${updateUser.name}">
                    </div>
                    <div class="form-group">
                        <label>email</label>
                        <input type="email" class="form-control" name="email" required="required"
                               value="${updateUser.email}">
                    </div>
                    <div class="form-group">
                        <label>New Password</label>
                        <input type="password" class="form-control" placeholder="newPassword" name="newPassword">
                    </div>
                    <div class="form-group">
                        <label>First Name</label>
                        <input type="text" class="form-control" value="${updateUser.firstName}"
                               name="firstName" required="required">
                    </div>
                    <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" class="form-control" value="${updateUser.lastName}"
                               name="lastName" required="required">
                    </div>

                    <div class="form-group">
                        <label>Phone Number</label>
                        <input type="text" class="form-control" value="${updateUser.telephone}"
                               name="telephone" required="required">
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <button type="submit" class="btn btn-success" id="saveCategoryBtn">Update</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>


