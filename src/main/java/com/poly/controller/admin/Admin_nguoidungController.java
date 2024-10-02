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

import com.poly.dao.NguoiDungDao;
import com.poly.entity.NguoiDung;

import jakarta.validation.Valid;
@Controller
public class Admin_nguoidungController {

    @Autowired
    NguoiDungDao dao;

    @RequestMapping("/admin_nguoidung")
    public String nguoiDung(Model model) {
        List<NguoiDung> nguoiDungs = dao.findAll();
        NguoiDung item = new NguoiDung();
        model.addAttribute("item", item);
        model.addAttribute("items", nguoiDungs);
        return "Admin";
    }

    @RequestMapping("/nguoidung/{id_nd}")
    public String edit(Model model, @PathVariable("id_nd") Integer id_nd) {
        NguoiDung item = dao.findById(id_nd).get();
        model.addAttribute("item", item);
        List<NguoiDung> items = dao.findAll();
        model.addAttribute("items", items);
        return "Admin";
    }
// thêm 
    @RequestMapping("/admin/them")
    public String them(@Valid @ModelAttribute("item") NguoiDung item, BindingResult result, RedirectAttributes redirectAttributes , Model model ) {
        if (result.hasErrors()) {
            return "Admin";  // Trả về trang nếu có lỗi
        }
        dao.save(item);
        redirectAttributes.addFlashAttribute("message", "Thêm người dùng thành công!");
        model.addAttribute("item", item);
        return "redirect:/admin_nguoidung";
    }
// sửa
    @RequestMapping("/admin/sua")
    public String update(@Valid @ModelAttribute("item") NguoiDung userr, BindingResult result, RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            return "Admin";  // Trả về trang nếu có lỗi
        }
        dao.save(userr);
        redirectAttributes.addFlashAttribute("message", "Cập nhật người dùng thành công!");
        return "redirect:/nguoidung/" + userr.getId_nd();
    }
    @RequestMapping("delete/{id_nd}")
    public String xoa(@PathVariable("id_nd") Integer in_nd, RedirectAttributes redirectAttributes) {
        dao.deleteById(in_nd);
        redirectAttributes.addFlashAttribute("message", "Xóa người dùng thành công!");
        return "redirect:/admin_nguoidung";
    }
    @RequestMapping("/admin/reset")
    public String reset(RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("message", "Reset thành công!");
        return "redirect:/admin_nguoidung";
    }
}
