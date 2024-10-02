package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DanhchoNgheSiController {
@RequestMapping("/danhchonghesi")
public String chonghesi() {
	return "Danhchonghesi";
}
}
