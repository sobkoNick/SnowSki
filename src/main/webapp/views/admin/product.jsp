<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--<%@taglib prefix="custom" uri="/WEB-INF/custom.tld" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="/css/product.css" type="text/css">
<title>Products</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12" align="center">
				<form style="width: 50%; padding-left: 20px;" modelAttribute="product"
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
						<label for="description">Description</label>
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

					<div class="form-group" id="images">
						<label>File input</label>
						<input name="images" type="file" class="form-control" required="required">
						<p class="help-block">Choose logo</p>
					</div>
					<div class="form-group">
						<input class="btn btn-primary" type="button" value="add Image" id="addImage">
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
									<%--!!!!!!!!!!!!!!!!!!!!!!!!--%>
								<%--<img src="${product.id}" alt="sample88"/>--%>
										<c:forEach var="img" items="${product.productImages}">
												<img src="${img.pathToImage}" alt="sample88" height="192px" width="150px">
										</c:forEach>
								<figcaption>
									<h2>${product.name}</h2>
									<p>${product.description}</p>
									<div class="price">${product.price}</div>
									<sec:authorize access="hasRole('ROLE_ADMIN')">
										<a href="/deleteProduct/${product.id}" class="view-product">Delete</a>
									</sec:authorize>
										<%--<a href="/addToCard/${product.id}" class="add-to-cart">Add to Cart</a>--%>
								</figcaption>
							</figure>
							</div>
						</c:forEach>
				</div>
			</div>
			<%--<div style="display: flex; justify-content: center;text-align: center">--%>

				<%--<div class="col-md-12 col-xs-12">--%>
					<%--<div class="row">--%>
						<%--<div class="col-md-2 col-xs-6">--%>
							<%--<div class="dropdown">--%>
								<%--<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Sort <span--%>
										<%--class="caret"></span>--%>
								<%--</button>--%>
								<%--<ul class="dropdown-menu">--%>
									<%--<custom:sort innerHtml="Name asc" paramValue="productName"/>--%>
									<%--<custom:sort innerHtml="Name desc" paramValue="productName,desc"/>--%>
								<%--</ul>--%>
							<%--</div>--%>
						<%--</div>--%>
						<%--<div class="col-md-8 col-xs-12 text-center">--%>
							<%--<custom:pageable page="${products}" cell="<li></li>" container="<ul class='pagination'></ul>"/>--%>
						<%--</div>--%>
						<%--<div class="col-md-2 col-xs-6">--%>
							<%--<custom:size posibleSizes="1,2,5,10" size="${products.size}"/>--%>
						<%--</div>--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>


		</div>

	</div>

</body>
</html>
<script>
    $(".hover").mouseleave(
        function () {
            $(this).removeClass("hover");
        }
    );

	document.getElementById('addImage').onclick = function () {
	    var newFileInput = document.createElement('input');
	    newFileInput.type = 'file';
	    newFileInput.name = 'images';
		newFileInput.className = 'form-control';
		newFileInput.required = 'required';
		document.getElementById('images').appendChild(newFileInput);

	}

</script>