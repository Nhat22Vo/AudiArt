package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuenMatKhauController {
@RequestMapping("/quenmatkhau")
	public String amnhac() {
		return "Quen_mat_khau";
	}
}
