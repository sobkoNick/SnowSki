<%--
  Created by IntelliJ IDEA.
  User: Mykola
  Date: 12.07.2017
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update user</title>
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
                <form method="post" action="/updateUserByAdmin">
                    <div class="form-group">
                        <label>Id</label>
                        <input type="text" class="form-control" name="id" required="required"
                               value="${userBla.id}">
                    </div>
                    <div class="form-group">
                        <label>status</label>
                        <input type="text" class="form-control" name="status" required="required"
                               value="${userBla.status}">
                    </div>
                    <div class="form-group">
                        <label>Discount</label>
                        <input type="text" class="form-control" name="discount"
                               value="${userBla.discount}">
                    </div>
                    <div class="form-group">
                        <label>Enable</label>
                        <input type="text" class="form-control" name="enable"
                               value="${userBla.isEnabled()}">
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
