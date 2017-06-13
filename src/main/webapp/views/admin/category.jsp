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
	<%--<div>--%>
		<%--<form action="/category" method="post">--%>
		<%--<input name="name" type="text" placeholder="name"><br>--%>
		<%--<input name="description" type="text" placeholder="description"><br>--%>
		<%--<input name="availability" type="text" placeholder="availability"><br>--%>
		<%--<input name="numberOfProducts" type="text" placeholder="numberOfProducts" required="required"><br>--%>
		<%--<input name="numberInHierarchy" type="text" placeholder="numberInHierarchy" required="required"><br>--%>
		<%----%>
		<%--<button>save category</button>--%>
			<%--<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}"/>--%>
		<%--</form>--%>
	<%--</div>--%>

	<form style="width: 50%; padding-left: 20px;" action="/category" method="post">
		<div class="form-group">
			<label>Name</label>
			<input type="text" class="form-control" placeholder="Name" name="name" required="required">
		</div>

		<div class="form-group">
			<label>Description</label>
			<input type="text" class="form-control" placeholder="description" name="description" required="required">
		</div>
		<div class="form-group">
			<label>Availability</label>
			<input type="text" class="form-control" placeholder="Availability" name="availability" required="required">
		</div>
		<div class="form-group">
			<label>Number Of Products</label>
			<input type="text" class="form-control" placeholder="NumberOfProducts" name="numberOfProducts" required="required">
		</div>
		<div class="form-group">
			<label>Number In Hierarchy</label>
			<input type="text" class="form-control" placeholder="NumberInHierarchy" name="numberInHierarchy" required="required">
		</div>
		<button type="submit" class="btn btn-default">Add</button>
		<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}"/>
	</form>


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