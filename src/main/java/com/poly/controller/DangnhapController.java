package com.poly.controller;

import com.poly.entity.QuanTri;
import com.poly.dao.QuanTriDao;
import com.poly.server.SessionService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Controller
public class DangnhapController {

    @Autowired
    QuanTriDao dao;

    @Autowired
    SessionService session;

    @GetMapping("/dangnhap")
    public String showLoginForm() {
        return "Dang_nhap"; // Đổi tên view thành "Dang_nhap" nếu đây là tên file jsp, thymeleaf, hoặc tương tự
    }

    @PostMapping("/dangnhap")
    public String login(@RequestParam String tenDangNhap, @RequestParam String matKhau, Model model) {
        Optional<QuanTri> optionalTaiKhoan = dao.findByTenDangNhap(tenDangNhap);
        if (optionalTaiKhoan.isPresent()) {
            QuanTri quanTriVien = optionalTaiKhoan.get();
            if (quanTriVien.getMat_khau().equals(matKhau)) {
                session.set("user", quanTriVien);
                if ("admin".equalsIgnoreCase(quanTriVien.getVai_tro())) {
                    return "redirect:/admin_quantrivien"; // Điều hướng tới trang quản lý cho admin
                } else if ("user".equalsIgnoreCase(quanTriVien.getVai_tro())) {
                    return "redirect:/trangchu"; // Điều hướng tới trang chủ cho người dùng
                } else {
                    model.addAttribute("message", "Vai trò của bạn không được xác định");
                }
            } else {
                model.addAttribute("message", "Tài khoản hoặc mật khẩu của bạn đã sai");
            }
        } else {
            model.addAttribute("message", "Tài khoản hoặc mật khẩu của bạn đã sai");
        }
        return "Dang_nhap";
    }
}
