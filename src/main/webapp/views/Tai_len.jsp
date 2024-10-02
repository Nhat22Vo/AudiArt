<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload</title>
    <style>
        .upload {
            margin-top: 50px;
        }
        .upload h1 {
            margin-bottom: 30px;
        }
        .upload-card {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
        }
        .upload-card h3, .upload-card h4 {
            margin-bottom: 15px;
        }
        .upload-card p {
            margin-bottom: 10px;
        }
        /* Custom CSS for horizontal radio buttons */
        .radioGroup.horizontal {
            display: flex;
            justify-content: center;
            align-items: center; /* Align items vertically */
        }
        .radioGroup.horizontal .form-check {
            margin-right: 20px; /* Adjust spacing between radio buttons */
        }
        @media (max-width: 576px) {
            /* Adjustments for small screens */
            .radioGroup.horizontal .form-check {
                margin-right: 10px;
                margin-bottom: 10px; /* Adjust spacing for smaller screens */
            }
        }
    </style>
</head>
<body>
    <div class="container upload">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8">
                <div class="container mt-5">
                    <div class="border p-4 rounded">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="progress" role="progressbar" aria-label="Basic example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                                    <div class="progress-bar" style="width: 0%"></div>
                                </div>
                                <div class="text-primary mb-3">
                                    0% of free uploads used
                                    <div class="quotaMeter__dropdownButton"></div>
                                </div>
                                <div class="bg-dark">
                                    <div class="bg-orange" style="clip-path: polygon(0 0, 0% 0%, 0% 100%, 0% 100%)"></div>
                                </div>
                                <div class="mb-3">
                                    <a href="/nextpro" target="_blank" class="quotaMeter__link">Try Next Pro</a> to get unlimited uploads.
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="ms-5">
                                    <a class="btn btn-outline-primary" href="/nextpro" target="_blank">Try Next Pro <i class="bi bi-rocket"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container upload-card text-center mt-3">
                    <div class="mt-5">
                        <h3>Kéo và thả các bản nhạc và album của bạn vào đây</h3>
                    </div>
                    <form action="/upload" method="post" enctype="multipart/form-data">
                        <label for="fileUpload" class="btn btn-primary mt-3">
                            Chọn file để tải lên <i class="bi bi-upload"></i>
                            <input type="file" id="fileUpload" name="fileUpload" style="display: none;">
                        </label>
                        <div class="mt-3">
                            <input class="form-check-input" type="checkbox" checked> Tạo danh sách phát khi nhiều tệp được chọn
                        </div>
                        <div class="mt-4">
                            <div class="radioGroup horizontal">
                                <span class="radioGroup_title sc-text-h4">Privacy:</span>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="public" name="privacy" id="publicRadio">
                                    <label class="form-check-label" for="publicRadio">Public <i class="bi bi-unlock"></i></label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="private" name="privacy" id="privateRadio">
                                    <label class="form-check-label" for="privateRadio">Private <i class="bi bi-lock"></i></label>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success mt-3">Upload <i class="bi bi-cloud-upload"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
