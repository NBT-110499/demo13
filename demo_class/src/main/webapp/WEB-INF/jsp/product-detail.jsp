<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html lang="en">
<jsp:include page="/WEB-INF/jsp/backend/common/headd.jsp"></jsp:include>
<!-- body -->
<body class="main-layout inner_posituong">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="/images/loading.gif" alt="#"/></div>
</div>
<!-- end loader -->
<!-- header -->
<jsp:include page="/WEB-INF/jsp/backend/common/header.jsp"></jsp:include>
<!-- end header inner -->
<!-- end header -->
<!-- products -->
<div class="products">
    <section>
        <div class="container">
            <div class="row">
                <%--                <div class="col-sm-3">--%>
                <%--                    <div class="left-sidebar">--%>
                <%--                        <h2><spring:message code="title.category"/></h2>--%>
                <%--                        <div class="panel-group category-products" id="accordian"><!--category-productsr-->--%>
                <%--                            <c:forEach items="${danhsachCategory}" var="cat">--%>
                <%--                                <div class="panel panel-default">--%>
                <%--                                    <div class="panel-heading">--%>
                <%--                                        <h4 class="panel-title"><a--%>
                <%--                                                <c:if test="${category != null && cat.id == category.id}">style="color: red" </c:if>--%>
                <%--                                                href="/category/${cat.id}">${cat.name}</a></h4>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                            </c:forEach>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                    <div class="left-sidebar">--%>
                <%--                        <h2><spring:message code="title.category"/></h2>--%>
                <%--                        <div class="panel-group category-products" id="accordian"><!--category-productsr-->--%>
                <%--                            <c:forEach items="${danhsachBrand}" var="br">--%>
                <%--                                <div class="panel panel-default">--%>
                <%--                                    <div class="panel-heading">--%>
                <%--                                        <h4 class="panel-title"><a--%>
                <%--                                                <c:if test="${brand != null && br.id == brand.id}">style="color: red" </c:if>--%>
                <%--                                                href="/category/${br.id}">${br.name}</a></h4>--%>
                <%--                                    </div>--%>
                <%--                                </div>--%>
                <%--                            </c:forEach>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
                <div class="col-sm-9 padding-right">
                    <div class="product-details"><!--product-details-->
                        <div class="col-sm-5">
                            <div class="view-product">
                                <img src="/image/${product.image}" alt=""/>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="product-information"><!--/product-information-->
                                <%--                            <img src="/image/${product.image}" class="newarrival" alt="" />--%>
                                <h2>${product.name}</h2>
                                <p></p>
                                <span>
									<label>Số lượng mua: </label>
									<form action="/sercurity/addCart-form" method="post">
<%--                                        <ư> sffffgf ${user.email}</ư>--%>
                                        <input type="number" name="idUser" value="${user.id}" hidden/>
                                         <input type="number" name="idProduct" value="${product.id}" hidden/ >
                                         <input type="number" name="quantity" value="1"/>
                                         <button type="submit" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Thêm vào giỏ hàng
									</button>
                                        </form>
								    </span>
                                <p><b>Gía:</b> ${product.price}Đ</p>
                                <p><b>chất lượng:</b> 99%</p>
<%--                                <p><b><spring:message code="title.category"/>:</b> </p>--%>
<%--                                <p><b><spring:message code="title.brand"/>: </b> </p>--%>
                                <h1></h1>
                                <a href=""><img src="image/${product.image}" class="share img-responsive"
                                                alt=""/></a>
                            </div><!--/product-information-->
                        </div>
                    </div>
                    <div class="category-tab shop-details-tab"><!--category-tab-->
                        <div class="col-sm-12" >
                            <ul class="nav nav-tabs" >
                                <li><button style="background-color: #4CAF50;border: none;color: white;padding: 20px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;margin: 4px 2px;cursor: pointer;" href="#details" data-toggle="tab">Chi tiết</button></li>
                                <li><button style="background-color: #4CAF50;border: none;color: white;padding: 20px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;margin: 4px 2px;cursor: pointer;" href="#danhgia" data-toggle="tab">Đánh giá</button></li>
                                <li class="active"><button style="background-color: #4CAF50;border: none;color: white;padding: 20px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;margin: 4px 2px;cursor: pointer;" href="#reviews" data-toggle="tab">Reviews</button></li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade" id="details">
                                <h1>-CPU: ${product.cpu}</h1>
                                <h1>-RAM: ${product.ram}</h1>
                                <h1>-Mành Hình: ${product.display}</h1>
                            </div>
                            <div class="tab-pane fade" id="danhgia">
                                    <h1>${product.description}</h1>
                            </div>
                            <div class="tab-pane fade active in" id="reviews">
                                <div class="col-sm-12">
                                    <c:forEach items="${review}" var="re">
                                        <ul>
                                            <li><a href=""><i class="fa fa-user"></i>${re.name}</a></li>
                                        </ul>
                                        <p>${re.comment}</p>
                                    </c:forEach>
                                    <p><b>Viết Review của bạn</b></p>
                                    <form action="/review-form" method="post">
                                        <input name="idProduct" value="${product.id}" hidden>
                                        <span>
                                    <input type="text" name="name" placeholder="Your Name"/>
                                    <input type="email" name="email" placeholder="Email Address"/>
                                </span>
                                        <br>
                                        <textarea name="comment" style="border: medium; height: 195px;margin-bottom: 25px
;margin-top: 15px;outline: medium;padding-left: 10px;padding-top: 15px;resize: none;width: 99.5%;background-color: #f0f0e9"></textarea>
                                        <br>
                                        <button type="submit" class="btn btn-primary">
                                            Submit
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="tab-pane fade active in" id="reviews">

    </div>
</div>
<!-- end products -->
<!--  footer -->

<jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include>
<!-- end footer -->
<!-- Javascript files-->
<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>
<script>
    var today = new Date();
    var date = today.getDate() + '-' + (today.getMonth() + 1) + '-' + today.getFullYear();
    var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    var dateTime = date + ' ' + time;

    document.getElementById("hvn").innerHTML = dateTime;
</script>

