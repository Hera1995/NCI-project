<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Movie, Review, Movie Review, Film, Film Review"/>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <%--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
    <script src="js/responsiveslides.min.js"></script>
    <script src="js/index.js"></script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- start plugins -->
    <%--<link href='http://fonts.useso.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet'
          type='text/css'>--%>

</head>
<body>
<div class="container">
    <div class="container_wrap">
        <%@ include file="index-header.jsp" %>

        <div class="content">
            <div class="box_1">
                <h1 class="m_2">TOP</h1>
                <div class="search">
                    <%--<form>--%>
                    <input id="movie-name" type="text" placeholder="Search..." <%--onFocus="this.value='';"--%>
                    <%--onBlur="if (this.value == '') {this.value ='';}"--%> />
                    <button id="movie-search" type="submit" value=""></button>
                    <%--</form>--%>
                </div>
                <div class="clearfix"></div>
                <div class="copyrights">Collect from <a href="http://www.cssmoban.com/">MovieReview</a></div>
            </div>

            <div id="movie-list-container">
                <!-- reviews div 1***************************************************************	-->

                <div class="center">
                    <!-- put 3 pictures in another div to style pictures -->
                    <div class="top3">
                        <div class="box">
                            <a href="${pageContext.request.contextPath}/detail?movieId=tt6878306&title=News of the World&time=2020&imgUrl=https://m.media-amazon.com/images/M/MV5BMDNlNmVlNDItMjE3Yi00ZTA3LWIyOTktNDhhMGFlZjk5ZDQ0XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg">
                                <img src="https://m.media-amazon.com/images/M/MV5BMDNlNmVlNDItMjE3Yi00ZTA3LWIyOTktNDhhMGFlZjk5ZDQ0XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg" alt="News of the World"></a>
                            <!-- put every picture and an "Review" button in a span to make these 2 elements vertical -->
                            <div class="vertical">
                                <p class="bookname"><b>News of the World</b></p>
                                <p class="price"><b>2020</b></p>
                                <a href="${pageContext.request.contextPath}/detail?movieId=tt6878306&title=News of the World&time=2020&imgUrl=https://m.media-amazon.com/images/M/MV5BMDNlNmVlNDItMjE3Yi00ZTA3LWIyOTktNDhhMGFlZjk5ZDQ0XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg">
                                <button type="button" class="addtobasket" >Review</button></a>

                            </div>
                        </div>
                        <div class="box">
                                <a href="${pageContext.request.contextPath}/detail?movieId=tt0244970&title=Someone Like You&time=2001&imgUrl=https://m.media-amazon.com/images/M/MV5BOWE0NzI4YjUtY2NhNy00NWQ2LThiZTUtMDJjYWY5YTEzYTFiXkEyXkFqcGdeQXVyMTUzMDUzNTI3._V1_SX300.jpg">
                                    <img src="https://m.media-amazon.com/images/M/MV5BOWE0NzI4YjUtY2NhNy00NWQ2LThiZTUtMDJjYWY5YTEzYTFiXkEyXkFqcGdeQXVyMTUzMDUzNTI3._V1_SX300.jpg" alt="Someone Like You"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Someone Like You</b></p>
                                <p class="price"><b>2001</b></p>
                                <a href="${pageContext.request.contextPath}/detail?movieId=tt0244970&title=Someone Like You&time=2001&imgUrl=https://m.media-amazon.com/images/M/MV5BOWE0NzI4YjUtY2NhNy00NWQ2LThiZTUtMDJjYWY5YTEzYTFiXkEyXkFqcGdeQXVyMTUzMDUzNTI3._V1_SX300.jpg">
                                    <button type="button" class="addtobasket">Review</button></a>

                            </div>
                        </div>
                        <div class="box">
                            <a href="${pageContext.request.contextPath}/detail?movieId=tt9418812&title=Hello World&time=2019&imgUrl=https://m.media-amazon.com/images/M/MV5BOGIwYjZlOTctZTNhOC00OTdiLWI5ZWItOTdiMWRjMjUwMDlhXkEyXkFqcGdeQXVyNDQxNjcxNQ@@._V1_SX300.jpg">
                                <img src="https://m.media-amazon.com/images/M/MV5BOGIwYjZlOTctZTNhOC00OTdiLWI5ZWItOTdiMWRjMjUwMDlhXkEyXkFqcGdeQXVyNDQxNjcxNQ@@._V1_SX300.jpg" alt="Hello World"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Hello World</b></p>
                                <p class="price"><b>2019</b></p>
                                <a href="${pageContext.request.contextPath}/detail?movieId=tt9418812&title=Hello World&time=2019&imgUrl=https://m.media-amazon.com/images/M/MV5BOGIwYjZlOTctZTNhOC00OTdiLWI5ZWItOTdiMWRjMjUwMDlhXkEyXkFqcGdeQXVyNDQxNjcxNQ@@._V1_SX300.jpg">
                                    <button type="button" class="addtobasket" >Review</button></a>

                            </div>
                        </div>
                        <div class="box">
                            <a href="${pageContext.request.contextPath}/detail?movieId=tt2382320&title=No Time to Die&time=2021&imgUrl=https://m.media-amazon.com/images/M/MV5BYWQ2NzQ1NjktMzNkNS00MGY1LTgwMmMtYTllYTI5YzNmMmE0XkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_SX300.jpg">
                                <img src="https://m.media-amazon.com/images/M/MV5BYWQ2NzQ1NjktMzNkNS00MGY1LTgwMmMtYTllYTI5YzNmMmE0XkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_SX300.jpg" alt="No Time to Die"></a>
                            <div class="vertical">
                                <p class="bookname"><b>No Time to Die</b></p>
                                <p class="price"><b>2021</b></p>
                                <a href="${pageContext.request.contextPath}/detail?movieId=tt2382320&title=No Time to Die&time=2021&imgUrl=https://m.media-amazon.com/images/M/MV5BYWQ2NzQ1NjktMzNkNS00MGY1LTgwMmMtYTllYTI5YzNmMmE0XkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_SX300.jpg">
                                    <button type="button" class="addtobasket">Review</button></a>

                            </div>
                        </div>
                        <div class="box">
                            <a href="${pageContext.request.contextPath}/detail?movieId=tt10311932&title=Someone Has to Die&time=2020&imgUrl=https://m.media-amazon.com/images/M/MV5BYjUyYzZhZGUtMjVlOC00YjRkLWFjYTctNWFlZTgwOTE3YjliXkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_SX300.jpg">
                                <img src="https://m.media-amazon.com/images/M/MV5BYjUyYzZhZGUtMjVlOC00YjRkLWFjYTctNWFlZTgwOTE3YjliXkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_SX300.jpg" alt="Someone Has to Die"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Someone Has to Die</b></p>
                                <p class="price"><b>2020</b></p>
                                <a href="${pageContext.request.contextPath}/detail?movieId=tt10311932&title=Someone Has to Die&time=2020&imgUrl=https://m.media-amazon.com/images/M/MV5BYjUyYzZhZGUtMjVlOC00YjRkLWFjYTctNWFlZTgwOTE3YjliXkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_SX300.jpg">
                                    <button type="button" class="addtobasket">Review</button></a>

                            </div>
                        </div>
                        <div class="box">
                            <a href="${pageContext.request.contextPath}/detail?movieId=tt1175709&title=All Good Things&time=2010&imgUrl=https://m.media-amazon.com/images/M/MV5BMTcwMjIyMTc2Nl5BMl5BanBnXkFtZTcwOTQyMzc5Mw@@._V1_SX300.jpg">
                                <img src="https://m.media-amazon.com/images/M/MV5BMTcwMjIyMTc2Nl5BMl5BanBnXkFtZTcwOTQyMzc5Mw@@._V1_SX300.jpg" alt="All Good Things"></a>
                            <div class="vertical">
                                <p class="bookname"><b>All Good Things</b></p>
                                <p class="price"><b>2010</b></p>
                                <a href="${pageContext.request.contextPath}/detail?movieId=tt1175709&title=All Good Things&time=2010&imgUrl=https://m.media-amazon.com/images/M/MV5BMTcwMjIyMTc2Nl5BMl5BanBnXkFtZTcwOTQyMzc5Mw@@._V1_SX300.jpg">
                                    <button type="button" class="addtobasket">Review</button></a>

                            </div>
                        </div>


                    </div>
                </div>



                <!--pages***************************************************************	-->
                <!--
                <div class="pagination">
                    <button class="prev-btn">Previous</button>
                    <span class="page-numbers"></span>
                    <button class="next-btn">Next</button>
                </div>
                -->

            </div><!--box2-->

            <!-- AI review***************************************************************	-->

            <div><!--box3-->
                <div class="review-item">

                    <div class="ai-inquiry">
                        <h2>Unlock endless insights with our AI reviewer. Need more info? Just ask!</h2>
                        <div class="ai-chat-container">
                            <div class="ai-chat">
                                <p id="ai-answer"></p>
                            </div>
                            <input id="ai-qestion" type="text" class="user-input"
                                   placeholder="Type your question here..."/>
                            <button id="ai-btn" class="send-btn">Send</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!--***************************************************************	-->

    </div>
</div>

<%@ include file="index-footer.jsp" %>

</body>
</html>