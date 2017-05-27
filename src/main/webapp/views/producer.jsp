<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Producer</title>
</head>
<body>
	<div>
		<form action="/producer" method="post">
		<input name="name" type="text" placeholder="name"><br>
		<input name="description" type="text" placeholder="description"><br>
		<input name="numberOfProducts" type="text" placeholder="numberOfProducts"><br>
		
		<button>save producer</button>
		</form>
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