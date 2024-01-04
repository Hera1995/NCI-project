<%--
  Created by IntelliJ IDEA.
  User: Hera
  Date: 2024/1/4
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <li><p><a href="login.jsp">Log in</a></p></li>
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

            <div class="box_2 containerme">

                <!-- reviews div 1***************************************************************	-->

                <div data-cid="#">
                    <div class="review-item">
                        <div class="subject-img">
                            <a href="https://movie.douban.com/subject/35517441/"> <img alt="月球叛军：火之女"
                                                                                       title="月球叛军：火之女"
                                                                                       src="https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2893453291.webp"
                                                                                       rel="v:image"
                                                                                       class="img-responsive"/> </a>
<%--                            <div class="captionme">--%>
<%--                                <ul class="list_3">--%>
<%--                                    <li><i class="icon5"> </i>--%>
<%--                                        <p>3,548</p></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
                        </div>

                        <div class="main-bd">

                            <header class="main-hd">
                                <h2>NAME</h2>
                            </header>
                            <header class="main-hd">
                                <h4>Year</h4>
                            </header>
                            <header class="main-hd">
                                <h4>imdbID</h4>
                            </header>


<%--                            <header class="main-hd">--%>
<%--                                <a href="https://www.douban.com/people/183293845/" class="avator">--%>
<%--                                    <img width="24" height="24" src="https://img3.doubanio.com/icon/u183293845-17.jpg">--%>
<%--                                </a>--%>

<%--                                <a href="https://www.douban.com/people/183293845/"--%>
<%--                                   class="name">&nbsp;&nbsp;${name}</a>--%>

<%--                                <span class="allstar20 main-title-rating" title="较差"></span>--%>

<%--                                <span content="2024-01-02"--%>
<%--                                      class="main-meta">&nbsp;&nbsp;&nbsp;&nbsp;2024-01-02 00:57:28</span>--%>

<%--                            </header>--%>

<%--                            <h2>--%>
<%--                                <a href="#">春天的放牛班观影团第87期周限定——《反叛之月：火之女》</a>--%>
<%--                            </h2>--%>

                            <div class="review-short">
                                <div class="short-content">
                                    description
                                    种自己的花，爱自己的宇宙
                                    你身边有扎斯林群体吗？组织是否已被邪教徒渗透？小心这些极端的影迷，敬而远之就对了。相信我，扎斯林不是单个领域的化身，他们无处不在！也许我就是其中一位，所以你们打差评分明就是在迫害我扎哥哥好不好，哈哈～玩笑点到为止，让我们言归正传。本...

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- reviews div 2***************************************************************	-->

                <div data-cid="15657671">
                    <div class="review-item" id="#">
                        <div class="subject-img">
                            <a href="detail.jsp"> <img src="images/pic1.jpg" class="img-responsive" alt=""/> </a>
                            <div class="captionme">
                                <ul class="list_3">
                                    <li><i class="icon5"> </i>
                                        <p>3,548</p></li>
                                </ul>
                            </div>
                        </div>


                        <div class="main-bd">

                            <header class="main-hd">
                                <h2>NAME</h2>
                            </header>

                            <header class="main-hd">
                                <a href="#" class="avator">
                                    <img width="24" height="24" src="https://img3.doubanio.com/icon/u183293845-17.jpg">
                                </a>

                                <a href="#" class="name">&nbsp;&nbsp;account name</a>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;Rating : &nbsp;&nbsp;<img src="images/rating1.png" alt=""/>
                                </p>


                            </header>

                            <h2>
                                <a href="#">title</a>
                            </h2>

                            <div class="review-short">
                                <div class="short-content">

                                    种自己的花，爱自己的宇宙
                                    你身边有扎斯林群体吗？组织是否已被邪教徒渗透？小心这些极端的影迷，敬而远之就对了。相信我，扎斯林不是单个领域的化身，他们无处不在！也许我就是其中一位，所以你们打差评分明就是在迫害我扎哥哥好不好，哈哈～玩笑点到为止，让我们言归正传。本...

                                    种自己的花，爱自己的宇宙
                                    你身边有扎斯林群体吗？组织是否已被邪教徒渗透？小心这些极端的影迷，敬而远之就对了。相信我，扎斯林不是单个领域的化身，他们无处不在！也许我就是其中一位，所以你们打差评分明就是在迫害我扎哥哥好不好，哈哈～玩笑点到为止，让我们言归正传。本...

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--***************************************************************	-->

                <!-- reviews div 3***************************************************************	-->

                <div data-cid="15657671">
                    <div class="review-item" id="15657671">
                        <div class="subject-img">
                            <a href="detail.jsp"> <img src="images/pic1.jpg" class="img-responsive" alt=""/> </a>
                            <div class="captionme">
                                <ul class="list_3">
                                    <li><i class="icon5"> </i>
                                        <p>3,548</p></li>
                                </ul>
                            </div>
                        </div>


                        <div class="main-bd">

                            <header class="main-hd">
                                <h2>NAME</h2>
                            </header>

                            <header class="main-hd">
                                <a href="#" class="avator">
                                    <img width="24" height="24" src="https://img3.doubanio.com/icon/u183293845-17.jpg">
                                </a>

                                <a href="#" class="name">&nbsp;&nbsp;account name</a>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;Rating : &nbsp;&nbsp;<img src="images/rating1.png" alt=""/>
                                </p>


                            </header>

                            <h2>
                                <a href="#">title</a>
                            </h2>

                            <div id="review_15657671_short" class="review-short" data-rid="#">
                                <div class="short-content">

                                    种自己的花，爱自己的宇宙
                                    你身边有扎斯林群体吗？组织是否已被邪教徒渗透？小心这些极端的影迷，敬而远之就对了。相信我，扎斯林不是单个领域的化身，他们无处不在！也许我就是其中一位，所以你们打差评分明就是在迫害我扎哥哥好不好，哈哈～玩笑点到为止，让我们言归正传。本...

                                </div>
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