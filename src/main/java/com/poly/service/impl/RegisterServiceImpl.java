package com.poly.service.impl;

import com.poly.dao.NguoiDungDao;
import com.poly.entity.NguoiDung;
import com.poly.entity.request.UserRequestRegister;
import com.poly.service.EmailService;
import com.poly.service.RegisterService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

@Service
@Transactional
@RequiredArgsConstructor
public class RegisterServiceImpl implements RegisterService {

    private final EmailService emailService;

    private final NguoiDungDao nguoiDungDao;

    @Override
    public NguoiDung register(UserRequestRegister userRequestRegister) {

        NguoiDung nguoiDung = new NguoiDung();

        try {
            if (userRequestRegister.getConfirmPassword().equals(userRequestRegister.getPassword())) {
                nguoiDung.setTen(userRequestRegister.getFullName());
                nguoiDung.setEmail(userRequestRegister.getEmail());
                nguoiDung.setTen_dang_nhap(userRequestRegister.getEmail());
                nguoiDung.setMat_khau(userRequestRegister.getPassword());
                nguoiDung.setTrang_thai(0);
                nguoiDung.setNgay_tao(new Date());
                if (!(nguoiDungDao.existsByEmail(userRequestRegister.getEmail()))) {
                    NguoiDung save = nguoiDungDao.save(nguoiDung);
                    nguoiDung = save;
                    String buildEmail = emailService.buildEmail(userRequestRegister.getEmail(), "http://localhost:9999/active/" + save.getId_nd(), userRequestRegister.getPassword(), false);
                    emailService.send(nguoiDung.getEmail(), buildEmail, "Confirm your email");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return nguoiDung;
    }

    @Override
    public NguoiDung activeUser(Integer id) {

        NguoiDung nguoiDung = nguoiDungDao.findById(id).orElse(null);
        if (nguoiDung != null) {
            nguoiDung.setTrang_thai(1);
            nguoiDung.setVai_tro("User");
            nguoiDungDao.save(nguoiDung);
        }
        return nguoiDung;
    }
}
