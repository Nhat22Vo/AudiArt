<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${not empty message}">
    <div class="alert alert-success">
        <p>${message}</p>
    </div>
</c:if>

<form:form action="/quantri/them" method="post" modelAttribute="item">
    <div class="form-group">
        <label for="tenDangNhap">Tên Đăng Nhập</label>
        <form:input type="text" id="tenDangNhap" path="ten_dang_nhap" class="form-control" />
        <form:errors path="ten_dang_nhap" cssClass="text-danger" />
    </div>
    <div class="form-group">
        <label for="matkhau">Nhập Mật Khẩu</label>
        <form:input type="text" id="matkhau" path="mat_khau" class="form-control" />
        <form:errors path="mat_khau" cssClass="text-danger" />
    </div>

    <!-- Row for Họ và Tên -->
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="ho">Họ</label>
            <form:input type="text" id="ho" path="ho" class="form-control" />
            <form:errors path="ho" cssClass="text-danger" />
        </div>
        <div class="form-group col-md-6">
            <label for="ten">Tên</label>
            <form:input type="text" id="ten" path="ten" class="form-control" />
            <form:errors path="ten" cssClass="text-danger" />
        </div>
    </div>

    <div class="form-group">
        <label for="email">Email</label>
        <form:input type="email" id="email" path="email" class="form-control" />
        <form:errors path="email" cssClass="text-danger" />
    </div>
    <div class="form-group">
        <label for="diaChi">Địa Chỉ</label>
        <form:input type="text" id="diaChi" path="dia_chi" class="form-control" />
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="trangThai">Trạng Thái</label>
            <form:select id="trangThai" name="trangThai" path="trang_thai" class="form-control">
                <option value="active">Active</option>
                <option value="inactive">Inactive</option>
            </form:select>
        </div>
        <div class="form-group col-md-6">
            <label for="vaiTro">Vai Trò</label>
            <form:select id="vaiTro" name="vaiTro" path="vai_tro" class="form-control">
                <option value="admin">Admin</option>
                <option value="user">User</option>
            </form:select>
        </div>
    </div>

    <div class="form-actions">
        <button type="submit" class="btn btn-primary" formaction="/quantri/them">Thêm</button>
        <button type="submit" class="btn btn-warning" formaction="/quantri/sua">Sửa</button>
        <button type="submit" class="btn btn-danger" formaction="/quantri/xoa/${item.id_qt}">Xóa</button>
        <button type="submit" class="btn btn-success" formaction="/quantri/trong">Trống</button>
    </div>
</form:form>
