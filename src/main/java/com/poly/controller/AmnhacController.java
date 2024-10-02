package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AmnhacController {
@RequestMapping("/amnhac")
	public String amnhac() {
		return "Am_nhac";
	}
}
