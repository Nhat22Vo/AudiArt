package com.poly.server;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;




@Service
@SessionScope
public class SessionService {
    private Map<String, Object> session = new HashMap<>();

    public void set(String key, Object value) {
        session.put(key, value);
    }

    public Object get(String key) {
        return session.get(key);
    }

    public void remove(String key) {
        session.remove(key);
    }
}