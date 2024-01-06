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
    <link href='http://fonts.useso.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet'
          type='text/css'>

</head>
<body>
<div class="container">
    <div class="container_wrap">
        <%@ include file="index-header.jsp" %>

        <div class="content">
            <div class="box_1">
                <h1 class="m_2">Classics</h1>
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
                            <!-- put every picture and an "Review" button in a span to make these 2 elements vertical -->
                            <div>
                                <a href="${pageContext.request.contextPath}/detail?movieId=tt0244970&title=Someone Like You&time=2001&imgUrl=https://m.media-amazon.com/images/M/MV5BOWE0NzI4YjUtY2NhNy00NWQ2LThiZTUtMDJjYWY5YTEzYTFiXkEyXkFqcGdeQXVyMTUzMDUzNTI3._V1_SX300.jpg">
                                    <img src="https://m.media-amazon.com/images/M/MV5BOWE0NzI4YjUtY2NhNy00NWQ2LThiZTUtMDJjYWY5YTEzYTFiXkEyXkFqcGdeQXVyMTUzMDUzNTI3._V1_SX300.jpg" alt="Mindful"></a></div>
                            <div class="vertical">
                                <p class="bookname"><b>Title</b></p>
                                <p class="price"><b>Year</b></p>
                                <a href="detail.jsp">
                                    <button type="button" class="addtobasket">Review</button>
                                </a>
                            </div>
                        </div>
                        <div class="box">
                            <a href="detail.jsp"> <img src="../images/book3.jpg" alt="Ttile"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Title</b></p>
                                <p class="price"><b>Year</b></p>
                                <a href="detail.jsp">
                                    <button type="button" class="addtobasket">Review</button>
                                </a>
                            </div>
                        </div>
                        <div class="box">
                            <a href="detail.jsp"> <img src="../images/book4.jpg" alt="Eugene"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Title</b></p>
                                <p class="price"><b>Year</b></p>
                                <a href="detail.jsp">
                                    <button type="button" class="addtobasket">Review</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- reviews div 2***************************************************************	-->

                <div class="center">

                    <!-- put 3 pictures in another div to style pictures -->
                    <div class="top3">
                        <div class="box">
                            <!-- put every picture and an "Review" button in a span to make these 2 elements vertical -->
                            <a href="#"> <img src="../images/book2.jpg" alt="Mindful"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Ttile</b></p>
                                <p class="price"><b>€Year</b></p>
                                <button type="button" class="addtobasket" onclick="itemAdded()">Review</button>
                            </div>
                        </div>
                        <div class="box">
                            <a href="#"> <img src="../images/book3.jpg" alt="Ttile"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Ttile</b></p>
                                <p class="price"><b>€Year</b></p>
                                <button type="button" class="addtobasket" onclick="itemAdded()">Review</button>
                            </div>
                        </div>
                        <div class="box">
                            <a href="#"> <img src="../images/book4.jpg" alt="Eugene"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Ttile</b></p>
                                <p class="price"><b>€Year</b></p>
                                <button type="button" class="addtobasket" onclick="itemAdded()">Review</button>
                            </div>
                        </div>
                    </div>
                </div>

                <%--<!-- reviews div 3***************************************************************	-->

                <div class="center">

                    <!-- put 3 pictures in another div to style pictures -->
                    <div class="top3">
                        <div class="box">
                            <!-- put every picture and an "Review" button in a span to make these 2 elements vertical -->
                            <a href="#"> <img src="../images/book2.jpg" alt="Mindful"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Ttile</b></p>
                                <p class="price"><b>€Year</b></p>
                                <button type="button" class="addtobasket" onclick="itemAdded()">Review</button>
                            </div>
                        </div>
                        <div class="box">
                            <a href="#"> <img src="../images/book3.jpg" alt="Ttile"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Ttile</b></p>
                                <p class="price"><b>€Year</b></p>
                                <button type="button" class="addtobasket" onclick="itemAdded()">Review</button>
                            </div>
                        </div>
                        <div class="box">
                            <a href="#"> <img src="../images/book4.jpg" alt="Eugene"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Ttile</b></p>
                                <p class="price"><b>€Year</b></p>
                                <button type="button" class="addtobasket" onclick="itemAdded()">Review</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- reviews div 4***************************************************************	-->

                <div class="center">

                    <!-- put 3 pictures in another div to style pictures -->
                    <div class="top3" id="bestsellers">
                        <div class="box">
                            <!-- put every picture and an "Review" button in a span to make these 2 elements vertical -->
                            <a href="#"> <img src="../images/book2.jpg" alt="Mindful"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Ttile</b></p>
                                <p class="price"><b>€Year</b></p>
                                <button type="button" class="addtobasket" onclick="itemAdded()">Review</button>
                            </div>
                        </div>
                        <div class="box">
                            <a href="#"> <img src="../images/book3.jpg" alt="Ttile"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Ttile</b></p>
                                <p class="price"><b>€Year</b></p>
                                <button type="button" class="addtobasket" onclick="itemAdded()">Review</button>
                            </div>
                        </div>
                        <div class="box">
                            <a href="#"> <img src="../images/book4.jpg" alt="Eugene"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Ttile</b></p>
                                <p class="price"><b>€Year</b></p>
                                <button type="button" class="addtobasket" onclick="itemAdded()">Review</button>
                            </div>
                        </div>
                    </div>
                </div>
--%>
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