package com.poly.service;

import com.poly.entity.NguoiDung;

public interface GoogleService {
    public String getTokenGoogle(String code);

    public NguoiDung GoogleAccountGetUserInfo(String accessToken);

}
