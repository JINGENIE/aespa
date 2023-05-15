package com.kbstar.controller;


import com.kbstar.dto.Product;
import com.kbstar.dto.User;
import com.kbstar.service.ProductService;
import com.kbstar.service.UserService;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;


@Slf4j
@Controller
public class MainController {
    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;

    // 0- 초기화면 : 127.0.0.1
    @RequestMapping("/")
    public String main(Model model) throws Exception {
        // selectAll 사용
        List<Product> list = null;
            list = productService.get();

        // list에 담은 Product를 브라우저 화면에 보여주기(jsp파일에 입력 시 명칭 allproduct)
        model.addAttribute("allproduct", list);
        return "index";
    }
    // 1-1 로그인화면 : 127.0.0.1/login
    @RequestMapping("/login")
    public String login(Model model){
        model.addAttribute("center", "login"); // center에 login페이지 표출
        return "index";
    }
    // 1-2 로그인 검증 기능 : 127.0.0.1/loginimpl
    @RequestMapping("/loginimpl")
    public String loginimpl(Model model, String id, HttpSession session) throws Exception {
      //  model.addAttribute("center", "login"); // center에 login페이지 표출
        User user = null; // 받을 준비하기
        user = userService.get(id); // DB에 저장되어있는 로그인 정보 가져오기.
        if(session != null){
            session.setMaxInactiveInterval(1000000); // 임시저장시간
            session.setAttribute("loginuser", user);  // 로그인정보는 session에 loginuser 이름으로 임시저장.
        }
        return "redirect:/";
    }

    //
    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center", "register"); // center에 login페이지 표출
        return "index";
    }

}
