package com.poly.dao;

import com.poly.entity.QuanTri;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface QuanTriDao extends JpaRepository<QuanTri, Integer> {
    @Query("SELECT q FROM QuanTri q WHERE q.ten_dang_nhap = :tenDangNhap")
    Optional<QuanTri> findByTenDangNhap(@Param("tenDangNhap") String tenDangNhap);
}
