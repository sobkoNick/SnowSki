<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Producer</title>
</head>
<body>
	<div>
		<%--<form action="/producer" method="post">--%>
		<%--<input name="name" type="text" placeholder="name"><br>--%>
		<%--<input name="description" type="text" placeholder="description"><br>--%>
		<%--<input name="numberOfProducts" type="text" placeholder="numberOfProducts"><br>--%>
		<%----%>
		<%--<button>save producer</button>--%>
		<%--</form>--%>

	<form:form modelAttribute="producer" action="/producer" method="post">
		<form:input path="name" required="required"/>
		<span style="color: red">${nameException}</span><br>
		<form:input path="description" required="required"/>
		<span style="color: red">${descriptionException}</span><br>
		<form:input path="numberOfProducts" required="required"/>
		<span style="color: red">${numberOfProductsException}</span><br>
		<button>Save Producer</button>

	</form:form>

	</div>
	<div>
	<ol>
		<c:forEach var="producer" items="${producers}">
		<li>${producer.name} ${producer.description} ${producer.numberOfProducts} 
		<a href="/deleteProducer/${producer.id}">delete</a> <br></li>
		</c:forEach>
	</div>
	</ol>
</body>
</html>