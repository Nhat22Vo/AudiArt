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

import com.poly.dao.QuanTriDao;
import com.poly.entity.QuanTri;

import jakarta.validation.Valid;
@Controller
public class Admin_quantrivienController {
    @Autowired
    QuanTriDao dao;

    @RequestMapping("/admin_quantrivien")
    public String quantrivien(Model model) {
        List<QuanTri> items = dao.findAll();
        QuanTri item = new QuanTri();
        model.addAttribute("item", item);
        model.addAttribute("items", items);
        return "Admin_quantrivien";
    }

    @RequestMapping("/quantri/{id_qt}")
    public String edit(Model model, @PathVariable("id_qt") Integer id_qt) {
        QuanTri item = dao.findById(id_qt).get();
        model.addAttribute("item", item);
        List<QuanTri> items = dao.findAll();
        model.addAttribute("items", items);
        return "Admin_quantrivien";
    }

 // thêm 
    @RequestMapping("/quantri/them")
    public String them(@Valid @ModelAttribute("item") QuanTri item, BindingResult result, RedirectAttributes redirectAttributes , Model model ) {
        if (result.hasErrors()) {
            return "Admin_quantrivien";  // Trả về trang nếu có lỗi
        }
        dao.save(item);
        redirectAttributes.addFlashAttribute("message", "Thêm người dùng thành công!");
        model.addAttribute("item", item);
        return "redirect:/admin_quantrivien";
    }
// sửa
    @RequestMapping("/quantri/sua")
    public String update(@Valid @ModelAttribute("item") QuanTri userr, BindingResult result, RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            return "Admin_quantrivien";  // Trả về trang nếu có lỗi
        }
        dao.save(userr);
        redirectAttributes.addFlashAttribute("message", "Cập nhật người dùng thành công!");
        return "redirect:/quantri/" + userr.getId_qt();
    }
// xóa
    @RequestMapping("/quantri/xoa/{id_qt}")
    public String delete(@PathVariable("id_qt") Integer id_qt, RedirectAttributes redirectAttributes) {
        dao.deleteById(id_qt);
        redirectAttributes.addFlashAttribute("message", "Xóa người dùng thành công!");
        return "redirect:/admin_quantrivien";
    }
// trống
    @RequestMapping("/quantri/trong")
    public String reset(RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("message", "Reset thành công!");
        return "redirect:/admin_quantrivien";
    }
}
