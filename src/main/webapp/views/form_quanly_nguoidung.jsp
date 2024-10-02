<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Hiển thị thông báo thành công -->
<c:if test="${not empty message}">
    <div class="alert alert-success">
        <p>${message}</p>
    </div>
</c:if>

<!-- Form Thêm/Sửa Người Dùng -->
<div class="form-container">
    <h2 class="form-header">Quản lý người dùng</h2>

    <form:form action="/admin/them" method="post" modelAttribute="item">
        <div class="form-group">
            <label for="tenDangNhap">Tên Đăng Nhập</label>
            <form:input type="text" id="tenDangNhap" path="ten_dang_nhap" class="form-control"/>
            <form:errors path="ten_dang_nhap" cssClass="text-danger"/>
        </div>
        <div class="form-group">
            <label for="matkhau">Nhập mật khẩu</label>
            <form:input type="text" id="matkhau" path="mat_khau" class="form-control"/>
            <form:errors path="mat_khau" cssClass="text-danger"/>
        </div>

        <!-- Họ và Tên chia thành 2 cột trên cùng một hàng -->
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="hoTen">Họ</label>
                <form:input type="text" id="hoTen" path="ho" class="form-control"/>
                <form:errors path="ho" cssClass="text-danger"/>
            </div>
            <div class="form-group col-md-6">
                <label for="ten">Tên</label>
                <form:input type="text" id="ten" path="ten" class="form-control"/>
                <form:errors path="ten" cssClass="text-danger"/>
            </div>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input type="email" id="email" path="email" class="form-control"/>
            <form:errors path="email" cssClass="text-danger"/>
        </div>
        <div class="form-group">
            <label for="diaChi">Địa Chỉ</label>
            <form:input type="text" id="diaChi" path="dia_chi" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="maVi">Mã Ví</label>
            <form:input type="text" id="maVi" path="ma_vi" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="privateKey">Private Key</label>
            <form:input type="text" id="privateKey" path="privateKey" class="form-control"/>
        </div>

        <!-- Vai Trò và Trạng Thái chia thành 2 cột trên cùng một hàng -->
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="trangThai">Trạng Thái</label>
                <form:select path="trang_thai" id="trangThai" class="form-control">
                    <form:option value="1">Hoạt động</form:option>
                    <form:option value="0">Không hoạt động</form:option>
                </form:select>
            </div>
            <div class="form-group col-md-6">
                <label for="vaiTro">Vai Trò</label>
                <form:select id="vaiTro" name="vaiTro" path="vai_tro" class="form-control">
                    <option value="user">User</option>
                </form:select>
            </div>
        </div>

        <!-- Nút hành động -->
        <div class="form-actions">
            <button type="submit" class="btn btn-primary btn-custom" formaction="/admin/them">Thêm</button>
            <button type="submit" class="btn btn-warning btn-custom" formaction="/admin/sua">Sửa</button>
            <button type="submit" class="btn btn-danger btn-custom" formaction="/delete/${item.id_nd}">Xóa</button>
            <button type="submit" class="btn btn-success btn-custom" formaction="/admin/reset">Trống</button>
        </div>
    </form:form>
</div>

