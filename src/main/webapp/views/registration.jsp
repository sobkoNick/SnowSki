<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form:form modelAttribute="user" method="post">
    <form:input path="login" placeholder="login"/>
    <form:input path="email" placeholder="email"/>
    <form:input path="password" placeholder="password"/>
    <form:input path="firstName" placeholder="firstName"/>
    <form:input path="lastName" placeholder="lastName"/>
    <form:input path="language" placeholder="language"/>
    <form:input path="status" placeholder="status"/>
    <form:input path="telephone" placeholder="telephone"/>
    <form:input path="userGroup" placeholder="userGroup"/>
        <button>save</button>

</form:form>


</body>
</html>