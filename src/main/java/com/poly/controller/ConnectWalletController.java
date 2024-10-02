package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ConnectWalletController {
    @RequestMapping("/wallet")
    public String wallet() {
        return "connect_wallet";
    }
}
