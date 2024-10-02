package com.poly.service;

import jakarta.mail.MessagingException;

import java.io.UnsupportedEncodingException;

public interface EmailService {
    void send(String to, String email, String subject) throws MessagingException, UnsupportedEncodingException;

    String buildEmail(String name, String link, String password, boolean isValidEmail);

}
