package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TailenController {
@RequestMapping("/tailen")
	public String tailen() {
		return "Tailen";
	}
}
