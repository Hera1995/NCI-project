
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Single</title>
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
</head>
<body>
<div class="container">
    <div class="container_wrap">
        <div class="header_top">
            <div class="col-sm-3 logo"><a href="index.jsp"><img src="images/logo.png" alt=""/></a></div>
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
        <div class="content">
            <div class="movie_top">
                <div class="col-md-9 movie_box">
                    <div class="grid images_3_of_2">
                        <div class="movie_image">
                            <span class="movie_rating">5.0</span>
                            <img src="images/single.jpg" class="img-responsive" alt=""/>
                        </div>
                        <div class="movie_rate">
                            <div class="rating_desc"><p>Your Vote :</p></div>
                            <form action="" class="sky-form">
                                <fieldset>
                                    <section>
                                        <div class="rating">
                                            <input type="radio" name="stars-rating" id="stars-rating-5">
                                            <label for="stars-rating-5"><i class="icon-star"></i></label>
                                            <input type="radio" name="stars-rating" id="stars-rating-4">
                                            <label for="stars-rating-4"><i class="icon-star"></i></label>
                                            <input type="radio" name="stars-rating" id="stars-rating-3">
                                            <label for="stars-rating-3"><i class="icon-star"></i></label>
                                            <input type="radio" name="stars-rating" id="stars-rating-2">
                                            <label for="stars-rating-2"><i class="icon-star"></i></label>
                                            <input type="radio" name="stars-rating" id="stars-rating-1">
                                            <label for="stars-rating-1"><i class="icon-star"></i></label>
                                        </div>
                                    </section>
                                </fieldset>
                            </form>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="desc1 span_3_of_2">
                        <p class="movie_option"><strong>Country: </strong><a href="#">established</a>, <a
                                href="#">USA</a></p>
                        <p class="movie_option"><strong>Year: </strong>2014</p>
                        <p class="movie_option"><strong>Category: </strong><a href="#">Adventure</a>, <a href="#">Fantazy</a>
                        </p>
                        <p class="movie_option"><strong>Release date: </strong>December 12, 2014</p>
                        <p class="movie_option"><strong>Director: </strong><a href="#">suffered </a></p>
                        <p class="movie_option"><strong>Actors: </strong><a href="#">anything</a>, <a href="#">Lorem
                            Ipsum</a>, <a href="#">discovered</a> , <a href="#"> Virginia</a>, <a href="#"> Virginia</a>,
                            <a href="#">variations</a>, <a href="#">variations</a>, <a href="#">variations</a>, <a
                                    href="#"> Virginia</a> <a href="#">...</a></p>
                        <p class="movie_option"><strong>Age restriction: </strong>13</p>
                        <div class="down_btn"><a class="btn1" href="#"><span> </span>Download</a></div>
                    </div>
                    <div class="clearfix"></div>
                    <p class="m_4">There are many variations of passages of Lorem Ipsum available, but the majority have
                        suffered alteration in some form, by injected humour, or randomised words which don't look even
                        slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there
                        isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the
                        Internet tend to repeat predefined chunks as necessary, making this the first true generator on
                        the Internet.</p>
                    <form method="post" action="contact-post.html">
                        <div class="to">
                            <input type="text" class="text" value="Name" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Name';}">
                            <input type="text" class="text" value="Email" onfocus="this.value = '';"
                                   onblur="if (this.value == '') {this.value = 'Email';}" style="margin-left:3%">
                        </div>
                        <div class="text">
                            <textarea value="Message:" onfocus="this.value = '';"
                                      onblur="if (this.value == '') {this.value = 'Message';}">Message:</textarea>
                        </div>
                        <div class="form-submit1">
                            <input name="submit" type="submit" id="submit" value="Submit Your Message"><br>
                        </div>
                        <div class="clearfix"></div>
                    </form>
                    <div class="single">
                        <h1>10 Comments</h1>
                        <ul class="single_list">
                            <li>
                                <div class="preview"><a href="#"><img src="images/2.jpg" class="img-responsive" alt=""></a>
                                </div>
                                <div class="data">
                                    <div class="title">Movie / 2 hours ago / <a href="#">reply</a></div>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
                                        euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad
                                        minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut
                                        aliquip ex ea commodo consequat.</p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li>
                                <div class="preview"><a href="#"><img src="images/3.jpg" class="img-responsive" alt=""></a>
                                </div>
                                <div class="data">
                                    <div class="title">Wernay / 2 hours ago / <a href="#">reply</a></div>
                                    <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie
                                        consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan
                                        et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
                                        dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend
                                        option congue nihil imperdiet doming id quod mazim placerat facer possim assum.
                                        Typi non habent </p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li>
                                <div class="preview"><a href="#"><img src="images/4.jpg" class="img-responsive" alt=""></a>
                                </div>
                                <div class="data">
                                    <div class="title">mr.dev / 2 hours ago / <a href="#">reply</a></div>
                                    <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium
                                        lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram,
                                        anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta
                                        decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in
                                        futurum. qui sequitur mutationem consuetudium lectorum. Mirum est notare quam
                                        littera gothica, quam nunc putamus parum claram,</p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li class="middle">
                                <div class="preview"><a href="#"><img src="images/5.jpg" class="img-responsive" alt=""></a>
                                </div>
                                <div class="data-middle">
                                    <div class="title">Wernay / 2 hours ago / <a href="#">reply</a></div>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac
                                        turpis egestas.</p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li class="last-comment">
                                <div class="preview"><a href="#"><img src="images/6.jpg" class="img-responsive" alt=""></a>
                                </div>
                                <div class="data-last">
                                    <div class="title">mr.dev / 2 hours ago / <a href="#">reply</a></div>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
                                        euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad
                                        minim veniam, quis nostrud exerci tation ullamcorper suscipit </p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li>
                                <div class="preview"><a href="#"><img src="images/7.jpg" class="img-responsive" alt=""></a>
                                </div>
                                <div class="data">
                                    <div class="title">denpro / 2 hours ago / <a href="#">reply</a></div>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac
                                        turpis egestas.Pellentesque habitant morbi tristique senectus et netus et
                                        malesuada fames ac turpis egestas.Pellentesque habitant morbi tristique senectus
                                        et netus et malesuada fames ac turpis egestas.Pellentesque habitant morbi
                                        tristique senectus et netus et malesuada fames ac turpis egestas.Pellentesque
                                        habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                        egestas.</p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="movie_img">
                        <div class="grid_2">
                            <img src="images/pic6.jpg" class="img-responsive" alt="">
                            <div class="caption1">
                                <ul class="list_5 list_7">
                                    <li><i class="icon5"> </i>
                                        <p>3,548</p></li>
                                </ul>
                                <i class="icon4 icon6 icon7"> </i>
                                <p class="m_3">Guardians of the Galaxy</p>
                            </div>
                        </div>
                    </div>
                    <div class="grid_2 col_1">
                        <img src="images/pic2.jpg" class="img-responsive" alt="">
                        <div class="caption1">
                            <ul class="list_3 list_7">
                                <li><i class="icon5"> </i>
                                    <p>3,548</p></li>
                            </ul>
                            <i class="icon4 icon7"> </i>
                            <p class="m_3">Guardians of the Galaxy</p>
                        </div>
                    </div>
                    <div class="grid_2 col_1">
                        <img src="images/pic9.jpg" class="img-responsive" alt="">
                        <div class="caption1">
                            <ul class="list_3 list_7">
                                <li><i class="icon5"> </i>
                                    <p>3,548</p></li>
                            </ul>
                            <i class="icon4 icon7"> </i>
                            <p class="m_3">Guardians of the Galaxy</p>
                        </div>
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