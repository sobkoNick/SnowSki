<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="/category" method="post">
		<input name="name" type="text" placeholder="name"><br>
		<input name="description" type="text" placeholder="description"><br>
		<input name="availability" type="text" placeholder="availability"><br>
		<input name="numberOfProducts" type="text" placeholder="numberOfProducts"><br>
		<input name="numberInHierarchy" type="text" placeholder="numberInHierarchy"><br>
		
		<button>save category</button>
		</form>
	</div>
	<div>
	<ol>
		<c:forEach var="category" items="${categories}">
		<li>${category.name} ${category.description} ${category.availability} ${category.numberOfProducts} 
		${category.numberInHierarchy}<a href="/deleteCategory/${category.id}">delete</a> <br></li>
			
		</c:forEach>
	
	</div>
	</ol>
</body>
</html>