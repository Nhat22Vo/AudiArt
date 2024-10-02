<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SoundCloud for Artists</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom Styles */
        body {
            font-family: SoundCloudSans, system-ui, -apple-system, "Segoe UI", Roboto, "Lucida Grande", sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
            background-color: #f2f2f2;
        }

        .header {
            
            top: 0;
            width: 100%;
            z-index: 1000;
            padding: 10px 20px;
        }

        .header .logo img {
            width: 60px;
            height: auto;
        }

        .user-profile img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }

        .sidebar {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 70px;
            bottom: 0;
            overflow-y: auto;
            width: 250px;
        }

        .main-content {
            margin-left: 270px;
            padding-top: 70px;
        }

        .content-section {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .btn-custom {
            background-color: #ff5500;
            color: #fff;
            text-transform: uppercase;
            border-radius: 5px;
        }

        .btn-custom:hover {
            background-color: #e04a00;
        }
    </style>
</head>

<body>
    <!-- Header -->
    <header class="header py-2 fixed-top d-flex justify-content-between align-items-center bg-dark ">
        <div class="logo">
         <a href="/trangchu"> <img src="./views/anh/logochinh.png" alt="SoundCloud Logo" style="height: 30px; width: 100px "></a>  
        </div>
        <div class="user-profile d-flex align-items-center">
            <span class="mr-2" style="color: white;" >Welcome,Hữu Lộc</span>
            <img src="./views/anh/logochinh.png" alt="User Avatar" style="height: 30px; width: 100px ">
        </div>
    </header>

    <!-- Sidebar -->
    <aside class="sidebar">
        <nav class="nav flex-column">
            <a class="nav-link active" href="#">Overview</a>
            <a class="nav-link" href="#">Tracks</a>
            <a class="nav-link" href="#">Distribution</a>
            <a class="nav-link" href="#">Comments</a>
            <a class="nav-link" href="#">Fans <span class="badge badge-secondary">Beta</span></a>
            <a class="nav-link" href="#">Monetization</a>
            <a class="nav-link" href="#">Earnings</a>
            <a class="nav-link" href="#">Promotion</a>
            <a class="nav-link" href="#">Insights</a>
            <a class="nav-link" href="#">Profile Control</a>
            <a class="nav-link" href="#">Benefits</a>
            <a class="nav-link" href="#">Membership</a>
        </nav>
    </aside>

    <!-- Main Content -->
    <main class="main-content container">
        <!-- Artist Profile -->
        <section class="content-section">
            <h2>19_ Nguyễn Hữu Lộc,</h2>
            <img src="./views/anh/album5.jpg" class="img-fluid mb-3" alt="Profile Image" style="height: 300px; border-radius: 50% " >
            <p>One of the best ways to increase your stream count is by connecting with your fans. Get started by sending them messages, sharing links to your new tracks, or replying to comments.</p>
        </section>

        <!-- Streams -->
        <section class="content-section">
            <h2>Streams</h2>
            <p>Get daily stream counts from around the world.</p>
            <img src="./views/anh/album9.jpg" class="img-fluid mb-3" alt="Streams"  style="height: 180px; width: 180px" >
            <button class="btn btn-custom">Upload tracks to SoundCloud</button>
        </section>

        <!-- Recent Releases -->
        <section class="content-section">
            <h2>Recent releases</h2>
            <p>Distribute music to streaming services.</p>
                       <img src="./views/anh/album6.jpg" class="img-fluid mb-3" alt="Streams"  style="height: 180px; width: 180px" >
            <button class="btn btn-custom">Upload now</button>
        </section>

        <!-- Revenue -->
        <section class="content-section">
            <h2>Revenue</h2>
            <p>Last month <span>-</span> - <span>5</span> - <span>Last 12 months</span></p>
            <img src="./views/anh/album7.jpg" class="img-fluid mb-3" alt="Streams"  style="height: 180px; width: 180px" >
            <button class="btn btn-custom">Start earning royalties from your music</button>
        </section>

        <!-- Top Tracks -->
        <section class="content-section">
            <h2>Top tracks on SoundCloud</h2>
            <p>Last month <span>-</span> - <span>5</span> - <span>Last 12 months</span></p>
            <img src="./views/anh/album11.jpg" class="img-fluid mb-3" alt="Streams"  style="height: 180px; width: 180px" >
            <button class="btn btn-custom">See what tracks are trending</button>
        </section>
    </main>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
