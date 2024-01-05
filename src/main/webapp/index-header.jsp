<%@ page contentType="text/html;charset=UTF-8" %>
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
            <li>
                <c:choose>
                    <c:when test="${empty user}">
                        <p><a href="login.jsp">Log in</a></p>
                    </c:when>
                    <c:otherwise>
                        <p>${user.fName} ${user.lName}</p>
                    </c:otherwise>
                </c:choose>
            </li>

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
