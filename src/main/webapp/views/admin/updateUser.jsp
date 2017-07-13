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
			padding-top: 20px;">Update user details</label>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" align="center">
            <div style="width: 50%;">
                <form method="post" action="/updateUserByAdmin">
                    <div class="form-group">
                        <input type="hidden" class="form-control" name="id" required="required"
                               value="${userBla.id}">
                    </div>
                    <div class="form-group">
                        <label>status</label>
                        <select class="form-control" id="sel1" name="status" required="required" value="${userBla.status}">
                            <option>active</option>
                            <option>disabled</option>
                            <option>VIP</option>
                            <option>somebody</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Discount</label>
                        <input type="number" min="0" max="25" class="form-control" name="discount"
                               value="${userBla.discount}">
                    </div>
                    <div class="form-group">
                        <label>Enable</label>
                        <select class="form-control" name="enable" required="required"  value="${userBla.isEnabled()}">
                            <option>true</option>
                            <option>false</option>
                        </select>
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
