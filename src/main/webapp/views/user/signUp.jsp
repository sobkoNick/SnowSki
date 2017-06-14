<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Log In / Register</title>
    <link rel="stylesheet" href="/css/signUp.css" type="text/css">
</head>
<body>
<%--<form:form modelAttribute="user" method="post">--%>
    <%--<form:input path="login" placeholder="login"/>--%>
    <%--<span style="color: red">${loginException}</span><br>--%>
    <%--<form:input path="email" placeholder="email"/>--%>
    <%--<span style="color: red">${emailException}</span><br>--%>
    <%--<form:input path="password" placeholder="password"/>--%>
    <%--<span style="color: red">${passwordException}</span><br>--%>
    <%--<form:input path="firstName" placeholder="firstName"/>--%>
    <%--<span style="color: red">${emptyFirstNameException}</span><br>--%>
    <%--<form:input path="lastName" placeholder="lastName"/>--%>
    <%--<span style="color: red">${emptyLastNameException}</span><br>--%>
    <%--&lt;%&ndash;<form:input path="language" placeholder="language"/>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<span style="color: red">${emptyFieldException}</span><br>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<form:input path="status" placeholder="status"/><br>&ndash;%&gt;--%>
    <%--<form:input path="telephone" placeholder="telephone"/>--%>
    <%--<span style="color: red">${telephoneException}</span><br>--%>
    <%--&lt;%&ndash;<form:input path="userGroup" placeholder="userGroup"/><br>&ndash;%&gt;--%>
    <%--<button>save</button>--%>

<%--</form:form>--%>


<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>

<div class="container">
    <div class="frame">
        <div class="navSignUp">
            <ul class=links">
            <li.signUp class="signin-active"><a class="btn">Sign in</a></li.signUp>
            <li.signUp class="signup-inactive"><a class="btn">Sign up </a></li.signUp>
            </ul>
        </div>
        <div ng-app ng-init="checked = false">
            <form:form class="form-signin" action="/login" method="post" name="form">
                <label for="username">Username</label>
                <input class="form-styling" type="text" name="username" placeholder=""/>
                <label for="password" >Password</label>
                <input class="form-styling" type="password" name="password" placeholder=""/>
                <%--<input type="checkbox" id="checkbox"/>--%>
                <%--<label for="checkbox" ><span class="ui"></span>Keep me signed in</label>--%>
                <div class="btn-animate">
                <input type="submit" class="btn-signin" value="Login" >
                </div>
                <%--<div class="btn-animate">--%>
                    <%--<a class="btn-signin">Sign in</a>--%>
                <%--</div>--%>
            </form:form>

            <%--<form class="form-signup" action="" method="post" name="form">--%>
            <%--<label for="login">Login</label>--%>
            <%--<input class="form-styling" type="text" name="fullname" placeholder=""/>--%>
            <%--<label for="email">Email</label>--%>
            <%--<input class="form-styling" type="text" name="email" placeholder=""/>--%>
            <%--<label for="password">Password</label>--%>
            <%--<input class="form-styling" type="text" name="password" placeholder=""/>--%>
            <%--<label for="confirmpassword">Confirm password</label>--%>
            <%--<input class="form-styling" type="text" name="confirmpassword" placeholder=""/>--%>
            <%--<a ng-click="checked = !checked" class="btn-signup">Sign Up</a>--%>
            <%--</form>--%>

            <form:form modelAttribute="user" method="post" class="form-signup"  name="form">
                <%--<label for="login">Login</label>--%>
                <form:input class="form-styling" path="name" placeholder="Your login" required="required"/>
                <span style="color: red">${loginException}</span><br>
                <%--<label for="email">Email</label>--%>
                <form:input class="form-styling" path="email" placeholder="@Email" required="required"/>
                <span style="color: red">${emailException}</span><br>
                <%--<label for="password">Password</label>--%>
                <form:input class="form-styling" type="password" path="password" placeholder="Password" required="required"/>
                <span style="color: red">${passwordException}</span><br>
                <%--<label for="firstName">First name</label>--%>
                <form:input class="form-styling" path="firstName" placeholder="FirstName" required="required"/>
                <span style="color: red">${emptyFirstNameException}</span><br>
                <%--<label for="lastName">Last name</label>--%>
                <form:input class="form-styling" path="lastName" placeholder="LastName" required="required"/>
                <span style="color: red">${emptyLastNameException}</span><br>
                <%--<form:input path="language" placeholder="language"/>--%>
                <%--<span style="color: red">${emptyFieldException}</span><br>--%>
                <%--<form:input path="status" placeholder="status"/><br>--%>
                <form:input class="form-styling" path="telephone" placeholder="Telephone number" required="required"/>
                <span style="color: red">${telephoneException}</span><br>
                <%--<form:input path="userGroup" placeholder="userGroup"/><br>--%>
                <%--<input type="button" class="btn-signup" value="Sign Up">--%>
                <button>Sign Up</button>
                <%--<a ng-click="checked = !checked" class="btn-signup">Sign Up</a>--%>
            </form:form>

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

<script src="/js/signUp.js">

</script>
</body>
</html>