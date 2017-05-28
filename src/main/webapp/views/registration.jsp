<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Log In / Register</title>
    <link rel="stylesheet" href="/css/registration.css" type="text/css">
    <script src="/js/registration.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
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
</div>



<form:form modelAttribute="user" method="post">
    <form:input path="login" placeholder="login"/>
    <form:input path="email" placeholder="email"/>
    <form:input path="password" placeholder="password"/>
    <form:input path="firstName" placeholder="firstName"/>
    <form:input path="lastName" placeholder="lastName"/>
    <form:input path="language" placeholder="language"/>
    <form:input path="status" placeholder="status"/>
    <form:input path="telephone" placeholder="telephone"/>
    <form:input path="userGroup" placeholder="userGroup"/>
        <button>save</button>

</form:form>


<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>

<div class="container">
    <div class="frame">
        <div class="nav">
            <ul class"links">
            <li class="signin-active"><a class="btn">Sign in</a></li>
            <li class="signup-inactive"><a class="btn">Sign up </a></li>
            </ul>
        </div>
        <div ng-app ng-init="checked = false">
            <form class="form-signin" action="" method="post" name="form">
                <label for="username">Username</label>
                <input class="form-styling" type="text" name="username" placeholder=""/>
                <label for="password">Password</label>
                <input class="form-styling" type="text" name="password" placeholder=""/>
                <input type="checkbox" id="checkbox"/>
                <label for="checkbox" ><span class="ui"></span>Keep me signed in</label>
                <div class="btn-animate">
                    <a class="btn-signin">Sign in</a>
                </div>
            </form>

            <form class="form-signup" action="" method="post" name="form">
                <label for="fullname">Full name</label>
                <input class="form-styling" type="text" name="fullname" placeholder=""/>
                <label for="email">Email</label>
                <input class="form-styling" type="text" name="email" placeholder=""/>
                <label for="password">Password</label>
                <input class="form-styling" type="text" name="password" placeholder=""/>
                <label for="confirmpassword">Confirm password</label>
                <input class="form-styling" type="text" name="confirmpassword" placeholder=""/>
                <a ng-click="checked = !checked" class="btn-signup">Sign Up</a>
            </form>

            <div  class="success">
                <svg width="270" height="270" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     viewBox="0 0 60 60" id="check" ng-class="checked ? 'checked' : ''">
                </svg>
                    <path fill="#ffffff" d="M40.61,23.03L26.67,36.97L13.495,23.788c-1.146-1.147-1.359-2.936-0.504-4.314
                  c3.894-6.28,11.169-10.243,19.283-9.348c9.258,1.021,16.694,8.542,17.622,17.81c1.232,12.295-8.683,22.607-20.849,22.042
                  c-9.9-0.46-18.128-8.344-18.972-18.218c-0.292-3.416,0.276-6.673,1.51-9.578" />
                    <div class="successtext">
                        <p> Thanks for signing up! Check your email for confirmation.</p>
                    </div>
            </div>
        </div>

        <div class="forgot">
            <a href="#">Forgot your password?</a>
        </div>

        <div>
            <div class="cover-photo"></div>
            <div class="profile-photo"></div>
            <h1 class="welcome">Welcome, Chris</h1>
            <a class="btn-goback" value="Refresh" onClick="history.go()">Go back</a>
        </div>
    </div>

    <a id="refresh" value="Refresh" onClick="history.go()">
        <svg class="refreshicon"   version="1.1" id="Capa_1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
             width="25px" height="25px" viewBox="0 0 322.447 322.447" style="enable-background:new 0 0 322.447 322.447;"
             xml:space="preserve">
         <path  d="M321.832,230.327c-2.133-6.565-9.184-10.154-15.75-8.025l-16.254,5.281C299.785,206.991,305,184.347,305,161.224
                c0-84.089-68.41-152.5-152.5-152.5C68.411,8.724,0,77.135,0,161.224s68.411,152.5,152.5,152.5c6.903,0,12.5-5.597,12.5-12.5
                c0-6.902-5.597-12.5-12.5-12.5c-70.304,0-127.5-57.195-127.5-127.5c0-70.304,57.196-127.5,127.5-127.5
                c70.305,0,127.5,57.196,127.5,127.5c0,19.372-4.371,38.337-12.723,55.568l-5.553-17.096c-2.133-6.564-9.186-10.156-15.75-8.025
                c-6.566,2.134-10.16,9.186-8.027,15.751l14.74,45.368c1.715,5.283,6.615,8.642,11.885,8.642c1.279,0,2.582-0.198,3.865-0.614
                l45.369-14.738C320.371,243.946,323.965,236.895,321.832,230.327z"/>
    </svg>
    </a>
</div>


</body>
</html>