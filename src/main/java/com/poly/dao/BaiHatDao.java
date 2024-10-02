package com.poly.dao;

import com.poly.entity.BaiHat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BaiHatDao extends JpaRepository<BaiHat, Integer> {
}
