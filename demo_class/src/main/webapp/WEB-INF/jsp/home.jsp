<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html lang="en">
<jsp:include page="/WEB-INF/jsp/backend/common/headd.jsp"></jsp:include>
<!-- body -->
<body class="main-layout">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="/images/loading.gif" alt="#"/></div>
</div>
<!-- end loader -->
<jsp:include page="/WEB-INF/jsp/backend/common/header.jsp"></jsp:include>
<!-- end header inner -->
<!-- end header -->
<!-- banner -->
<section class="banner_main">
    <div id="banner1" class="carousel slide" data-ride="carousel">
<%--        <ol class="carousel-indicators">--%>
            <li data-target="#banner1" data-slide-to="0" class="active"></li>
<%--            <li data-target="#banner1" data-slide-to="1"></li>--%>
<%--            <li data-target="#banner1" data-slide-to="2"></li>--%>
<%--            <li data-target="#banner1" data-slide-to="3"></li>--%>
<%--            <li data-target="#banner1" data-slide-to="4"></li>--%>
<%--        </ol>--%>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="carousel-caption">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="text-bg">
                                    <span><spring:message code="title.welcome"></spring:message> </span>
                                    <h1><spring:message code="title.shop"/></h1>
                                    <p><spring:message code="title.content1"/> </p>
                                    <a href="/product">Buy Now </a> <a href="/contact/create"><spring:message code="title.contact" /></a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text_img">
                                    <figure><img src="/images/pct.png" alt="#"/></figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <a class="carousel-control-prev" href="#banner1" role="button" data-slide="prev">
            <i class="fa fa-chevron-left" aria-hidden="true"></i>
        </a>
        <a class="carousel-control-next" href="#banner1" role="button" data-slide="next">
            <i class="fa fa-chevron-right" aria-hidden="true"></i>
        </a>
    </div>
</section>
<!-- end banner -->
<!-- three_box -->
<div class="three_box">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="box_text">
                    <i><img src="/images/thr.png" alt="#"/></i>
                    <h3><spring:message code="title.computer"/></h3>
                    <p><spring:message code="title.slogan1"/> </p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="box_text">
                    <i><img src="/images/thr1.png" alt="#"/></i>
                    <h3><spring:message code="title.laptop"/></h3>
                    <p><spring:message code="title.slogan2"/> </p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="box_text">
                    <i><img src="/images/thr2.png" alt="#"/></i>
                    <h3><spring:message code="title.tablet" /></h3>
                    <p><spring:message code="title.slogan3" /></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- three_box -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2><spring:message code="title.category"/></h2>
                    <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                        <c:forEach items="${danhsachCategory}" var="cat">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a
                                            <c:if test="${category != null && cat.id == category.id}">style="color: red" </c:if>
                                            href="/category/${cat.id}">${cat.name}</a></h4>
                                </div>
                            </div>
                        </c:forEach>
                        <h2><spring:message code="title.brand"/></h2>
                        <c:forEach items="${danhsachBrand}" var="br">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a
                                            <c:if test="${brand != null && br.id == brand.id}">style="color: red" </c:if>
                                            href="/brand/${br.id}">${br.name}</a></h4>
                                </div>
                            </div>
                        </c:forEach>
                    </div><!--/category-products-->
                </div>
            </div>
            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <c:if test="${category == null}">
                        <h2 class="title text-center"><spring:message code="title.features_items"/></h2>
                    </c:if>
                    <c:if test="${category != null}">
                        <h2 class="title text-center">${category.name} </h2>
                    </c:if>
                    <div class="row">
                        <c:forEach items="${product}" var="p">
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <a href="/product/${p.id}"><img src="/image/${p.image}" style="width: 200px;height: 200px" alt=""/></a>
                                            <h2>${p.price}</h2>
                                            <p>${p.name}</p>
                                            <a href="/product/${p.id}" class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i><spring:message
                                                    code="title.Addtocart"/></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div><!--features_items-->
            </div>
        </div>
    </div>
</section>
<!-- end products -->
<!-- laptop  section -->
<div class="laptop">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="titlepage">
                    <p>Tất cả máy tính đã co mặt tại cửa hàng</p>
                    <h2>mua ngay hôm nay để được giảm giá !</h2>
                    <a class="read_more" href="/product">đến cửa hàng</a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="laptop_box">
                    <figure><img src="/images/pc.png" alt="#"/></figure>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- end laptop  section -->
<!-- customer -->
<div class="customer">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage">
                    <h2>Đánh giá của khách hàng</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div id="myCarousel" class="carousel slide customer_Carousel " data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container">
                                <div class="carousel-caption ">
                                    <div class="row">
                                        <div class="col-md-9 offset-md-3">
                                            <div class="test_box">
                                                <i><img src="/images/cos.png" alt="#"/></i>
                                                <h4>Nhật Minh</h4>
                                                <p>Mình đã tham khảo nhiều cửa hàng nhưng ở đây là tốt nhất!!</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="carousel-caption">
                                    <div class="row">
                                        <div class="col-md-9 offset-md-3">
                                            <div class="test_box">
                                                <i><img src="/images/cos.png" alt="#"/></i>
                                                <h4>Hoàng Mai</h4>
                                                <p>Mình thật sự thích phong cách làm việc của shop</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="carousel-caption">
                                    <div class="row">
                                        <div class="col-md-9 offset-md-3">
                                            <div class="test_box">
                                                <i><img src="/images/cos.png" alt="#"/></i>
                                                <h4>Hiền Vi</h4>
                                                <p>Thật đúng đắn khi mua laptop ở đây. Minh thấy thật sáng suốt</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end customer -->

<!--  contact -->
<div class="contact">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage">
                    <h2>Contact Now</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <form id="request" class="main_form" action="/contact/contact-form" method="post">
                    <div class="row">
                        <div class="col-md-12 ">
                            <input class="contactus" placeholder="Name" type="type" name="name">
                        </div>
                        <div class="col-md-12">
                            <input class="contactus" placeholder="Email" type="type" name="email">
                        </div>
                        <div class="col-md-12">
                            <input class="contactus" placeholder="Phone Number" type="type" name="phone">
                        </div>
                        <div class="col-md-12">
                            <textarea class="textarea" placeholder="Message" type="type"
                                      Message="Name" name="message">Message </textarea>
                        </div>
                        <div class="col-md-12">
                            <button class="send_btn">Send</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- end contact -->
<!--  footer -->
<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <img class="logo1" src="/images/logo1.png" alt="#"/>
                    <ul class="social_icon">
                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <h3>About Us</h3>
                    <ul class="about_us">
                        <li>dolor sit amet, consectetur<br> magna aliqua. Ut enim ad <br>minim veniam, <br> quisdotempor
                            incididunt r
                        </li>
                    </ul>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <h3>Contact Us</h3>
                    <ul class="conta">
                        <li>dolor sit amet,<br> consectetur <br>magna aliqua.<br> quisdotempor <br>incididunt ut e</li>
                    </ul>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <form class="bottom_form">
                        <h3>Newsletter</h3>
                        <input class="enter" placeholder="Enter your email" type="text" name="Enter your email">
                        <button class="sub_btn">subscribe</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p>© 2019 All Rights Reserved. Design by<a href="https://html.design/"> Free Html Templates</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
<!-- Javascript files-->
<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>

