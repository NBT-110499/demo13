<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page pageEncoding="UTF-8" %>
<header>
    <!-- header inner -->
    <div class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                    <div class="full">
                        <div class="center-desk">
                            <div class="logo">
                                <a href="/home"><img src="/images/logo.png" alt="#"/></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                    <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false"
                                aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item <c:if test="${menu == 'home'}">active</c:if> ">
                                    <a class="nav-link" href="/home"><spring:message code="title.home"/></a>
                                </li>
                                <li class="nav-item <c:if test="${menu == 'about'}">active</c:if>">
                                    <a class="nav-link" href="/about"><spring:message code="title.about"/></a>
                                </li>
                                <li class="nav-item <c:if test="${menu == 'computer'}">active</c:if>">
                                    <a class="nav-link" href="/computer"><spring:message code="title.computer"/></a>
                                </li>
                                <li class="nav-item <c:if test="${menu == 'laptop'}">active</c:if>">
                                    <a class="nav-link" href="/laptop"><spring:message code="title.laptop"/></a>
                                </li>
                                <li class="nav-item <c:if test="${menu == 'product'}">active</c:if>">
                                    <a class="nav-link" href="/product"><spring:message code="title.product"/></a>
                                </li>
                                <li class="nav-item <c:if test="${menu == 'contact'}">active</c:if>">
                                    <a class="nav-link" href="/contact/create"><spring:message code="title.contact"/></a>
                                </li>
                                <li class="nav-item d_none">
                                    <%--                                    <a class="nav-link" href="#">--%>
                                    <%--                                        <form action="/backend/product/list2" >--%>
                                    <%--                                        Filter: <input type="text" name="keyword" id="keyword" size="50" value="keyword" />--%>
                                    <%--                                        <input type="submit" value="Search" />--%>
                                    <%--                                        <input type="button" value="Clear" id="btnClear"  />--%>
                                    <%--                                    </form>--%>
                                    <%--                                    </a>--%>
                                </li>
                                <li class="nav-item d_none">
<%--                                    <form action="/sercurity/addCart-form" method="post">--%>
<%--                                        &lt;%&ndash;                                        <ư> sffffgf ${user.email}</ư>&ndash;%&gt;--%>
<%--                                        <input type="number" name="idUser" value="${user.id}" hidden />--%>
<%--                                        <button type="submit" class="btn btn-fefault cart" >--%>
<%--                                            <i class="fa fa-shopping-cart"></i>--%>
<%--                                            giỏ hàng--%>
<%--                                        </button>--%>
<%--                                    </form>--%>
<%--                                    <a class="nav-link" href="#">--%>
<%--                                        <form action="/backend/product/list2">--%>
<%--                                            Filter: <input type="text" name="keyword" id="keyword" size="50"--%>
<%--                                                           value="keyword"/>--%>
<%--                                            <input type="submit" value="Search"/>--%>
<%--                                            <input type="button" value="Clear" id="btnClear"/>--%>
<%--                                        </form>--%>
                                        <%--                                    </a>--%>
                                </li>
                                <%--                                <li class="nav-item d_none">--%>
                                <%--                                    &lt;%&ndash;                                    <ul class="dropdown-menu" aria-labelledby="dropdown07XL">&ndash;%&gt;--%>
                                <%--                                    <sec:authorize access="isAuthenticated()">--%>
                                <%--                                        <sec:authentication property="principal.fullName" ></sec:authentication>--%>
                                <%--                                        <ul class="dropdown-menu" aria-labelledby="dropdown07XL">--%>
                                <%--                                            <li><a class="dropdown-item" href="/user/change-pass">Đổi mật khẩu</a></li>--%>
                                <%--                                            <li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>--%>
                                <%--                                        </ul>--%>
                                <%--                                    </sec:authorize>--%>
                                <%--                                    <sec:authorize access="!isAuthenticated()">--%>
                                <%--                                        <a class="nav-link" href="/login2"><spring:message code="title.login"/></a>--%>
                                <%--                                    </sec:authorize>--%>
                                <%--                                    &lt;%&ndash;                                    </ul>&ndash;%&gt;--%>
                                <%--                                </li>--%>
                                <li>
                                    <div class="btn-group pull-right">
                                        <div class="btn-group">
                                            <sec:authorize access="isAuthenticated()">
                                                <button type="button" class="btn btn-default dropdown-toggle usa"
                                                        data-toggle="dropdown">
                                                    <sec:authentication
                                                            property="principal.fullName"></sec:authentication>
                                                    <span class="caret"></span>
                                                </button>
                                                <%--                                                <sec:authentication property="principal.fullName"></sec:authentication>--%>
                                                <ul class="dropdown-menu" aria-labelledby="dropdown07XL">
                                                    <li><a class="dropdown-item" href="/user/change-pass">Đổi mật
                                                        khẩu</a></li>
                                                    <li><a class="dropdown-item" href="/backend/product/create2">đăng sản phẩm</a></li>
                                                    <li><a class="dropdown-item" href="/listproduct2">sản phẩm đã đăng</a></li>
                                                    <li><form action="/sercurity/addCart-form" method="post">
                                                            <%--                                        <ư> sffffgf ${user.email}</ư>--%>
                                                        <input type="number" name="idUser" value="${user.id}" hidden />
                                                        <button type="submit" class="btn btn-fefault cart" >
                                                            <i class="fa fa-shopping-cart"></i>
                                                            giỏ hàng
                                                        </button>
                                                    </form></li>
                                                    <li><a class="dropdown-item" href="/user/list">danh sách tài khoản</a></li>
                                                    <li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
                                                </ul>
                                            </sec:authorize>
                                            <sec:authorize access="!isAuthenticated()">
                                                <a class="nav-link" href="/login2"><spring:message
                                                        code="title.login"/></a>
                                            </sec:authorize>
                                        </div>
                                    </div>
                                </li>
                                <div class="btn-group pull-right">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default dropdown-toggle usa"
                                                data-toggle="dropdown">
                                            <spring:message code="title.language"/>
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="/home?lang=vi">VI</a></li>
                                            <li><a href="/home?lang=en">EN</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </ul>
                        </div>
                    </nav>
                        <a class="nav-link" href="#" style="color: white">
                            <form action="/backend/product/list2">
                               <spring:message code="title.search"/>: <input type="text" name="keyword" id="keyword" size="50"
                                               value="keyword"/>
                                <input type="submit" value="ok"/>
<%--                                <input type="button" value="Clear" id="btnClear"/>--%>
                            </form>
                        </a>
                </div>
            </div>
        </div>
    </div>
</header>