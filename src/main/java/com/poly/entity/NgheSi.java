package com.poly.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.Date;

@Entity
@Data
@Table(name = "nghesi")
public class NgheSi {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_ns;

    @NotBlank(message = "Tên đăng nhập không được để trống")
    @Size(min = 5, max = 50, message = "Tên đăng nhập phải có từ 5 đến 50 ký tự")
    @Column(nullable = false)
    private String ten_dang_nhap;

    @NotBlank(message = "Mật khẩu không được để trống")
    @Size(min = 5, message = "Mật khẩu phải có ít nhất 5 ký tự")
    @Column(nullable = false)
    private String mat_khau;

    @NotBlank(message = "Họ không được để trống")
    private String ho;

    @NotBlank(message = "Tên không được để trống")
    private String ten;

    private String vai_tro;

    @NotBlank(message = "Email không được để trống")
    @Email(message = "Email không hợp lệ")
    @Column(nullable = false)
    private String email;

    private String dia_chi;
    private String mo_ta;
    private String hinh_anh;
    private String ma_vi;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date ngay_tao;

    @ManyToOne
    @JoinColumn(name = "nguoi_them")
    private QuanTri nguoi_them;

    @Column(columnDefinition = "int default 1")
    private Integer trang_thai;
}
