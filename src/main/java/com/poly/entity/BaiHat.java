package com.poly.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.Date;

@Entity
@Data
@Table(name = "baihat")
public class BaiHat {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_baihat;

    private String ma_bai_hat;

    @Column(nullable = false)
    private String tieu_de;

    private String file_midi_beat;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngay_phat_hanh;

    private String hinh_anh;

    @ManyToOne
    @JoinColumn(name = "nguoi_tao")
    private NgheSi nguoi_tao;

    private Integer so_luot_nghe;
    private Integer so_luot_thich;
    private String the_loai;

    @Column(columnDefinition = "int default 1")
    private Integer trang_thai;
}
