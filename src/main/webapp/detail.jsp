<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<!DOCTYPE HTML>
<html>
<head>
    <title>Detail</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Movie, Review, Movie Review, Film, Film Review"/>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- start plugins -->
    <%--<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>--%>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/detail.js"></script>
    <%--<link href='http://fonts.useso.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet'
          type='text/css'>--%>
</head>
<body>
<div class="container">
    <div class="container_wrap">
        <div class="header_top">
            <div class="col-sm-3 logo"><a href="index"><img src="images/logo.png" alt=""/></a></div>
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
                    <li><img src="images/p0.png" alt=""/></li>
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
        <div class="content">
            <div class="movie_top">
                <div class="col-md-9 movie_box">
                    <div class="grid images_3_of_2">
                        <div class="movie_image">

                            <img src="${imgUrl}" class="img-responsive" alt="${title}"/>
                        </div>

                    </div>
                    <div class="desc1 span_3_of_2">
                        <div class="detail-info"><p class="movie_option"><strong>Title: </strong>${title}</p></div>
                        <div class="detail-info"><p class="movie_option"><strong>Year: </strong>${time}</p></div>
                        <div class="detail-info"><p class="movie_option"><strong>imdbID: </strong>${movieId}</p></div>

                        <div class="down_btn detail-info"><a class="btn1"><span> </span>Review</a></div>
                    </div>
                    <div class="clearfix"></div>

                    <%--*************************** form ********************************--%>
                    <%--<form method="post" action="${pageContext.request.contextPath}/user/addReview">--%>


                    <div>
                        <textarea class="comment-textarea" id="comment" name="content"
                                  onfocus="this.value = '';" placeholder="Comment here:"
                                  onblur="if (this.value === ''){this.value = 'Comment here:';}"></textarea>
                        <label for="comment"></label>
                    </div>
                    <div class="form-submit1">
                        <input name="submit" type="submit" id="submit" value="Submit Your Message">
                    </div>
                    <div class="clearfix"><p class="error-alarm"></p></div>
                    <%--</form>--%>

                    <%--*************************** reviews ********************************--%>
                    <div class="single">
                        <h1>Reviews</h1>
                        <ul class="single_list">
                            <li>
                                <div class="preview"></div>

                                <c:forEach var="review" items="${reviews}">
                                    <div class="data">
                                        <div class="title">${review.username} / <fmt:formatDate value="${review.date}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                            <c:if test="${user.type eq true || review.userId eq user.id}">
                                                <a href=#comment>
                                                    <button id="edit-btn" class="review-button-edit" value="${review.id}" >edit</button>
                                                </a>
                                                <button id="delete-btn" class="review-button-delete" value="${review.id}">delete</button>
                                            </c:if>
                                        </div>
                                        <p>${review.content}</p>
                                    </div>
                                </c:forEach>


                                <div class="clearfix"></div>
                            </li>


                        </ul>
                    </div>
                </div>

                <div class="clearfix"></div>
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