package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.BaiHatDao;
import com.poly.entity.BaiHat;

@Controller
public class ChuadangnhapController {
    
    @Autowired
    BaiHatDao dao;

    @RequestMapping("/")
    public String trangchu(Model model) {
        Pageable pageable = PageRequest.of(0, 10); // Hiển thị mặc định 10 bài hát
        Page<BaiHat> page = dao.findAll(pageable);
        model.addAttribute("item", new BaiHat());
        model.addAttribute("listBaiHat", page.getContent());
        
        return "Chuadangnhap";
    }

/* @RequestMapping("/trangchu")
    public String trangchu(Model model) {
    	 List<BaiHat> baiHats = dao.findAll();
         BaiHat baiHat = new BaiHat();
         model.addAttribute("item", baiHat);
         model.addAttribute("listBaiHat", baiHats);
         return "Trangchu";
    	
     }*/
}
