   <%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fixed Header and Footer Example</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../css/daxem.css">
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
   <style>
    .listening-history {
        border: 1px solid #ddd;
        padding: 10px;
        border-radius: 5px;
    }
    .song-item {
        display: flex;
        align-items: center;
        margin-bottom: 10px;
    }
    .song-item img {
        width: 50px;
        height: 50px;
        margin-right: 10px;
        border-radius: 5px;
    }
    .song-info {
        flex-grow: 1;
    }
    .song-info h5, .song-info p {
        margin: 0;
    }
    .song-stats {
        display: flex;
        align-items: center;
    }
    .song-stats span {
        margin-right: 10px;
        display: flex;
        align-items: center;
    }
    .footer-links a {
        margin-right: 10px;
        font-size: 0.9em;
        color: #999;
    }
</style>
<style>
.track-card {
    max-width: 800px;
    margin: 20px auto;
   
    padding: 10px; /* Adjusted for smaller size */
   
}

.track-card img {
    border-radius: 50%;
}
.track-details-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.track-card .track-details {
    display: flex;
    align-items: center;
}
.track-card .track-details img {
    width: 30px; /* Reduced size */
    height: 30px; /* Reduced size */
    margin-right: 10px; /* Reduced size */
}
.waveform-container {
    position: relative;
    width: 40%;
    height: 40px; /* Reduced size */
    background-color: #f0f0f0;
    display: flex;
    align-items: flex-end;
    overflow: hidden;
}
.waveform-bar {
    width: 1px; /* Reduced size */
    background: #333;
    margin-right: 0.5px; /* Reduced size */
    animation: bounce 1s infinite;
}
@keyframes bounce {
    0%, 100% {
        transform: scaleY(1);
    }
    50% {
        transform: scaleY(0.5);
    }
}
.duration {
    position: absolute;
    right: 5px; /* Reduced size */
    bottom: 5px; /* Reduced size */
    background: rgba(0, 0, 0, 0.7);
    color: white;
    padding: 1px 3px; /* Reduced size */
    border-radius: 5px;
    font-size: 10px; /* Reduced size */
}
.media img {
    width: 30px; /* Reduced size */
    height: 30px; /* Reduced size */
}
.media-body h5 {
    font-size: 14px; /* Reduced size */
}
.badge {
    font-size: 10px; /* Reduced size */
}
.btn-sm {
    font-size: 10px; /* Reduced size */
    padding: 2px 5px; /* Reduced size */
}
</style>
</head>
<body>
  <div class="fixed-header">
   <!-- chức năng -->
  <jsp:include page="Chuc_nang.jsp"/>
  </div>
  <div class="container"> <jsp:include page="Anh_ho_so.jsp"/></div>
 

  <div class="containerf" style="width: 1200px; margin: 0 auto;">
    
    <div class="bentrai" style="width: 68%; height: 2000px;  float: left; border: 0.1px solid rgb(241, 240, 240);">
      <div class="ofm" style="width: 815px; height: 280px; ">
      <!--Nghe các bài đăng mới nhất từ ​​những người bạn đang theo dõi:-->
     
  <jsp:include page="Bai_hat_moi_khi_theo_doi.jsp"/>
  </div>
  <!-- Add more cards as needed -->
</div>



    </div>
    <div class="benphai" style=" right: 0; top: 70px;  bottom: 70px;  width: 34%;   overflow-y: auto;">
  
    <div class="listening-history" style="width: 360px;">
            <!-- Lích sữ nghe -->
       <jsp:include page="Lich_su_nghe.jsp"/>
    </div>
</div>


  <footer>
    <div class="fixed-footer bg-secondary">
       
     <!--Âm nhạc-->
       <jsp:include page="Am_nhac.jsp"/>
    </div>
  </footer>
  
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
