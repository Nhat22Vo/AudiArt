package com.poly.server;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import com.poly.entity.NguoiDung;


@Component
public class AuthInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        NguoiDung user = (NguoiDung) session.getAttribute("user");

        // If user is not logged in, redirect to login page
        if (user == null) {
            response.sendRedirect("/login");
            return false;
        }

        // Check access based on user role
        if (request.getRequestURI().startsWith("/admin") && !"admin".equals(user.getVai_tro())) {
            // Redirect to access denied page if user is not admin
            response.sendRedirect("/access-denied");
            return false;
        }

        // For other paths or logged in users, allow access
        return true;
    }
}
