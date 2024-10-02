package com.poly.dao;

import com.poly.entity.NgheSi;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NgheSiDao extends JpaRepository<NgheSi, Integer> {
}
