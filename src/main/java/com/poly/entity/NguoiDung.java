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
@Table(name = "nguoidung")
public class NguoiDung {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_nd;

    @Column(nullable = false)
    private String ten_dang_nhap;

    @Column(nullable = false)
    private String mat_khau;

    private String ho;
    private String ten;
    private String vai_tro;

    @Column(nullable = false)
    private String email;

    private String dia_chi;
    private String mo_ta;
    private String hinh_anh;
    private String ma_vi;

    @Column(name = "private_key")
    private String privateKey;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH")
    private Date ngay_tao;

    @Column(columnDefinition = "int default 1")
    private Integer trang_thai;
}
