<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Custom CSS -->
<style>
    .form-container {
        max-width: 1000px;
        margin: auto;
        padding: 20px;
        background-color: #f9f9f9;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .form-header {
        text-align: center;
        margin-bottom: 20px;
    }

    .form-actions {
        text-align: center;
    }

    .btn-custom {
        margin: 0 5px;
    }

    .alert {
        margin-bottom: 20px;
    }

    .hidden {
        display: none;
    }
</style>

<!-- Custom JavaScript -->
<script>
    function handleTheLoaiChange(selectElement) {
        const textInput = document.getElementById('theLoaiText');
        const selectInput = document.getElementById('theLoaiSelect');
        const resetBtn = document.getElementById('resetBtn');

        if (selectElement.value === 'other') {
            // Show the text input and hide the dropdown
            textInput.classList.remove('hidden');
            selectInput.classList.add('hidden');
            resetBtn.classList.remove('hidden');
            // Clear the dropdown value
            selectElement.value = '';
        }
    }

    function resetTheLoai() {
        const textInput = document.getElementById('theLoaiText');
        const selectInput = document.getElementById('theLoaiSelect');
        const resetBtn = document.getElementById('resetBtn');

        // Hide the text input and show the dropdown
        textInput.classList.add('hidden');
        selectInput.classList.remove('hidden');
        resetBtn.classList.add('hidden');
        // Clear the text input value
        textInput.value = '';
    }
</script>

<!-- Hiển thị thông báo thành công -->
<c:if test="${not empty message}">
    <div class="alert alert-success">
        <p>${message}</p>
    </div>
</c:if>

<!-- Hiển thị các thông báo lỗi -->
<div class="form-container">
    <form:form action="/admin/them" method="post" modelAttribute="item">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="maBaiHat">Mã Bài Hát</label>
                <form:input path="ma_bai_hat" id="maBaiHat" class="form-control" />
                <form:errors path="ma_bai_hat" cssClass="text-danger"></form:errors>
            </div>
            <div class="form-group col-md-6">
                <label for="tieuDe">Tiêu Đề</label>
                <form:input path="tieu_de" id="tieuDe" class="form-control" />
                <form:errors path="tieu_de" cssClass="text-danger"></form:errors>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="fileMidiBeat">File MIDI/Beat</label>
                <form:input path="file_midi_beat" id="fileMidiBeat" class="form-control" />
                <form:errors path="file_midi_beat" cssClass="text-danger"></form:errors>
            </div>
            <div class="form-group col-md-6">
                <label for="ngayPhatHanh">Ngày Phát Hành</label>
                <form:input path="ngay_phat_hanh" id="ngayPhatHanh" type="date" class="form-control" />
                <form:errors path="ngay_phat_hanh" cssClass="text-danger"></form:errors>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="hinhAnh">Hình Ảnh</label>
                <form:input path="hinh_anh" id="hinhAnh" class="form-control" />
                <form:errors path="hinh_anh" cssClass="text-danger"></form:errors>
            </div>
            <div class="form-group col-md-6">
                <label for="nguoiTao">Người Tạo</label>
                <form:input path="nguoi_tao" id="nguoiTao" class="form-control" />
                <form:errors path="nguoi_tao" cssClass="text-danger"></form:errors>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="soLuotNghe">Số Lượt Nghe</label>
                <form:input path="so_luot_nghe" id="soLuotNghe" type="number" class="form-control" />
                <form:errors path="so_luot_nghe" cssClass="text-danger"></form:errors>
            </div>
            <div class="form-group col-md-6">
                <label for="soLuotThich">Số Lượt Thích</label>
                <form:input path="so_luot_thich" id="soLuotThich" type="number" class="form-control" />
                <form:errors path="so_luot_thich" cssClass="text-danger"></form:errors>
            </div>
        </div>

        <div class="form-row">
            <!-- Thể Loại -->
            <div class="form-group col-md-6">
                <label for="theLoaiSelect">Thể Loại</label>
                <!-- Dropdown select -->
                <form:select path="the_loai" id="theLoaiSelect" class="form-control" onchange="handleTheLoaiChange(this)">
                    <option value="" disabled selected>Hãy chọn thể loại</option>
                    <option value="Pop">Pop</option>
                    <option value="Rock">Rock</option>
                    <option value="Jazz">Jazz</option>
                    <option value="Classical">Classical</option>
                    <option value="other">Khác...</option>
                </form:select>
                <!-- Text input for custom genre, hidden initially -->
                <input type="text" id="theLoaiText" path="the_loai" class="form-control hidden" placeholder="Nhập thể loại khác" />
                <form:errors path="the_loai" cssClass="text-danger"></form:errors>
                <!-- Reset button, hidden initially -->
                <button type="button" id="resetBtn" class="btn btn-warning btn-custom hidden" onclick="resetTheLoai()">Chọn Lại</button>
            </div>

            <!-- Trạng Thái -->
            <div class="form-group col-md-6">
                <label for="trangThai">Trạng Thái</label>
                <form:select path="trang_thai" id="trangThai" class="form-control">
                    <option value="1">Hoạt động</option>
                    <option value="0">Không hoạt động</option>
                </form:select>
                <form:errors path="trang_thai" cssClass="text-danger"></form:errors>
            </div>
        </div>


        <!-- Form actions -->
        <div class="form-actions">
            <button type="submit" class="btn btn-primary btn-custom" formaction="/admin_quanlibaihat/them">Thêm</button>
            <button type="submit" class="btn btn-warning btn-custom" formaction="/editbh/sua">Sửa</button>
            <button type="submit" class="btn btn-danger btn-custom" formaction="/admin_delete/${item.id_baihat}">Xóa</button>
            <button type="submit" class="btn btn-success btn-custom" formaction="/admin_quanlibaihat/reset">Trống</button>
        </div>
    </form:form>
</div>
