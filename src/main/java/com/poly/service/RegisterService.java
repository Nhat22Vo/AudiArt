package com.poly.service;

import com.poly.entity.NguoiDung;
import com.poly.entity.request.UserRequestRegister;

public interface RegisterService {

    NguoiDung register(UserRequestRegister userRequestRegister);

    NguoiDung activeUser(Integer id);
}
