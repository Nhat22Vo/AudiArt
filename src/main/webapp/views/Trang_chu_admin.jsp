<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    <style>
        body {
            display: flex;
            min-height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
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
            width: 100%;
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
    </style>
</head>
<body>
    <div class="sidebar">
        <h2 class="text-center">AudiArt</h2>
        <a href="/admin_nguoidung"><i class="fas fa-tachometer-alt"></i> Quản lý người dùng</a>
        <a href="/admin_quanlinghesy"><i class="fas fa-box"></i> Quản lý nghệ sỹ</a>
        <a href="/admin_quantrivien"><i class="fas fa-chart-bar"></i> Quản lý quản trị viên</a>
        <a href="/admin_quanlibaihat"><i class="fas fa-edit"></i> Quản lý bài hát</a>
        <a href="#ui-elements"><i class="fas fa-layer-group"></i> Quản lý hoạt động</a>
        <a href="#menu-levels"><i class="fas fa-sitemap"></i> Quản lý NFT</a>
        <a href="#customize"><i class="fas fa-cogs"></i> Quản lý giao dịch</a>
        <a href="#customize"><i class="fas fa-cogs"></i> Cài đặt</a>
    </div>
