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

import com.poly.dao.NgheSiDao;
import com.poly.entity.NgheSi;

import jakarta.validation.Valid;

@Controller
public class Admim_quanlinghesyController {
    @Autowired
    NgheSiDao dao;

    @RequestMapping("/admin_quanlinghesy")
    public String amnhac(Model model) {
        List<NgheSi> ngheSis = dao.findAll();
        NgheSi item = new NgheSi();
        model.addAttribute("item", item);
        model.addAttribute("items", ngheSis);
        return "Admin_quanlinghesy";
    }
    @RequestMapping("/nghesy/{id_ns}")
    public String edit(Model model , @PathVariable("id_ns")Integer id_ns) {
    	NgheSi item = dao.findById(id_ns). get();
    	model.addAttribute("item", item);
    	List<NgheSi> items = dao.findAll();
    	model.addAttribute("items", items);
    	return "Admin_quanlinghesy";
    }
    //thêm
    @RequestMapping("/nghesy/them")
    public String them( @Valid @ModelAttribute("item") NgheSi ngsy ,BindingResult result, RedirectAttributes redirectAttributes , Model model ) {
    	if (result.hasErrors()) {
    		return "/admin_quanlinghesy";		
		}
    	dao.save(ngsy);
    	redirectAttributes.addFlashAttribute("message", "Thêm nghệ sỹ thành công!");
        model.addAttribute("item", ngsy);
        return "redirect:/admin_quanlinghesy";
    }
 // sửa
    @RequestMapping("/nghesy/sua")
    public String update(@Valid @ModelAttribute("item") NgheSi userr, BindingResult result, RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            return "admin_quanlinghesy";  // Trả về trang nếu có lỗi
        }
        dao.save(userr);
        redirectAttributes.addFlashAttribute("message", "Cập nhật nghệ sỹ thành công!");
        return "redirect:/nghesy/" + userr.getId_ns();
    }

    @RequestMapping("deletem/{id_ns}")
    public String xoa(@PathVariable("id_ns") Integer in_ns, RedirectAttributes redirectAttributes) {
        dao.deleteById(in_ns);
        redirectAttributes.addFlashAttribute("message", "Xóa nghệ sỹ thành công!");
        return "redirect:/admin_quanlinghesy";
    }


    @RequestMapping("/nghesy/reset")
    public String reset(RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("message", "Làm trống thành công!");
        return "redirect:/admin_quanlinghesy";
    }
    
}
