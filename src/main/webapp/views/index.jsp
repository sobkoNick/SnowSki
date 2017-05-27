<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1 style="text-align: center;">Main</h1>
	<div>
	
	<a href="/category">category</a><br>
	<a href="/producer">producer</a><br>
	<a href="/product">product</a><br>
	<a href="/registration">registration</a><br>
	<a href="/order">order</a>

		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 small-header">
					<div class="row">
						<div class="col-xs-0 hidden-xs col-sm-2 col-md-1 col-md-offset-1 lang">
							<div class="row">
								<a href="#"><img src="ukr.png"></a>
								<a href="#"><img src="Russian-flag.png"></a>
								<a href="#"><img src="eng.png"></a>
							</div>
						</div>
						<div class="col-xs-0 hidden-xs col-sm-2 col-md-2 lang">
							<a href="#">ОПЛАТА І ДОСТАВКА</a>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 text-header">
							БЕЗКОШТОВНА ДОСТАВКА ЗАМОВЛЕНЬ ВІД ₴2000
						</div>
						<div class="col-xs-0 hidden-xs col-sm-2 col-md-1 col-md-offset-1 text-header">
							<a href="#">РЕЄСТРАЦІЯ</a>
						</div>
						<div class="col-xs-0 hidden-xs col-sm-2 col-md-1 text-header">
							<a href="#">ВХІД</a>
						</div>
						<div class="col-xs-0 hidden-xs col-sm-2 col-md-1 text-header">КОРЗИНА</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 big-header">
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
									<img src="googlesNORM.png" alt="Flower">
								</a>
							</div>

							<div class="item">
								<a href="#">
									<img src="USST-NFC-marquee-3.jpeg" alt="Flower">
								</a>
							</div>

							<div class="item">
								<a href="#">
									<img src="rossi.png" alt="Flower">
								</a>
							</div>

							<div class="item">
								<a href="#">
									<img src="school.png" alt="Flower"> <!-- 1095 px --->
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


</div>

</body>
</html>