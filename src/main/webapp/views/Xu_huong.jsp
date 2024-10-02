<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.9.1/font/bootstrap-icons.min.css">
    <style>
        .trending-card {
            width: 170px;
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            text-align: center; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 13px;
            position: relative;
            transition: transform 0.3s;
        }
        .trending-card:hover {
            transform: scale(1.05);
        }
        .trending-card img {
            width: 100%;
            height: auto;
        }
        .trending-card .card-body {
            padding: 12px;
        }
        .trending-card .play-icon {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            font-size: 32px;
            background: rgba(255, 0, 0, 0.7);
            border-radius: 50%;
            padding: 4px;
            opacity: 0;
            transition: opacity 0.3s;
            width: 55px;
        }
        .trending-card .overlay {
            position: relative;
        }
        .trending-card:hover .play-icon {
            opacity: 1;
        }
        .trending-card .icon-bar {
            display: flex;
            justify-content: space-around;
            padding: 8px;
            background: #f8f9fa;
        }
        .trending-card .icon-bar i {
            cursor: pointer;
            transition: color 0.3s;
        }
        .trending-card .icon-bar i:hover {
            color: red;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="mt-4">Thịnh hành</h2>
    <div class="d-flex flex-wrap">
        <c:forEach var="p" items="${listBaiHat}" >
            <div class="trending-card">
                <div class="overlay">
                    <img src="/views/anh/${p.hinh_anh}" alt="Trending Music">
                    <a href="/baihat/${p.id_baihat}" class=" play-icon"> <i class="bi bi-music-note"></i> </a>
                </div>
               
                <div class="card-body">
                    <h5 class="card-title">${p.tieu_de}</h5>
                    <p class="card-text">${p.nguoi_tao.ho} ${p.nguoi_tao.ten}</p>
                    <h5 class="card-title">${p.file_midi_beat} j</h5>
                </div>
                <div class="icon-bar">
                <button style="border: 0.1px; border-radius: 50px;"><i class="bi bi-heart"></i></button>
                    <button style="border: 0.1px; border-radius: 50px;"> <i class="bi bi-person-plus"></i></button>
                   
                    <i class="bi bi-three-dots"></i>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
