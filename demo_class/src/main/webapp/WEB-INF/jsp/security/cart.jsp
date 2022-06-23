<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="/WEB-INF/jsp/backend/common/headd.jsp"></jsp:include>
<!-- body -->
<body class="main-layout inner_posituong">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="/images/loading.gif" alt="#" /></div>
</div>
<!-- end loader -->
<!-- header -->
<jsp:include page="/WEB-INF/jsp/backend/common/header.jsp"></jsp:include>
<!-- end header inner -->
<!-- end header -->
<!-- products -->
<%--<tbody>--%>
<%--<c:forEach  items="${cart}" var="c" >--%>
<%--    <tr>--%>
<%--        <td class="cart_product">--%>
<%--            <img src="/image/${c.productEntity.image}" height="120" width="120" alt="">--%>
<%--        </td>--%>
<%--        <td class="cart_description">--%>
<%--            <h4><a href="">${c.quantity}</a></h4>--%>
<%--        </td>--%>
<%--        <td class="cart_price">--%>
<%--            <p>$${c.productEntity.price}</p>--%>
<%--        </td>--%>
<%--        <td class="cart_quantity">--%>
<%--            <div class="cart_quantity_button">--%>
<%--                <a class="cart_quantity_up" href=""> + </a>--%>
<%--                <input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">--%>
<%--                <a class="cart_quantity_down" href=""> - </a>--%>
<%--            </div>--%>
<%--        </td>--%>
<%--        <td class="cart_total">--%>
<%--            <p class="cart_total_price">${c.quantity}</p>--%>
<%--        </td>--%>
<%--        <td class="cart_delete">--%>
<%--            <a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--</c:forEach>--%>
<%--</tbody>--%>
<div class="table-responsive cart_info">
    <table class="table table-condensed">
        <thead>
        <tr class="cart_menu">
            <td class="image">Item</td>
            <td class="description"></td>
            <td class="price">Price</td>
            <td class="quantity">Quantity</td>
            <td class="total">Total</td>
            <td></td>
        </tr>
        </thead>
        <tbody>
        <c:forEach  items="${cart}" var="c" >
        <tr>
            <td class="cart_product">
                <img src="/image/${c.productEntity.image}" height="120" width="120" alt="">
            </td>
            <td class="cart_description">
                <h4><a href="">${c.productEntity.name}</a></h4>
                <p>Web ID: 1089772</p>
            </td>
            <td class="cart_price">
                <p>${c.productEntity.price}</p>
            </td>
            <td class="cart_quantity">
                <div class="cart_quantity_button">
<%--                    <a class="cart_quantity_up" href=""> + </a>--%>
                    <h4><a href="">${c.quantity}</a></h4>
<%--                    <a class="cart_quantity_down" href=""> - </a>--%>
                </div>
            </td>
            <td class="cart_total">
                <p class="cart_total_price">${c.total1}</p>
            </td>
            <td class="cart_delete">
                <a class="cart_quantity_delete" href="/sercurity/delete/${c.userEntity.id}/${c.productEntity.id}"><i class="fa fa-times"></i></a>
            </td>
            <td class="cart_delete">
                <a class="btn btn-default check_out" href="/checkout/${c.userEntity.id}/${c.total1}">Check Out</a>
            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div>
</div>

<jsp:include page="/WEB-INF/jsp/backend/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/jsp/backend/common/js.jsp"></jsp:include>
</body>
</html>