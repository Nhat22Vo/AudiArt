package com.poly.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin_quanlyalbumController {
@RequestMapping("/admin_quanlialbum")
	public String amnhac() {
		return "Admin_quanlialbum";
	}
}
