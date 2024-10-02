package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class ChitietController {
@RequestMapping("/chitiet")
	public String amnhac() {
		return "Chi_tiet";
	}
}
