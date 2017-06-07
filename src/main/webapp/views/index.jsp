<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Main</title>
	<link rel="stylesheet" href="/css/index.css" type="text/css">
	<%--<script src="/js/index.jsp"></script>--%>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<sec:authorize access="hasRole('ROLE_ADMIN')">
<h1 style="text-align: center;">Main</h1>
	<div>

			<a href="/category">category</a><br>
			<a href="/producer">producer</a><br>
			<a href="/product">product</a><br>
			<a href="/signUp">signUp</a><br>
			<a href="/order">order</a>

	</div>
</sec:authorize>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 small-header">
					<div class="row">
						<div class="col-xs-0 hidden-xs col-sm-2 col-md-1 col-md-offset-1 lang">
							<div class="row">
								<a href="#"><img src="https://github.com/sobkoNick/SnowSki/blob/master/src/main/webapp/img/ukr.png?raw=true"></a>
								<a href="#"><img src="https://github.com/sobkoNick/SnowSki/blob/master/src/main/webapp/img/eng.png?raw=true"></a>
								<a href="#"><img src="https://github.com/sobkoNick/SnowSki/blob/master/src/main/webapp/img/Russian-flag.png?raw=true"></a>
							</div>
						</div>
						<div class="col-xs-0 hidden-xs col-sm-2 col-md-2 lang">
							<a href="#">ОПЛАТА І ДОСТАВКА</a>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 text-header">
							БЕЗКОШТОВНА ДОСТАВКА ЗАМОВЛЕНЬ ВІД ₴2000
						</div>
						<div class="col-xs-0 hidden-xs col-sm-2 col-md-1 col-md-offset-1 text-header">
							<sec:authorize access="!isAuthenticated()">
							<a href="/signUp">РЕЄСТРАЦІЯ</a>
						</sec:authorize>
							<sec:authorize access="isAuthenticated()">
									<a href="#">
										<sec:authentication property="name"/>
									</a>
								<form:form action="/logout" method="post">
									<button>Log Out</button>
								</form:form>
							</sec:authorize>
						</div>
						<div class="col-xs-0 hidden-xs col-sm-2 col-md-1 text-header">
							<sec:authorize access="!isAuthenticated()">
							<a href="#">ВХІД</a>
							</sec:authorize>
						</div>
						<div class="col-xs-0 hidden-xs col-sm-2 col-md-1 text-header">КОРЗИНА</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 big-header" >
					<div class="row">
						<div class="col-xs-3 col-sm-3 col-md-2 col-md-offset-1 ski-header-img"></div>
						<div class="col-xs-1 col-sm-1 col-md-1">
							<div class="dropdown">
								<button class="dropbtn">ЛИЖІ</button>
								<div class="dropdown-content">
									<a href="#">FISHER</a>
									<a href="#">SOLOMON</a>
									<a href="#">ROSSIGNOL</a>
									<a href="#">HEAD</a>
									<a href="#">Унісекс</a>
									<a href="#">Чоловічі</a>
									<a href="#">Жіночі</a>
									<a href="#">Дитячі</a>
								</div>
							</div>
						</div>
						<div class="col-xs-1 col-sm-1 col-md-1">
							<div class="dropdown">
								<button class="dropbtn">СНОУБОРД</button>
								<div class="dropdown-content">
									<a href="#">CAPITA</a>
									<a href="#">DC</a>
									<a href="#">Never Summer</a>
									<a href="#">SMOKIN</a>
									<a href="#">Унісекс</a>
									<a href="#">Чоловічий</a>
									<a href="#">Жіночий</a>
									<a href="#">Дитячий</a>
								</div>
							</div>
						</div>

						<div class="col-xs-1 col-sm-1 col-md-1">
							<div class="dropdown">
								<button class="dropbtn">ОДЯГ</button>
								<div class="dropdown-content">
									<a href="#">Унісекс</a>
									<a href="#">Чоловічий</a>
									<a href="#">Жіночий</a>
									<a href="#">Для дітей</a>
									<a href="#">PARALLEL</a>
									<a href="#">THE NORTH FACE</a>
									<a href="#">COLUMBIA</a>
									<a href="#">SPYDER LEADER</a>
								</div>
							</div>
						</div>
						<div class="col-xs-1 col-sm-1 col-md-1">
							<div class="dropdown">
								<button class="dropbtn">АКСЕСУАРИ</button>
								<div class="dropdown-content">
									<a href="#">Маски</a>
									<a href="#">Шоломи</a>
									<a href="#">Балаклави</a>
									<a href="#">Рукавиці</a>
									<a href="#">Відео камери</a>
									<a href="#">ROSSIGNOL</a>
									<a href="#">HEAD</a>
								</div>
							</div>
						</div>
						<div class="hidden-xs col-sm-1 col-md-1">
							<div class="dropdown">
								<button class="dropbtn">БЛОГ</button>
							</div>
						</div>

						<div class="hidden-xs col-sm-3 col-md-3">
							<form action="" class="search-form">
								<div class="form-group has-feedback">
									<label for="search" class="sr-only">Search</label>
									<input type="text" class="form-control" name="search" id="search" placeholder="search">
									<span class="glyphicon glyphicon-search form-control-feedback"></span>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 big-carousel">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<a href="#">
									<img src="https://scontent-fra3-1.xx.fbcdn.net/v/t31.0-8/18738626_1587330867945059_2948198496497785979_o.jpg?oh=3e616d7d14466e0a55b0484e3221b99b&oe=59B61767" alt="Flower">
								</a>
							</div>

							<div class="item">
								<a href="#">
									<img src="https://scontent-fra3-1.xx.fbcdn.net/v/t31.0-8/18699742_1587331424611670_9069118261643631987_o.jpg?oh=74f52a129fe907807ac336919f571998&oe=59E6E2E5" alt="Flower">
								</a>
							</div>

							<div class="item">
								<a href="#">
									<img src="https://scontent-ams3-1.xx.fbcdn.net/v/t31.0-8/18738467_1587331364611676_4401101162099344350_o.jpg?oh=de08e3488656a1da148d12dfcac5eebb&oe=59A2FD5D" alt="Flower">
								</a>
							</div>

							<div class="item">
								<a href="#">
									<img src="https://scontent-fra3-1.xx.fbcdn.net/v/t31.0-8/18814483_1587331474611665_3514274231234335529_o.jpg?oh=27f0c0de121c86b744deb3385ad326fa&oe=59AC25ED" alt="Flower">
								</a>
							</div>
						</div>

						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 element-container">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6 element-container-left">
							<div class="text-and-button">
								<h1> FOR WOMEN</h1>
								<a href="#" class="btn-primary">
									SHOP WOMEN'S
								</a>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6 element-container-right">
							<div class="text-and-button-right">
								<h1>FOR MEN</h1>
								<a href="#" class="btn-primary">
									SHOP MEN'S
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1 big-banner">
					<div class="text-and-button-large-banner">
						<h1> ONLY COLUMBIA</h1>
						<a href="#" class="btn-primary">
							FIND BEST WEAR
						</a>
					</div>
				</div>
			</div>
			<div class="row triple-menu">
				<div class="col-sm-3 col-sm-offset-1 left-menu">
				</div>
				<div class="col-sm-4 center-menu">
					<div class="text-and-button-center-banner">
						<!--                        <h1>SALE</h1>-->
						<a href="#" class="btn-primary">
							SHOW DISCOUNTS
						</a>
					</div>
				</div>
				<div class="col-sm-3 right-menu">
				</div>
			</div>
		</div>>


</body>
</html>