<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Movie, Review, Movie Review, Film, Film Review"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- start plugins -->
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <link href='http://fonts.useso.com/css?family=Roboto+Condensed:100,200,300,400,500,600,700,800,900' rel='stylesheet'
          type='text/css'>
    <script src="js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $("#slider").responsiveSlides({
                auto: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                pager: true,
            });
        });
    </script>

</head>
<body>
<div class="container">
    <div class="container_wrap">
        <div class="header_top">
            <div class="col-sm-3 logo"><a href="index.jsp"><img src="images/logo.png" alt="logo"/></a></div>
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
                    <li><p><a href="login.jsp">Log in</a>
                        <c:if test="${not empty user}">
                        <p>${user.fName} ${user.lName}</p>
                        </c:if>
                        </p></li>
                    <li class="last"><i class="edit"> </i></li>
                    <div class="clearfix"></div>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="slider">
            <div class="callbacks_container">
                <ul class="rslides" id="slider">
                    <li><img src="images/banner.jpg" class="img-responsive" alt=""/>
                        <div class="button">
                            <a href="#" class="hvr-shutter-out-horizontal">Review Now</a>
                        </div>
                    </li>
                    <li><img src="images/banner1.jpg" class="img-responsive" alt=""/>
                        <div class="button">
                            <a href="#" class="hvr-shutter-out-horizontal">Review Now</a>
                        </div>
                    </li>
                    <li><img src="images/banner2.jpg" class="img-responsive" alt=""/>
                        <div class="button">
                            <a href="#" class="hvr-shutter-out-horizontal">Review Now</a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="banner_desc">
                <div class="col-md-9">
                    <ul class="list_1">
                        <li>Published <span class="m_1">Dec 20, 2023</span></li>
                        <li>Updated <span class="m_1">Dec 20 2023</span></li>
                        <li>Rating <span class="m_1"><img src="images/rating.png" alt=""/></span></li>
                    </ul>
                </div>
                <div class="col-md-3 grid_1">
                    <ul class="list_1 list_2">
                        <li><i class="icon1"> </i>
                            <p>2,548</p></li>
                        <li><i class="icon2"> </i>
                            <p>215</p></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="box_1">
                <h1 class="m_2">Top Movies</h1>
                <div class="search">
                    <form>
                        <input type="text" value="Search..." onFocus="this.value='';"
                               onBlur="if (this.value == '') {this.value ='';}">
                        <input type="submit" value="">
                    </form>
                </div>
                <div class="clearfix"></div>
                <div class="copyrights">Collect from <a href="http://www.cssmoban.com/">MovieReview</a></div>
            </div>

            <div>


                <!-- reviews div 1***************************************************************	-->

                <div class="center">

                    <!-- put 3 pictures in another div to style pictures -->
                    <div class="top3" >
                        <div class="box">
                            <!-- put every picture and an "Review" button in a span to make these 2 elements vertical -->
                            <a href="detail.jsp"> <img src="../images/book2.jpg" alt="Mindful"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Title</b></p>
                                <p class="price"><b>Year</b></p>
                                <a href="detail.jsp"><button type="button" class="addtobasket" >Review</button></a>
                            </div>
                        </div>
                        <div class="box">
                            <a href="#"> <img src="../images/book3.jpg" alt="Ttile"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Title</b></p>
                                <p class="price"><b>Year</b></p>
                                <button type="button" class="addtobasket" onclick="itemAdded()">Review</button>
                            </div>
                        </div>
                        <div class="box">
                            <a href="#"> <img src="../images/book4.jpg" alt="Eugene"></a>
                            <div class="vertical">
                                <p class="bookname"><b>Title</b></p>
                                <p class="price"><b>Year</b></p>
                                <button type="button" class="addtobasket" onclick="itemAdded()">Review</button>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- reviews div 2***************************************************************	-->

                <div class="center">

                    <!-- put 3 pictures in another div to style pictures -->
                    <div class="top3" >
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

                <!-- reviews div 3***************************************************************	-->

                <div class="center">

                    <!-- put 3 pictures in another div to style pictures -->
                    <div class="top3" >
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
                            <div class="ai-chat"></div>
                            <input type="text" class="user-input" placeholder="Type your question here...">
                            <button class="send-btn">Send</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!--***************************************************************	-->

    </div>
</div>
</div>
</div>

<div class="container">
    <footer id="footer">
        <div id="footer-3d">
            <div class="gp-container">
                <span class="first-widget-bend"></span>
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
<style>
    .copyrights {
        text-indent: -9999px;
        height: 0;
        line-height: 0;
        font-size: 0;
        overflow: hidden;
    }
</style>
<div class="copyrights" id="links20210126">
    Collect from <a href="http://www.cssmoban.com/" title="网站模板">模板之家</a>
    <a href="https://www.chazidian.com/" title="查字典">查字典</a>
</div>
</body>
</html>