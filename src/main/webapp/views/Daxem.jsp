<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Next pro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
 
</head>

<body>
 <div class="fixed-header">
  <!-- chức năng -->
  <jsp:include page="Chuc_nang.jsp"/>
  </div>
 
  <div class="containerf" style="width: 1200px; margin: 0 auto;">
    
    <div class="bentrai" style="width: 68%; height: 2000px;  float: left; border: 0.1px solid rgb(241, 240, 240);">
      <div class="ofm" style="width: 815px; height: 280px; ">
      
       <!-- Xu hướng -->
       <jsp:include page="Bai_hat_moi_khi_theo_doi.jsp"/>

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
