<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="/css/product.css" type="text/css">
<title>Products</title>
</head>
<body>
	<%--Binder--%>
	<%--<div>--%>
		<%--<form modelAttribute="product" action="/product"--%>
				   <%--method="post">--%>
			<%--<input path="name" name="name"/>--%>

			<%--<select name='producer'>--%>
				<%--<option value="${selected}" selected>${selected}</option>--%>
				<%--<c:forEach items="${producers}" var="producer">--%>
					<%--<c:if test="${producer != selected}">--%>
						<%--<option value="${producer.id}">${producer.name}</option>--%>
					<%--</c:if>--%>
				<%--</c:forEach>--%>
			<%--</select>--%>
			<%--<select name='categoryOfProduct'>--%>
				<%--<option value="${selected}" selected>${selected}</option>--%>
				<%--<c:forEach items="${categories}" var="category">--%>
					<%--<c:if test="${category != selected}">--%>
						<%--<option value="${category.id}">${category.name}</option>--%>
					<%--</c:if>--%>
				<%--</c:forEach>--%>
			<%--</select>--%>
			<%--&lt;%&ndash;<select name="producer" path="producer" items="${producers}" itemLabel="name" itemValue="id"/>&ndash;%&gt;--%>
			<%--&lt;%&ndash;<select name="categoryOfProduct" path="categoryOfProduct" items="${categories}" itemLabel="name" itemValue="id"/>&ndash;%&gt;--%>
			<%--<input name="price" path="price" placeholder="price"/>--%>
			<%--<button>Save product</button>--%>
			<%--<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}"/>--%>
		<%--</form>--%>
	<%--</div>--%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12" align="center">
				<form cssStyle="width: 50%; padding-left: 20px;" modelAttribute="product"
						   action="/product?${_csrf.parameterName}=${_csrf.token}"
						   method="post" enctype="multipart/form-data">

					<div class="form-group">
						<label for="nameOfProduct">Name</label>
						<input name="name" path="name" type="text" class="form-control"
									id="nameOfProduct" placeholder="Name" required="required"/>
						<span style="color: red">${nameException}</span>
					</div>

					<div class="form-group">
						<label>Producer</label>
						<select name='producer' class="form-control">
							<option value="${selected}" selected>${selected}</option>
							<c:forEach items="${producers}" var="producer">
								<c:if test="${producer != selected}">
									<option value="${producer.id}">${producer.name}</option>
								</c:if>
							</c:forEach>
						</select>
					</div>

					<div class="form-group">
						<label>Category</label>
						<select name='categoryOfProduct' class="form-control">
							<option value="${selected}" selected>${selected}</option>
							<c:forEach items="${categories}" var="category">
								<c:if test="${category != selected}">
									<option value="${category.id}">${category.name}</option>
								</c:if>
							</c:forEach>
						</select>
					</div>

					<div class="form-group">
						<label for="productDesc">Description</label>
						<textarea name="description" path="description" class="form-control" rows="5" id="comment"
								  placeholder="Description" required="required"></textarea>
						<%--<input name="description" path="description" type="text" class="form-control" id="productDesc"--%>
									<%--placeholder="Description" required="required"/>--%>
						<span style="color: red">${descriptionException}</span>
					</div>
					<div class="form-group">
						<label for="model">Model</label>
						<input name="model" path="model" type="text" class="form-control" id="model"
							   placeholder="Model" required="required"/>
					</div>

					<div class="form-group">
						<label for="price">Price</label>
						<input name="price" path="price" type="text" class="form-control" id="price"
									placeholder="Price" required="required"/>
					</div>

					<div class="form-group">
						<label for="avaible">Avaible?</label>
						<input name="avaible" path="avaible" type="checkbox" class="form-control" id="avaible"
							   required="required"/>
					</div>

					<div class="form-group">
						<label for="count">Count</label>
						<input name="count" path="count" type="text" class="form-control" id="count"
							   placeholder="Count" required="required"/>
					</div>

					<div class="form-group">
						<label for="options">Options</label>
						<input name="options" path="options" type="text" class="form-control" id="options"
							   placeholder="Options" required="required"/>
					</div>

					<div class="form-group">
						<label for="weight">Weight</label>
						<input name="weight" path="weight" type="text" class="form-control" id="weight"
							   placeholder="Weight" required="required"/>
					</div>

					<div class="form-group">
						<label>File input</label>
						<input name="image" type="file" class="form-control">
						<p class="help-block">Choose logo</p>
					</div>
					<button type="submit" class="btn btn-success"> Add Product </button>
					<%--<button>Save Producer</button>--%>
				</form>

			</div>
		</div>

		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12">
				<div class="row">
						<c:forEach var="product" items="${products}">
							<div class="col-xs-4 col-sm-4 col-md-4">
							<figure class="snip1246">
								<img src="${product.pathToImage}" alt="sample88"/>
								<figcaption>
									<h2>${product.name}</h2>
									<p>${product.description}</p>
									<div class="price">${product.price}</div>
									<a href="#" class="add-to-cart">Add to Cart</a>
								</figcaption>
							</figure>
							</div>
						</c:forEach>
				</div>
			</div>
		</div>
	</div>


	<%--<div>--%>
	<%--<ol>--%>
		<%--<c:forEach var="product" items="${products}">--%>
		<%--<li>${product.name} ${product.producer.name }--%>
		<%--| In orders: --%>
		<%--<c:forEach var="order" items="${product.orders }">--%>
			<%--${order.name}--%>
		<%--</c:forEach>--%>
		<%--<a href="/deleteProduct/${product.id}">delete</a> --%>
		<%--<a href="/updateProduct/${product.id}">update</a> --%>
		<%--<br></li>--%>
		<%--</c:forEach>--%>
	<%--</ol>--%>
	<%--</div>--%>
</body>
</html>
<script>
    $(".hover").mouseleave(
        function () {
            $(this).removeClass("hover");
        }
    );
</script>