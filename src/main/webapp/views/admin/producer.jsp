<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Producer</title>
</head>
<body>
	<div>
		<%--<form action="/producer" method="post">--%>
		<%--<input name="name" type="text" placeholder="name"><br>--%>
		<%--<input name="description" type="text" placeholder="description"><br>--%>
		<%--<input name="numberOfProducts" type="text" placeholder="numberOfProducts"><br>--%>
		<%----%>
		<%--<button>save producer</button>--%>
		<%--</form>--%>

			<form:form cssStyle="width: 50%; padding-left: 20px;" modelAttribute="producer" action="/producer?${_csrf.parameterName}=${_csrf.token}"
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
					<p class="help-block">X*X logos</p>
				</div>
				<button type="submit" class="btn btn-default">Add</button>
				<%--<button>Save Producer</button>--%>
			</form:form>


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
	<div>
	<ol>
		<c:forEach var="producer" items="${producers}">
		<li>${producer.name} ${producer.description} ${producer.numberOfProducts}
			<img src="${producer.pathToImage}" alt="" width="200" height="200">
		<a href="/deleteProducer/${producer.id}">delete</a> <br></li>
		</c:forEach>
	</div>
	</ol>
</body>
</html>