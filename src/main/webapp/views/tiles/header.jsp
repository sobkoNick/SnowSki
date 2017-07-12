<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="springLocal" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<header role="banner">
    <div class="container-fluid">
        <sec:authorize access="hasRole('ROLE_ADMIN')">
        <div class="row admin-nav">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <h1 class="admin-text" style="text-align: center;"><springLocal:message code="label.admin_options"/></h1>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-4">
                <ul class="nav nav-pills">
                    <li role="presentation"><a href="/category">Category</a></li>
                    <li role="presentation"><a href="/producer">Producer</a></li>
                    <li role="presentation"><a href="/product">Product</a></li>
                    <li role="presentation"><a href="/signUp">SignUp</a></li>
                    <li role="presentation"><a href="/order">Order</a></li>
                </ul>
            </div>

        </div>
        </sec:authorize>

        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 small-header">
                <div class="row">
                    <div class="col-xs-0 hidden-xs col-sm-2 col-md-1 col-md-offset-1 lang">
                        <div class="row">
                            <a href="?lang=ua"><img src="https://github.com/sobkoNick/SnowSki/blob/master/src/main/webapp/img/ukr.png?raw=true"></a>
                            <a href="?lang=en"><img src="https://github.com/sobkoNick/SnowSki/blob/master/src/main/webapp/img/eng.png?raw=true"></a>
                            <a href="?lang=ru"><img src="https://github.com/sobkoNick/SnowSki/blob/master/src/main/webapp/img/Russian-flag.png?raw=true"></a>
                        </div>
                    </div>
                    <div class="col-xs-0 hidden-xs col-sm-2 col-md-2 lang">
                        <a href="#"><springLocal:message code="label.buy_adn_delivery"/></a>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 text-header">
                        <springLocal:message code="label.free_delivery"/>
                    </div>
                    <div class="col-xs-0 hidden-xs col-sm-2 col-md-1 text-header">
                        <sec:authorize access="isAuthenticated()">
                            <sec:authorize access="!hasRole('ROLE_ADMIN')">
                                <a href="/profile">
                                    PROFILE
                                </a>
                            </sec:authorize>
                        </sec:authorize>
                        <sec:authorize access="!isAuthenticated()">
                            <a href="/signUp"><springLocal:message code="label.sign_up"/></a>
                        </sec:authorize>
                    </div>
                    <div class="col-xs-0 hidden-xs col-sm-2 col-md-1 text-header">
                        <sec:authorize access="!isAuthenticated()">
                        <a href="/signUp"><springLocal:message code="label.sign_in"/></a>
                    </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <form:form action="/logout" method="post">
                                <button>Log Out</button>
                            </form:form>
                        </sec:authorize>
                    </div>
                    <div class="col-xs-0 hidden-xs col-sm-2 col-md-1 col-md-offset-1 text-header">
                        <springLocal:message code="label.basket"/>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 big-header" >
                <div class="row">
                    <div class="col-xs-3 col-sm-3 col-md-2 col-md-offset-1 ski-header-img ">
                        <a href="/" title="Snow Ski Store"></a>
                    </div>
                    <div class="col-xs-1 col-sm-1 col-md-1">
                        <div class="dropdown">
                            <button class="dropbtn"><springLocal:message code="label.ski"/></button>
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
                            <button class="dropbtn"><springLocal:message code="label.snowboard"/></button>
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
                            <button class="dropbtn"><springLocal:message code="label.close"/></button>
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
                            <button class="dropbtn"><springLocal:message code="label.accessories"/></button>
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
                            <button class="dropbtn">
                                <a href="/allproducts">
                                    <springLocal:message code="label.allProducts"/>
                                </a>
                            </button>
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
    </div>
</header>

</body>
</html>
<script>
</script>
