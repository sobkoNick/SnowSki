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
	Binder
	<div>
		<form modelAttribute="product" action="/product"
				   method="post">
			<input path="name" name="name"/>

			<select name='producer'>
				<option value="${selected}" selected>${selected}</option>
				<c:forEach items="${producers}" var="producer">
					<c:if test="${producer != selected}">
						<option value="${producer.id}">${producer.name}</option>
					</c:if>
				</c:forEach>
			</select>
			<select name='categoryOfProduct'>
				<option value="${selected}" selected>${selected}</option>
				<c:forEach items="${categories}" var="category">
					<c:if test="${category != selected}">
						<option value="${category.id}">${category.name}</option>
					</c:if>
				</c:forEach>
			</select>
			<%--<select name="producer" path="producer" items="${producers}" itemLabel="name" itemValue="id"/>--%>
			<%--<select name="categoryOfProduct" path="categoryOfProduct" items="${categories}" itemLabel="name" itemValue="id"/>--%>
			<input name="price" path="price" placeholder="price"/>
			<button>Save product</button>
			<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}"/>
		</form>
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