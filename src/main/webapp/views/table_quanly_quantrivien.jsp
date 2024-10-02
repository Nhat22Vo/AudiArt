
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!-- Custom CSS -->
<style>
    .status-active {
        color: green;
        font-weight: bold;
    }

    .status-inactive {
        color: yellow;
        font-weight: bold;
    }

    /* Tùy chỉnh bảng */
    #adminTable {
        width: 100%;
        border-collapse: collapse;
    }

    #adminTable th, #adminTable td {
        text-align: center;
        padding: 10px;
    }

    #adminTable thead {
        background-color: #f8f9fa;
    }
</style>

<table id="adminTable" class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>ID</th>
            <th>Tên Đăng Nhập</th>
            <th>Mật khẩu</th>
            <th>Họ và Tên</th>
            <th>Email</th>
            <th>Địa Chỉ</th>
            <th>Trạng Thái</th>
            <th>Vai Trò</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="item" items="${items}">
            <tr>
                <td><c:out value="${item.id_qt}"/></td>
                <td><c:out value="${item.ten_dang_nhap}"/></td>
                <td><c:out value="${item.mat_khau}"/></td>
                <td><c:out value="${item.ho}"/> <c:out value="${item.ten}"/></td>
                <td><c:out value="${item.email}"/></td>
                <td><c:out value="${item.dia_chi}"/></td>
                <!-- Điều kiện hiển thị màu sắc trạng thái -->
                <td class="${item.trang_thai == 1 ? 'status-active' : 'status-inactive'}">
                    <c:out value="${item.trang_thai == 1 ? 'Hoạt động' : 'Không hoạt động'}"/>
                </td>
                <td><c:out value="${item.vai_tro}"/></td>
                <td>
                    <button class="btn btn-sm btn-info">
                        <a href="/quantri/${item.id_qt}" style="color: white;">Chọn</a>
                    </button>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>