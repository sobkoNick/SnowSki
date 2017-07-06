<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="custom" uri="/WEB-INF/custom.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Producer</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12" align="center">
				<label style="text-align: center;
			font-size: 20px; color: chocolate;
			padding-top: 20px;">ADD PRODUCER</label>
			</div>
		</div>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12" align="center">
			<form:form cssStyle="width: 50%; padding-left: 20px;" modelAttribute="producer"
					   action="/producer?${_csrf.parameterName}=${_csrf.token}"
					   method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="nameOfProduct">Name</label>
					<form:input path="name" type="text" class="form-control"
						   id="nameOfProduct" placeholder="Name" required="required"/>
					<span style="color: red">${nameException}</span>
				</div>
				<div class="form-group">
					<label for="productDesc">Description</label>
					<form:input path="description" type="text" class="form-control" id="productDesc"
						   placeholder="Description" required="required"/>
					<span style="color: red">${descriptionException}</span>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Number of Products</label>
					<form:input path="numberOfProducts" type="text" class="form-control" id="exampleInputPassword1"
						   placeholder="Count" required="required"/>
					<span style="color: red">${numberOfProductsException}</span>
				</div>
				<div class="form-group">
					<label>File input</label>
					<input name="image" type="file" class="form-control">
					<p class="help-block">Choose logo</p>
				</div>
				<button type="submit" class="btn btn-success"> Add Producer </button>
				<%--<button>Save Producer</button>--%>
			</form:form>

		</div>
	<%--<form:form modelAttribute="producer" action="/producer?${_csrf.parameterName}=${_csrf.token}"--%>
			   <%--method="post" enctype="multipart/form-data">--%>
		<%--<form:input path="name" required="required"/>--%>
		<%--<span style="color: red">${nameException}</span><br>--%>
		<%--<form:input path="description" required="required"/>--%>
		<%--<span style="color: red">${descriptionException}</span><br>--%>
		<%--<form:input path="numberOfProducts" required="required"/>--%>
		<%--<span style="color: red">${numberOfProductsException}</span><br>--%>

		<%--<div class="form-group">--%>
			<%--<input name="image" type="file" class="form-control">--%>
		<%--</div>--%>

		<%--<button>Save Producer</button>--%>
	<%--</form:form>--%>
	</div>

	<div class="row">
		<c:forEach var="producer" items="${producers.content}">
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail">
					<img src="${producer.pathToImage}" alt="" width="200" height="200">
					<div class="caption">
						<h3>${producer.name}</h3>
						<p>${producer.description}</p>
						<p>
							<a href="/deleteProducer/${producer.id}" class="btn btn-danger" role="button">Delete</a>
							<a href="/updateProducer/${producer.id}" class="btn btn-default" role="button">Update</a>
						</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<%--<a href="/ingredient?page=${ingredients.number}&size=${ingredients.size}">previous</a>--%>
	<%--<a href="/ingredient?page=${ingredients.number+ 2}&size=${ingredients.size}">next</a>--%>

	<div style="display: flex; justify-content: center;text-align: center">

		<div class="col-md-12 col-xs-12">
			<div class="row">
				<div class="col-md-2 col-xs-6">
					<div class="dropdown">
						<%--<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Sort <span--%>
								<%--class="caret"></span>--%>
						</button>
						<ul class="dropdown-menu">
							<custom:sort innerHtml="Name asc" paramValue="producerName"/>
							<custom:sort innerHtml="Name desc" paramValue="producerName,desc"/>
						</ul>
					</div>
				</div>
				<div class="col-md-8 col-xs-12 text-center">
					<custom:pageable page="${producers}" cell="<li></li>" container="<ul class='pagination'></ul>"/>
				</div>
				<div class="col-md-2 col-xs-6">
					<custom:size posibleSizes="1,2,5,10" size="${producers.size}"/>
				</div>
			</div>
		</div>
	</div>
	</div>

</body>
</html>