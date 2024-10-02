package com.poly.controller;

import com.poly.entity.request.UserRequestRegister;
import com.poly.service.RegisterService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class DangkiController {

    private final RegisterService registerService;

    @GetMapping("/dangki")
    public String showForm() {
        return "Dang_ki";
    }
    @PostMapping("/dangki")
    public String register(@ModelAttribute UserRequestRegister register) {

        if (registerService.register(register) != null) {
            return "redirect:/dangnhap";
        } else {
            return "redirect:/dangki";// doi thong bao loi hoac lam gi do
        }
    }
    @GetMapping("/active/{id}")
    public String activeUser(@PathVariable Integer id) {
        registerService.activeUser(id);
        return "Dang_nhap";
    }

    
    
    
    
    
}