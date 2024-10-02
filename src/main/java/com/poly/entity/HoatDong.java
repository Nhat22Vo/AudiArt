package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.Date;

@Entity
@Data
@Table(name = "hoatdong")
public class HoatDong {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_hd;

    @ManyToOne
    @JoinColumn(name = "id_nd")
    private NguoiDung id_nd;

    private String hanh_dong;

    @ManyToOne
    @JoinColumn(name = "ma_bai_hat")
    private BaiHat ma_bai_hat;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date ngay_tao;
}
