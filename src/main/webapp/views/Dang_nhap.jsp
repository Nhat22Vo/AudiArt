<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.9.1/font/bootstrap-icons.min.css">

    <style>
        .login-form {
            max-width: 700px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin-top: 50px;
        }

        .login-form .form-group {
            margin-bottom: 15px;
        }

        .login-form .form-control {
            height: calc(2.25rem + 10px);
        }

        .login-form .btn {
            width: 100%;
        }

        .login-form .form-check {
            margin-bottom: 15px;
        }

        .login-form .text-right {
            text-align: right;
        }

        .login-form .text-center a {
            color: red;
        }

        .login-form .text-center a:hover {
            text-decoration: none;
        }

        .login-form .icon {
            margin-right: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="container-fluid">
        <div class="login-form">
            <!-- Hiển thị thông báo lỗi từ controller -->

            <h2 class="text-center"><i class="bi bi-person-circle"></i> Đăng Nhập</h2>
            <b> <i style="color: red">${message}${param.error}</i></b>
            <p>
            <form action="/dangnhap" method="post">
                <div class="form-group">
                    <label for="hoVaTen"><i class="bi bi-phone icon"></i> Nhập tên </label>
                    <input type="text" class="form-control" id="phoneNumber" name="tenDangNhap"
                           placeholder="Số điện thoại"
                           required>
                </div>
                <div class="form-group">
                    <label for="password"><i class="bi bi-lock icon"></i> Nhập mật khẩu</label>
                    <input type="password" class="form-control" id="password" name="matKhau" placeholder="Mật khẩu"
                           required>
                    <small class="form-text text-right">
                        <a href="/quenmatkhau"><i class="bi bi-key icon"></i> Quên mật khẩu?</a>
                    </small>
                </div>
                <div class="row justify-content-center">
                    <div class="col-4">
                        <button type="submit" class="btn btn-danger"><i class="bi bi-box-arrow-in-right"></i> Đăng nhập
                        </button>
                    </div>
                    <div class="col-4">
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile openid&redirect_uri=http://localhost:9999/trangchu&response_type=code&client_id=188735233699-grpbdfailsflahui00gpci9cvd2krm3p.apps.googleusercontent.com&approval_prompt=force"
                           type="button" class="btn btn-outline-danger">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-google"
                                 viewBox="0 0 16 16">
                                <path d="M15.545 6.558a9.4 9.4 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.7 7.7 0 0 1 5.352 2.082l-2.284 2.284A4.35 4.35 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.8 4.8 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.7 3.7 0 0 0 1.599-2.431H8v-3.08z"></path>
                            </svg>
                            Sign with Google
                        </a></div>
                </div>
            </form>
            <div class="text-center mt-3">
                <p>Bạn chưa có tài khoản? <a href="/dangki"><i class="bi bi-person-plus icon"></i> Đăng ký ngay</a></p>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
