package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class TestController2 {
	
 @RequestMapping("/thuvien")
public String trangchu() {
	return "Thuvien";
}
}
