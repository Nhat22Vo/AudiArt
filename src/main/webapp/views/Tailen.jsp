<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tai len</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
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

        .fixed-header {
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            background-color: #f8f9fa;
            border-bottom: 1px solid #e7e7e7;
        }

        .fixed-footer {
            position: fixed;
            width: 100%;
            bottom: 0;
            z-index: 1000;
            background-color: #f8f9fa;
            border-top: 1px solid #e7e7e7;
        }
    </style>
</head>

<body>
    <div class="fixed-header">
        <jsp:include page="Chuc_nang.jsp" />
    </div>

    <div class="container" style="margin-top: 60px; margin-bottom: 100px;">
        <jsp:include page="Tai_len.jsp" />
    </div>

    <footer class="fixed-footer bg-secondary">
      <h6><jsp:include page="Am_nhac.jsp"/></h6>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
