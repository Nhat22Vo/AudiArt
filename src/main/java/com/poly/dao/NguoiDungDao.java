package com.poly.dao;

import com.poly.entity.NguoiDung;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface NguoiDungDao extends JpaRepository<NguoiDung, Integer> {

    boolean existsByEmail(String email);

    NguoiDung findByEmail(String email);
  
}
