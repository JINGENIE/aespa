package com.kbstar.controller;


import com.kbstar.dto.Product;
import com.kbstar.dto.User;
import com.kbstar.service.ProductService;
import com.kbstar.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;


@Slf4j
@Controller
public class UserController {
    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;
    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "shop/";

//    @RequestMapping("/changeInfo")
//    public String changeInfo(Model model, HttpSession session) throws Exception {
//        User user = (User) session.getAttribute("loginuser");
//        if (user == null) {
//            throw new Exception("user is not logged in");
//        }
//        // 로그인한 사용자의 아이디를 이용해 사용자 정보를 조회
//        User userInfo = userService.get(user.getUser_id());
//        session.setAttribute("loginuser",user);
//        model.addAttribute("center", "changeInfo");
//        model.addAttribute("userinfo", user);
//        return "index";
//    }

    @RequestMapping("/changeInfo")
    public String changeInfo(Model model, HttpSession session) throws Exception {
        User user = (User) session.getAttribute("loginuser");
        if (user == null) {
            throw new Exception("user is not logged in");
        }
        // 로그인한 사용자의 아이디를 이용해 사용자 정보를 조회
        User userInfo = userService.get(user.getUser_id());
        model.addAttribute("center", "changeInfo");
        model.addAttribute("userinfo", user);
        return "index";
    }
    // 1-1 로그인화면 : 127.0.0.1/login

}