
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!-- Custom CSS -->
<style>
    .status-active {
        color: green;
        font-weight: bold;
    }

    .status-inactive {
        color: yellow;
        font-weight: bold;
    }

    /* Tùy chỉnh bảng */
    #adminTable {
        width: 100%;
        border-collapse: collapse;
    }

    #adminTable th, #adminTable td {
        text-align: center;
        padding: 10px;
    }

    #adminTable thead {
        background-color: #f8f9fa;
    }
</style>

    <table id="adminTable" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Mã Bài Hát</th>
                            <th>Tiêu Đề</th>
                            <th>File MIDI/Beat</th>
                            <th>Ngày Phát Hành</th>
                            <th>Hình Ảnh</th>
                            <th>Người Tạo</th>
                            <th>Số Lượt Nghe</th>
                            <th>Số Lượt Thích</th>
                            <th>Thể Loại</th>
                            <th>Trạng Thái</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                       <c:forEach var="item" items="${items}">
    <tr>
        <td><c:out value="${item.id_baihat}"/></td>
        <td><c:out value="${item.ma_bai_hat}"/></td>
        <td><c:out value="${item.tieu_de}"/></td>
        <td><c:out value="${item.file_midi_beat}"/></td>
        <td><c:out value="${item.ngay_phat_hanh}"/></td>
        <td><c:out value="${item.hinh_anh}"/></td>
        <td><c:out value="${item.nguoi_tao.ten}"/></td>
        <td><c:out value="${item.so_luot_nghe}"/></td>
        <td><c:out value="${item.so_luot_thich}"/></td>
        <td><c:out value="${item.the_loai}"/></td>
        <!-- Điều kiện hiển thị màu sắc trạng thái -->
        <td class="${item.trang_thai == 1 ? 'status-active' : 'status-inactive'}">
            <c:out value="${item.trang_thai == 1 ? 'Hoạt động' : 'Không hoạt động'}"/>
        </td>
        <td>
            <button class="btn btn-sm btn-info">
                <a href="/editbh/${item.id_baihat}" style="color: white;">Chọn </a>
            </button>
        </td>
    </tr>
</c:forEach>

                    </tbody>
                </table>