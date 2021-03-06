<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/backend/common/head.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/jsp/backend/common/nav.jsp"></jsp:include>
<div class="container">
    <div>
        <div class="bg-light p-5 rounded">
            <div class="col-sm-8 mx-auto">
                <h1>Danh sách tài khoản</h1>
                <p style="color: red">${message}</p>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Tên đăng nhập</th>
                        <th scope="col">Họ và tên</th>
                        <th scope="col">Giới tính</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Quyền</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="stt" value="1"></c:set>
                    <c:forEach items="${list.data}" var="user">
                        <tr>
                            <th scope="row">${stt}</th>
                            <td><a href="/user/edit/${user.id}">${user.username}</a></td>
                            <td>${user.fullName}</td>
                            <td><c:if test="${user.gender == 1}">Nam</c:if>
                                <c:if test="${user.gender == 2}">Nữ</c:if></td>
                            <td><c:if test="${user.status == 1}">Kích hoạt</c:if>
                                <c:if test="${user.gender == 0}">Tạm dừng</c:if></td>
                            <td>${user.role}</td>
                            <td> <a class="btn btn-danger btn-sm" href= "/user/delete?Id=${user.id}"">Del</a></td>
                            <c:set var="stt" value="${stt + 1}"></c:set>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>

            <jsp:include page="/WEB-INF/jsp/backend/common/pagingUser.jsp"></jsp:include>
        </div>
    </div>
</div>
</body>

