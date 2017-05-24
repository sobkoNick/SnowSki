<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
</head>
<body>

		<div>
			<form action="/order" method="post">
				<input name="name" type="text" placeholder="name"><br>
				<input name="numberOfProducts" type="text" placeholder="numberOfProducts"><br>
				<input name="orderPrice" type="text" placeholder="orderPrice"><br>
				<input name="deliveryMethod" type="text" placeholder="deliveryMethod"><br>
				<input name="payMethod" type="text" placeholder="payMethod"><br>
				<input name="orderStatus" type="text" placeholder="orderStatus"><br>
				<input name="comment" type="text" placeholder="comment"><br>
				<br>
				<select multiple="multiple" name="productsIds">
				<option>choose</option>
					<c:forEach var="product" items="${products}">
						<option value="${product.id }">${product.name}</option>
					</c:forEach>
				</select>
				<button>save Order</button>	
			</form>
			
		</div>
		
		<div>
	<ol>
		<c:forEach var="order" items="${orders}">
		<li>${order.name}
		| products: 
		<c:forEach var="product" items="${order.products}">
			${product.name}
		</c:forEach>
		<a href="/deleteOrder/${order.id}">delete</a> 
		<a href="/updateOrder/${order.id}">update</a> 
		<br></li>
		</c:forEach>
	</ol>
	</div>
		

</body>
</html>