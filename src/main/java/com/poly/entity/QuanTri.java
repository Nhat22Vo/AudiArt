package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.Date;

@Entity
@Data
@Table(name = "quantri")
public class QuanTri {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_qt;

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

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date ngay_tao;

    @Column(columnDefinition = "int default 1")
    private Integer trang_thai;
}
