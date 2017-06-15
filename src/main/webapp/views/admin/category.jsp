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
<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12" align="center">
			<label style="text-align: center;
			font-size: 20px; color: aqua;
			padding-top: 20px;">ADD Category</label>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12" align="center">
			<form style="width: 50%; padding-left: 20px;"
				  action="/category?${_csrf.parameterName}=${_csrf.token}"
				  method="post" enctype="multipart/form-data">
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
				<div class="form-group">
					<label>File input</label>
					<input name="image" type="file" class="form-control">
					<p class="help-block">Choose logo</p>
				</div>
				<button type="submit" class="btn btn-success"> Add Category </button>
				<%--<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}"/>--%>
			</form>
		</div>
	</div>

	<div class="row">
		<c:forEach var="category" items="${categories}">
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail">
					<img src="${category.pathToImage}" alt="" width="200" height="200">
					<div class="caption">
						<h3>${category.name}</h3>
						<p>${category.description}</p>
						<p>
							<a href="/deleteCategory/${category.id}" class="btn btn-danger" role="button">Delete</a>
							<a href="/updateCategory/${category.id}" class="btn btn-default" role="button">Update</a>
						</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

</div>
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

</body>
</html>