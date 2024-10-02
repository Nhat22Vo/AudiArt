<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <style>
        .banner {
            background-color: #333333; /* SoundCloud orange */
            color: white;
            padding: 20px;
            text-align: center;
            background-image: url('src/img/wallpaperflare.com_wallpaper.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            border-radius: 5px;
            margin-top: 20px;
            overflow: hidden; /* Ensure image stays within border-radius */
        }

        .banner h1 {
            font-size: 2rem;
            margin-bottom: 15px;
        }

        .banner p {
            margin-bottom: 10px;
        }

        .banner img {
            width: 100%; /* This style is no longer needed */
        }

        .plans {
            margin-top: 50px;
        }

        .plans h1 {
            margin-bottom: 30px;
        }

        .plan-card {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .plan-card h3,
        .plan-card h4 {
            margin-bottom: 15px;
        }

        .plan-card p {
            margin-bottom: 10px;
        }

        .table-first tbody tr,
        .table-second tbody tr,
        .table-third tbody tr {
            height: 50px;
            /* Adjust this value as needed */
        }
    </style>
</head>

<body ng-app="app" ng-controller="ctrl">
 <div class="fixed-header">
  <!-- chức năng -->
  <jsp:include page="Chuc_nang.jsp"/>
  </div>
 
  <div class="containerf" style="width: 1200px; margin: 0 auto;">
    
    <div class="bentrai" style="width: 68%; height: 2000px;  float: left; border: 0.1px solid rgb(241, 240, 240);">
      <div class="ofm" style="width: 815px; height: 280px; ">
      
       <!-- Xu hướng -->
       <jsp:include page="Xu_huong.jsp"/>

  </div>
  <!-- Add more cards as needed -->
</div>
 



 <div class="benphai"style="position: fixed; right: 0;top: 70px; bottom: 70px  width: 34%; overflow-y: auto; margin-right: 160px;" >

 
    <div class="listening-history" style="width: 360px;">
    <!-- Lích sữ nghe -->
       <jsp:include page="Lich_su_nghe.jsp"/>
    </div>
</div>
</div>
        <footer>
    <div class="fixed-footer bg-secondary">
     
     <!--Âm nhạc-->
       <h6><jsp:include page="Am_nhac.jsp"/></h6>
  
    </div>
  </footer>
  
 
</body>

</html>


