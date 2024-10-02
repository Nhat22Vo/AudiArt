   <%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

 <style>
    body   {
      padding-top: 70px; /* Padding to push the content below the fixed header */
      padding-bottom: 70px; /* Padding to push the content above the fixed footer */
    }
    .fixed-header, .fixed-footer {
      width: 100%;
      position: fixed;
      z-index: 1000;
      height: 45px;
    }
    .fixed-header {
      top: 0;
    }
    .fixed-footer {
      bottom: 0;
    }
   
  </style>

<header class="navbar navbar-expand-lg navbar-dark bg-dark" style="height: 48px;">
    <a class="navbar-brand" href="#" style="padding: 8px 14px; margin-left: 30px;">
        <img src="./views/anh/logochinh.png" style="width: 130px; height: 40px;" alt="Logo">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/trangchu">Trang chủ</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/daxem">Đã xem</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/thuvien">Thư viện</a>
            </li>
            <li class="nav-item">
                <form class="form-inline my-2 my-lg-0" style="padding-top: 7px;">
                    <input class="form-control mr-sm-2" type="search" style="width: 500px; height: 30px; margin-left: 5px" placeholder="Tìm kiếm nghệ sĩ, bang nhạc, bản nhạc" aria-label="Search">
                </form>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" style="color: yellow; margin-left: 41px" href="/nextpro">Sử dụng Next Pro</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/danhchonghesi">Danh cho Nghệ Sĩ</a>
            </li>
           
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img alt="" src="./views/anh/song21.jpg" style="border-radius: 50%; height: 25px; width: 25px;">
                </a>
                <div class="dropdown-menu" aria-labelledby="profileDropdown">
                   
                     <a href="/hoso" class="dropdown-item"><i class="fas fa-user-circle"></i>Hồ sơ</a>
                        <a href="#" class="dropdown-item"><i class="fas fa-heart"></i> Likes</a>
                        <a href="#" class="dropdown-item"><i class="fas fa-headphones-alt"></i> Station</a>
                        <a href="#" class="dropdown-item"><i class="fas fa-user-friends"></i> Who to follow</a>
                        <a href="#" class="dropdown-item"><i class="fas fa-bolt"></i> Try Next Pro</a>
                        <a href="#" class="dropdown-item"><i class="fas fa-music"></i> Tracks</a>
                        <a href="#" class="dropdown-item"><i class="fas fa-share-alt"></i> Distribute</a>
                </div>
            </li>
             <li class="nav-item">
                <a class="nav-link" href="/tailen">Tải lên</a>
            </li>
           
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="moreDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ☰
                </a>
                <div class="dropdown-menu" aria-labelledby="moreDropdown">
                     <a class="dropdown-item" href="#">About Us</a>
                        <a class="dropdown-item" href="#">Legal</a>
                        <a class="dropdown-item" href="#">Copyright</a>
                        <a class="dropdown-item" href="#">For Creator</a>
                        <a class="dropdown-item" href="#">Developers</a>
                        <a class="dropdown-item" href="#">Support</a>
                </div>
            </li>
             <li class="nav-item">
                <a class="nav-link" href="#">🔔</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">✉️</a>
            </li>
        </ul>
    </div>
</header>