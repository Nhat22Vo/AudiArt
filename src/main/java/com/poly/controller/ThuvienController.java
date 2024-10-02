package com.poly.controller;

import com.poly.dao.BaiHatDao;
import com.poly.entity.BaiHat;
import com.poly.entity.NguoiDung;
import com.poly.service.GoogleService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import static com.poly.constant.GoogleConstant.CONTENT_TYPE;
import static com.poly.constant.GoogleConstant.GOOGLE_REQUEST_CODE;

@Controller
public class ThuvienController {
	/*   @Autowired
    BaiHatDao dao;

    @Autowired
    GoogleService googleService;

    @RequestMapping("/trangchu")
    public String trangchu(Model model, HttpServletRequest request, HttpServletResponse response) {

        response.setContentType(CONTENT_TYPE);
        String code = request.getParameter(GOOGLE_REQUEST_CODE);
        String token = googleService.getTokenGoogle(code);
        if (token.isEmpty()) {
            return "redirect:/dangnhap";
        } else {
            NguoiDung nguoiDung = googleService.GoogleAccountGetUserInfo(token);
            System.out.println(nguoiDung);
            
            // thịnh hành
            List<BaiHat> baiHats = dao.findAll();
            BaiHat baiHat = new BaiHat();
            model.addAttribute("item", baiHat);
            model.addAttribute("listBaiHat", baiHats);
            return "Trangchu";
        }
       
    }
    *
    */
	
}
