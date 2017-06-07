<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
	<div>
		<form action="/product" method="post">
		<input name="name" type="text" placeholder="name"><br>
		<input name="description" type="text" placeholder="description"><br>
		<input name="model" type="text" placeholder="model"><br>
		<input name="price" type="text" placeholder="price"><br>
		avaible?	<input name="avaible" type="checkbox" placeholder="avaible"><br>
		<input name="count" type="text" placeholder="count"><br>
		<input name="options" type="text" placeholder="options"><br>
		<input name="weight" type="text" placeholder="weight"><br>
		
		<select name="producerId">
			<option>choose</option>
			<c:forEach var="producer" items="${producers}">
			<option value="${producer.id }">${producer.name }</option>
			</c:forEach>
		</select>
		<br>
		<select multiple="multiple" name="ordersIds">
		<option>choose</option>
			<c:forEach var="order" items="${orders}">
				<option value="${order.id }">${order.name}</option>
			</c:forEach>
		</select>
		
		<button>save product</button>
		</form>
	</div>
	Binder
	<div>
		<form:form modelAttribute="product" method="post">
			<form:input path="name"/>
			<form:select path="producer" items="${producers}" itemLabel="name" itemValue="id"/>
			<form:input path="price" placeholder="price"/>
			<button>Save product</button>
		</form:form>

	</div>


	<div>
	<ol>
		<c:forEach var="product" items="${products}">
		<li>${product.name} ${product.producer.name }
		| In orders: 
		<c:forEach var="order" items="${product.orders }">
			${order.name}
		</c:forEach>
		<a href="/deleteProduct/${product.id}">delete</a> 
		<a href="/updateProduct/${product.id}">update</a> 
		<br></li>
		</c:forEach>
	</ol>
	</div>
</body>
</html>