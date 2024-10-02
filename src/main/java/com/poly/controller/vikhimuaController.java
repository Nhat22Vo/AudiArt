package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class vikhimuaController {
@RequestMapping("/vikhimua")
	public String amnhac() {
		return "Vikhimua";
	}
}
