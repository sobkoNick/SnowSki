<%--
  Created by IntellJ IDEA.
  User: Mykola
  Date: 13.06.2017
  Time: 17:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="springLocal" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<div class="container-fluid">
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 small-header">
        <div class="row">
            <div class="col-xs-5 col-xs-offset-2 col-sm-2 col-md-1 col-md-offset-1 lang">
                <div class="row">
                    093-000-00-00
                </div>
            </div>
            <div class="col-xs-5 col-sm-2 col-md-2 lang">
                MYKOLA SOBKO
            </div>
            <div class="col-xs-0 hidden-xs col-sm-4 col-md-4 text-header">
                <springLocal:message code="label.free_delivery"/>
            </div>
            <div class="col-xs-0 hidden-xs col-sm-2 col-md-3 lang">
                <springLocal:message code="label.address"/>
            </div>
            <div class="col-xs-0 hidden-xs col-sm-2 col-md-1 text-header">
                <springLocal:message code="label.basket"/>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
