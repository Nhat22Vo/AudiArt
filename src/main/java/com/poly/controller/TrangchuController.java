package com.poly.controller;

import static com.poly.constant.GoogleConstant.CONTENT_TYPE;
import static com.poly.constant.GoogleConstant.GOOGLE_REQUEST_CODE;

import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.BaiHatDao;
import com.poly.entity.BaiHat;
import com.poly.entity.NguoiDung;
import com.poly.service.GoogleService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class TrangchuController {
    @Autowired
    BaiHatDao dao;

    @Autowired
    GoogleService googleService;

    @RequestMapping("/trangchu")
    public String trangchu(Model model, HttpServletRequest request, HttpServletResponse response) {
/*// có thể sử dụng lạ ko được xóa
        response.setContentType(CONTENT_TYPE);
        String code = request.getParameter(GOOGLE_REQUEST_CODE);
        String token = googleService.getTokenGoogle(code);
        if (token.isEmpty()) {
            return "redirect:/dangnhap";
        } else {
            NguoiDung nguoiDung = googleService.GoogleAccountGetUserInfo(token);
            System.out.println(nguoiDung);
            */
            // thịnh hành
            List<BaiHat> baiHats = dao.findAll();
            BaiHat baiHat = new BaiHat();
            model.addAttribute("item", baiHat);
            Pageable pageable = PageRequest.of(0, 20); // Hiển thị mặc định 10 bài hát
            Page<BaiHat> page = dao.findAll(pageable);
            model.addAttribute("listBaiHat", baiHats);
            model.addAttribute("listBaiHat", page.getContent());
            return "Trangchu";
        }
       
    
    
    // edit
    @RequestMapping("/baihat/{id_baihat}")
    public String edit(Model model, @PathVariable("id_baihat") Integer id_baihat) {
        BaiHat item = dao.findById(id_baihat).get();
        System.out.println(item.getFile_midi_beat());
        List<BaiHat> items = dao.findAll();       
        model.addAttribute("item", item);
        model.addAttribute("listBaiHat", items);
        return "Trangchu"; // Trả về cùng trang nếu muốn hiển thị player
    }
}
