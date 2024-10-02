<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modular Admin</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
<!--  Khung quản lí -->
    <jsp:include page="Trang_chu_admin.jsp"/>
    <!--  Khung quản lí người dùng-->
      <jsp:include page="Trang_chu_admin_quan_li_nguoi_dung.jsp"/>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        const ctx = document.getElementById('historyChart').getContext('2d');
        const historyChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['2015-09-02', '2015-09-03', '2015-09-04', '2015-09-06'],
                datasets: [{
                    label: 'Number of unique visits',
                    data: [63, 66, 62, 75],
                    backgroundColor: 'rgba(40, 167, 69, 0.2)',
                    borderColor: 'rgba(40, 167, 69, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                scales: {
                    x: {
                        beginAtZero: true
                    },
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
</body>
</html>
