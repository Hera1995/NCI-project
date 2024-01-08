<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Movie, Review, Movie Review, Film, Film Review"/>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>User Management Table</title>
</head>
<body>
<div class="container">
    <div class="container_wrap">

<%--**************************************** header **********************************************--%>
        <div class="header_top">
            <div class="col-sm-3 logo"><a href="/index"><img src="${pageContext.request.contextPath}/images/logo.png" alt="logo"/></a></div>
            <div class="col-sm-6 nav">
                <ul>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Comedy"><a
                            href="#"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Documentary"><a
                            href="#"> </a> </span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Action"><a
                            href="#"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Adventure"><a
                            href="#"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="TV show"><a
                            href="#"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="share"><a
                            href="#"> </a></span></li>
                </ul>
            </div>
            <div class="col-sm-3 header_right">
                <ul class="header_right_box">
                    <li><img src="${pageContext.request.contextPath}/images/p0.png" alt=""/></li>
                    <li>
                        <c:choose>
                            <c:when test="${empty user}">
                                <p><a href="loginPage">Log in</a></p>
                            </c:when>
                            <c:otherwise>
                                <p>${user.firstName} ${user.lastName}</p>
                            </c:otherwise>
                        </c:choose>
                    </li>
                    <li class="last"><i class="edit"> </i></li>
                    <div class="clearfix"></div>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
<%--**************************************** middle **********************************************--%>
        <div class="content">
            <h1 class="user-management-title">User Management Table</h1>

            <table class="user-management">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Email</th>
                    <th>FirstName</th>
                    <th>LastName</th>
                    <th>Password</th>
                    <th>Type</th>
                    <th>Operation</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.users}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.email}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.password}</td>
                        <td>${user.type?'admin':'user'}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/admin/deleteUser?id=${user.id}"><button>Delete</button></a>
                            <a href="${pageContext.request.contextPath}/admin/changeUserType?id=${user.id}"><button>Set as Admin/User</button></a>

                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%--**************************************** footer **********************************************--%>
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
                        <img src="${pageContext.request.contextPath}/images/f_logo.png" alt=""/>
                    </div>
                    <br>
                    <p>Unleash the power of opinions! </p>
                    <p class="text">Dive into insightful critiques, passionate discussions, celebrate the art of
                        storytelling, and discover your next favorite film among a community of avid movie
                        enthusiasts.</p>
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
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </footer>
</div>
</body>
</html>