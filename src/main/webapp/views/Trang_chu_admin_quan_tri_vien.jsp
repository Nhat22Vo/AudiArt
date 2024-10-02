<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý quản trị viên</title>
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
        form {
            background: #fff;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        form .form-group {
            margin-bottom: 15px;
        }
        form .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        form .form-group input, form .form-group select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        form .form-actions {
            display: flex;
            justify-content: flex-end;
        }
        form .form-actions button {
            margin-left: 10px;
        }
    </style>
    <script>
        function resetForm() {
            document.getElementById("quanTriForm").reset();
        }

        function editQuanTri(id) {
            // Lấy dữ liệu quản trị viên từ bảng và điền vào form
            // Đây là nơi bạn sẽ viết mã để lấy dữ liệu và điền vào form
        }

        function deleteQuanTri(id) {
            // Thực hiện xóa quản trị viên với ID tương ứng
            // Đây là nơi bạn sẽ viết mã để xóa quản trị viên
        }
    </script>
</head>
<body>
    <div class="content">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="/admin">Quản lý quản trị viên</a>
            <form class="form-inline ml-auto">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            </form>
            <div class="header-icons">
                <a href="/trangchu"><i class="fas fa-home"></i> Đăng nhập</a>
                <a href="#"><i class="fas fa-star"></i> Tải xuống .zip</a>
                <a href="#"><i class="fas fa-bell"></i></a>
                <a href="#"><i class="fas fa-user"></i></a>
            </div>
        </nav>
        
        <div class="container mt-5">
                              <jsp:include page="form_quanly_quantrivien.jsp"/>

            <div class="table-container p-4 bg-white">
                <div class="action-buttons">
                    <div class="search-bar">
                        <input type="text" id="searchInput" class="form-control" placeholder="Tìm kiếm...">
                        <button class="btn btn-secondary" onclick="searchTable()"><i class="fas fa-search"></i> Tìm kiếm</button>
                    </div>
                  
                </div>
                <h2 class="mb-3 text-center">Danh Sách quản trị viên</h2>
                     <jsp:include page="table_quanly_quantrivien.jsp"/>
            </div>
        </div>
    </div>
</body>
</html>
                