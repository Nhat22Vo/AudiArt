package com.poly.dao;

import com.poly.entity.HoatDong;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HoatDongDao extends JpaRepository<HoatDong, Integer> {
}
