<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý người dùng</title>
    <style>
        body {
            display: flex;
            min-height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            width: 1400px;
        }
        .sidebar {
            width: 250px;
            background-color: #343a40;
            color: #fff;
            height: 100vh;
            position: fixed;
            padding-top: 20px;
        }
        .sidebar a {
            color: #fff;
            text-decoration: none;
            display: block;
            padding: 10px 20px;
            margin-bottom: 5px;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        .sidebar .active {
            background-color: #28a745;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
            width: calc(100% - 250px);
        }
        .navbar {
            background-color: #f8f9fa;
        }
        .navbar .navbar-brand {
            margin-left: 250px;
        }
        .card {
            margin-bottom: 20px;
        }
        .header-icons {
            display: flex;
            align-items: center;
        }
        .header-icons a, .header-icons button {
            color: #495057;
            margin-right: 10px;
        }
        .header-icons a:hover, .header-icons button:hover {
            color: #007bff;
        }
        .table-container {
            width: 100%;
            max-width: 1000px; /* Thay đổi kích thước của bảng */
            overflow-x: auto; /* Để cuộn ngang nếu cần thiết */
            margin: auto;
        }
        .action-buttons {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .search-bar {
            display: flex;
        }
        .search-bar input {
            margin-right: 10px;
        }
    </style>

    <div class="content">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="/admin">Quản lý album</a>
            <form class="form-inline ml-auto">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            </form>
            <div class="header-icons">
                <a href="/trangchu"><i class="fas fa-home"></i> Trang chủ</a>
                <a href="#"><i class="fas fa-star"></i> Tải xuống .zip</a>
                <a href="#"><i class="fas fa-bell"></i></a>
                <a href="#"><i class="fas fa-user"></i></a>
            </div>
        </nav>
        <div class="container mt-5">
            <div class="table-container p-4 bg-white">
                <div class="action-buttons">
                    <div class="search-bar">
                        <input type="text" id="searchInput" class="form-control" placeholder="Tìm kiếm...">
                        <button class="btn btn-secondary" onclick="searchTable()"><i class="fas fa-search"></i> Tìm kiếm</button>
                    </div>
                    <div>
                        <button class="btn btn-warning"><i class="fas fa-user-plus"></i> Thêm mới</button>
                    </div>
                </div>
                <h2 class="mb-3 text-center">Danh Sách Quản lý người dùng</h2>
                <table id="adminTable" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên Đăng Nhập</th>
                            <th>Họ và Tên</th>
                            <th>Giới Tính</th>
                            <th>Ngày Sinh</th>
                            <th>Email</th>
                            <th>Địa Chỉ</th>
                            <th>Mật Khẩu</th>
                            <th>Hình Ảnh</th>
                            <th>Tiểu Sử</th>
                            <th>Địa Chỉ Ví</th>
                            <th>Ngày Tạo</th>
                            <th>Trạng Thái</th>
                            <th>Vai Trò</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>admin</td>
                            <td>Nguyễn Văn A</td>
                            <td>Nam</td>
                            <td>1990-01-01</td>
                            <td>admin@example.com</td>
                            <td>123 Đường ABC, TP.HCM</td>
                            <td>••••••••</td>
                            <td>image.jpg</td>
                            <td>Quản trị viên hệ thống</td>
                            <td>1234567890</td>
                            <td>2023-01-01</td>
                            <td>Hoạt động</td>
                            <td>QuanTriVien</td>
                            <td>
                                <div class="btn-group">
                                    <button class="btn btn-primary"><i class="fas fa-edit"></i> Sửa</button>
                                    <button class="btn btn-danger"><i class="fas fa-trash"></i> Xóa</button>
                                </div>
                            </td>
                        </tr>
                        <!-- Repeat the above <tr> block for more administrators -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
   

