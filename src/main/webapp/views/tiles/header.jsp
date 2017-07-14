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
                    <li role="presentation"><a href="/users">Users</a></li>
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
                        <a href="/info"><springLocal:message code="label.buy_adn_delivery"/></a>
                    </div>
                    <div class="col-xs-8 col-sm-4 col-md-4 text-header">
                        <springLocal:message code="label.free_delivery"/>
                    </div>
                    <div class="col-xs-4 col-sm-2 col-md-1 text-header">
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
                    <div class="col-xs-4 col-sm-3 col-md-2 col-md-offset-1 ski-header-img ">
                        <a href="/" title="Snow Ski Store"></a>
                    </div>
                    <div class="col-xs-4 col-sm-1 col-md-1">
                        <div class="dropdown">
                            <button class="dropbtn">
                                <a href="/">
                                    <springLocal:message code="label.main"/>
                                </a>
                            </button>
                        </div>
                    </div>
                    <div class="col-xs-1 hidden-xs col-sm-1 col-md-1">
                        <div class="dropdown">
                            <button class="dropbtn"><springLocal:message code="label.ski"/><a href="/productByCategory/9"></a></button>
                            <div class="dropdown-content">
                                <a href="/productByProd/1">FISHER</a>
                                <a href="/productByProd/3">SOLOMON</a>
                                <a href="/productByProd/4">ROSSIGNOL</a>
                                <a href="/productByProd/2">HEAD</a>
                                <a href="/productByProd/5">Volkl</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-1 hidden-xs col-sm-1 col-md-1">
                        <div class="dropdown">
                            <button class="dropbtn"><springLocal:message code="label.snowboard"/><a href="/productByCategory/10"></a></button>
                            <div class="dropdown-content">
                                <a href="/productByProd/8">CAPITA</a>
                                <a href="/productByProd/9">Never Summer</a>
                                <a href="/productByProd/10">SMOKIN</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-1 hidden-xs col-sm-1 col-md-1">
                        <div class="dropdown">
                            <button class="dropbtn"><springLocal:message code="label.close"/><a href="/productByCategory/45"></a></button>
                            <div class="dropdown-content">
                                <a href="/productByProd/11">PARALLEL</a>
                                <a href="/productByProd/12">THE NORTH FACE</a>
                                <a href="/productByProd/7">COLUMBIA</a>
                                <a href="/productByProd/13">SPYDER LEADER</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-1 hidden-xs col-sm-1 col-md-1">
                        <div class="dropdown">
                            <button class="dropbtn"><springLocal:message code="label.accessories"/></button>
                            <div class="dropdown-content">
                                <a href="/productByCategory/12">Маски</a>
                                <a href="/productByCategory/44">Шоломи</a>
                                <a href="/productByCategory/51">Балаклави</a>
                                <a href="/productByCategory/50">Рукавиці</a>
                                <a href="/productByCategory/52">Відео камери</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-4 col-sm-1 col-md-1">
                        <div class="dropdown">
                            <button class="dropbtn">
                                <a href="/allproducts">
                                    <springLocal:message code="label.allProducts"/>
                                </a>
                            </button>
                        </div>
                    </div>

                    <div class="hidden-xs col-sm-2 col-md-2">
                        <%--<form:form action="/search" class="search-form" method="post">--%>
                            <%--<div class="form-group has-feedback">--%>
                                <%--<label for="search" class="sr-only">Search</label>--%>
                                <%--<form:input type="text" class="form-control" path="text" name="text" id="search" placeholder="search"></form:input>--%>
                                <%--<span class="glyphicon glyphicon-search form-control-feedback"></span>--%>
                            <%--</div>--%>
                            <%--<button>Search</button>--%>
                        <%--</form:form>--%>
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
