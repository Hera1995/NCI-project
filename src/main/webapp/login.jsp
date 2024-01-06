
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Movie, Review, Movie Review, Film, Film Review" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- start plugins -->
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <link href='http://fonts.useso.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="container">
    <div class="container_wrap">
        <div class="header_top">
            <div class="col-sm-3 logo"><a href="index"><img src="images/logo.png" alt=""/></a></div>
            <div class="col-sm-6 nav">
                <ul>
                    <li> <span class="simptip-position-bottom simptip-movable" data-tooltip="Comedy"><a href="#"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Documentary"><a href="#"> </a> </span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Action"><a href="#"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Adventure"><a href="#"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="TV show"><a href="#"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="share"><a href="#"> </a></span></li>
                </ul>
            </div>
            <div class="col-sm-3 header_right">
                <ul class="header_right_box">
                    <li><img src="images/p0.png" alt=""/></li>
                    <li><p><a href="loginPage">Log in</a></p></li>
                    <li class="last"><i class="edit"> </i></li>
                    <div class="clearfix"> </div>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="content">
            <div class="register">
                <div class="col-md-6 login-left">
                    <h3>New Customers</h3>
                    <p>By creating an account with us, you'll effortlessly save your browsing history and conveniently respond to messages.</p>
                    <a class="acount-btn" href="registerPage">Create an Account</a>
                </div>
                <div class="col-md-6 login-right">
                    <h3>Registered Customers</h3>
                    <p>If you have an account with us, please log in.</p>
                    <p class="error-alarm">${param.msg}</p>
                    <form action="${pageContext.request.contextPath}/user/login" method="post">
                        <div>
                            <span>Email Address<label>*</label></span>
                            <input type="email" name="email" required="required">
                        </div>
                        <div>
                            <span>Password<label>*</label></span>
                            <input type="password" name="password" required="required" maxlength="8" minlength="8">
                        </div>
                        <a class="forgot" href="#">Forgot Your Password?</a>
                        <input type="submit" value="Login">
                    </form>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <footer id="footer">
        <div id="footer-3d">
            <div class="gp-container">
                <span class="first-widget-bend"> </span>
            </div>
        </div>
        <div id="footer-widgets" class="gp-footer-larger-first-col">
            <div class="gp-container">
                <div class="footer-widget footer-1">
                    <div class="wpb_wrapper">
                        <img src="images/f_logo.png" alt=""/>
                    </div>
                    <br>
                    <p>Unleash the power of opinions! </p>
                    <p class="text">Dive into insightful critiques, passionate discussions, celebrate the art of storytelling, and discover your next favorite film among a community of avid movie enthusiasts.</p>
                </div>
                <div class="footer_box">
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>Categories</h3>
                        <ul class="first">
                            <li><a href="#">Comedy</a></li>
                            <li><a href="#">Documentary</a></li>
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Adventure</a></li>
                            <li><a href="#">TV show</a></li>
                        </ul>
                    </div>
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>Information</h3>
                        <ul class="first">
                            <li><a href="#">New products</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Policy</a></li>
                        </ul>
                    </div>
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>Follow Us</h3>
                        <ul class="first">
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Twitter</a></li>
                            <li><a href="#">Youtube</a></li>
                        </ul>
                        <div class="copy">
                            <p>Copyright &copy; 2023.Movie Review All rights reserved. </p>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </footer>
</div>
</body>
</html>