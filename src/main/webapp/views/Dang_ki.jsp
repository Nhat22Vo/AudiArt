<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Ký</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.9.1/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
          crossorigin="anonymous">
    <style>
        .register-form {
            max-width: 700px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
        }
        .register-form .form-group {
            margin-bottom: 15px;
        }
        .register-form .form-control {
            height: calc(2.25rem + 10px);
        }
        .register-form .btn {
            width: 100%;
        }
        .register-form .form-check {
            margin-bottom: 15px;
        }
        .register-form .text-right {
            text-align: right;
        }
        .register-form .icon {
            margin-right: 10px;
        }
    </style>
</head>
<body>
 <div class="container">
    <div class="register-form mt-5">
        <h2 class="text-center"><i class="bi bi-person-plus-fill icon"></i> Đăng Ký</h2>
        <form action="/dangki" method="post">
            <!-- Form fields -->
            <div class="form-group">
                <label for="hoVaTen"><i class="bi bi-person icon"></i> Nhập họ và tên</label>
                <input type="text" class="form-control" id="hoVaTen" name="fullName" placeholder="Họ và tên" required>
            </div>
            <div class="form-group">
                <label for="email"><i class="bi bi-envelope icon"></i> Nhập email </label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                <small class="form-text text-muted">Hóa đơn VAT khi mua hàng sẽ được gửi qua email này</small>
            </div>
            <div class="form-group">
                <label for="password"><i class="bi bi-lock icon"></i> Nhập mật khẩu</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu" required>
                <small class="form-text text-muted">Mật khẩu tối thiểu 6 ký tự, có ít nhất 1 chữ và 1 số. (VD: 12345a)</small>
            </div>
            <div class="form-group">
                <label for="confirmPassword"><i class="bi bi-lock-fill icon"></i> Nhập lại mật khẩu</label>
                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Nhập lại mật khẩu" required>
            </div>
            <div class="form-check">
                <input type="checkbox" name="acceptTerm" class="form-check-input" id="acceptTerm" required>
                <label class="form-check-label" for="acceptTerm"><i class="bi bi-check-circle icon"></i> Tôi đồng ý với các điều khoản bảo mật cá nhân</label>
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="acceptPromotion" name="acceptPromotion">
                <label class="form-check-label" for="acceptPromotion"><i class="bi bi-mortarboard icon"></i> Tôi là Học sinh - sinh viên <br> (nhận thêm ưu đãi tới 500k/ sản phẩm)</label>
            </div>
            <button type="submit" class="btn btn-danger"><i class="bi bi-person-plus"></i> Đăng ký</button>
            <div class="text-center mt-3">
                <button type="submit"><i class="bi bi-box-arrow-in-right"></i> Đăng nhập ngay</button>
            </div>
        </form>

      
      
    </div>
</div>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
