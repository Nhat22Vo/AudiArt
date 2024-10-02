package com.poly.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.poly.dao.BaiHatDao;
import com.poly.entity.BaiHat;
import jakarta.validation.Valid;

@Controller
public class Admin_quanlibaihatController {
	@Autowired
	BaiHatDao dao;
	@RequestMapping("/admin_quanlibaihat")
	public String amnhac(Model model) {
	    List<BaiHat> baiHats = dao.findAll();
	    BaiHat item = new BaiHat();
	    model.addAttribute("item", item);
	    model.addAttribute("items", baiHats);
	    return "Admin_quanlibaihat";
	}
@RequestMapping("/editbh/{id_baihat}")
public String edit(Model model , @PathVariable("id_baihat") Integer id_baihat) {
	BaiHat item = dao.findById(id_baihat).get();
	model.addAttribute("item", item);
	List<BaiHat> items = dao.findAll();
	model.addAttribute("items", items);
	return "Admin_quanlibaihat";
}
// thêm
@RequestMapping("/admin_quanlibaihat/them")
public String them(@Valid @ModelAttribute("item") BaiHat item, BindingResult result, RedirectAttributes redirectAttributes , Model model ) {
    if (result.hasErrors()) {
        return "Admin_quanlibaihat";  // Trả về trang nếu có lỗi
    }
    dao.save(item);
    redirectAttributes.addFlashAttribute("message", "Thêm bài hát thành công!");
    model.addAttribute("item", item);
    return "redirect:/admin_quanlibaihat";
    
}// sửa
@RequestMapping("/editbh/sua")
public String update(@Valid @ModelAttribute("item") BaiHat userrm, BindingResult result, RedirectAttributes redirectAttributes) {
    if (result.hasErrors()) {
        return "Admin_quanlibaihat";  // Trả về trang nếu có lỗi
    }
    dao.save(userrm);
    redirectAttributes.addFlashAttribute("message", "Cập nhật bài hát thành công!");
    return "redirect:/edit/" + userrm.getId_baihat();
}

@RequestMapping("/admin_delete/{id_baihat}")
public String xoa(@PathVariable("id_baihat") Integer id_baihat, RedirectAttributes redirectAttributes) {
    dao.deleteById(id_baihat);
    redirectAttributes.addFlashAttribute("message", "Xóa bài hát thành công!");
    return "redirect:/admin_quanlibaihat";
}


@RequestMapping("/admin_quanlibaihat/reset")
public String reset(RedirectAttributes redirectAttributes) {
    redirectAttributes.addFlashAttribute("message", "Reset thành công!");
    return "redirect:/admin_quanlibaihat";
}
}
  