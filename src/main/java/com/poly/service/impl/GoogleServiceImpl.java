package com.poly.service.impl;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.poly.dao.NguoiDungDao;
import com.poly.entity.NguoiDung;
import com.poly.service.GoogleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Date;

import static com.poly.constant.GoogleConstant.GOOGLE_CLIENT_ID;
import static com.poly.constant.GoogleConstant.GOOGLE_CLIENT_SECRET;
import static com.poly.constant.GoogleConstant.GOOGLE_GRANT_TYPE;
import static com.poly.constant.GoogleConstant.GOOGLE_LINK_GET_TOKEN;
import static com.poly.constant.GoogleConstant.GOOGLE_LINK_GET_USER_INFO;
import static com.poly.constant.GoogleConstant.GOOGLE_REDIRECT_URI;

@Service
@Transactional
@RequiredArgsConstructor
public class GoogleServiceImpl implements GoogleService {

    private final NguoiDungDao nguoiDungDao;

    @Override
    public String getTokenGoogle(String code) {

        HttpClient client = HttpClient.newHttpClient();
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(GOOGLE_LINK_GET_TOKEN))
                .POST(
                        HttpRequest.BodyPublishers.ofString("client_id=" + GOOGLE_CLIENT_ID +
                                "&client_secret=" + GOOGLE_CLIENT_SECRET +
                                "&redirect_uri=" + GOOGLE_REDIRECT_URI +
                                "&code=" + code +
                                "&grant_type=" + GOOGLE_GRANT_TYPE)
                )
                .header("Content-Type", "application/x-www-form-urlencoded")
                .build();

        String responseBody = "";
        String accessToken = "";
        try {
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                responseBody = response.body();
            } else {
                System.out.println("Error: " + response.statusCode());
            }
            if (!(responseBody.isEmpty())) {
                JsonObject jobj = JsonParser.parseString(responseBody).getAsJsonObject();
                accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return accessToken;
    }

    @Override
    public NguoiDung GoogleAccountGetUserInfo(String accessToken) {

        String link = GOOGLE_LINK_GET_USER_INFO + accessToken;
        HttpClient client = HttpClient.newHttpClient();
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(link))
                .GET()
                .build();

        String responseBody = "";
        try {
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                responseBody = response.body();
            } else {
                System.out.println("Error: " + response.statusCode());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        JsonObject jobj = JsonParser.parseString(responseBody).getAsJsonObject();
        NguoiDung nguoiDung = new NguoiDung();
        nguoiDung.setTen(jobj.get("given_name").toString().replaceAll("\"", ""));
        nguoiDung.setTen_dang_nhap(jobj.get("email").toString().replaceAll("\"", ""));
        nguoiDung.setEmail(jobj.get("email").toString().replaceAll("\"", ""));
        nguoiDung.setMat_khau("");
        nguoiDung.setHinh_anh(jobj.get("picture").toString().replaceAll("\"", ""));
        nguoiDung.setNgay_tao(new Date());
        nguoiDung.setTrang_thai(1);
        nguoiDung.setVai_tro("User");

        NguoiDung user = new NguoiDung();
        if (!(nguoiDungDao.existsByEmail(nguoiDung.getEmail()))) {
            user = nguoiDungDao.save(nguoiDung);
        } else {
            user = nguoiDungDao.findByEmail(nguoiDung.getEmail());
        }

        return user;
    }
}
