package com.kbstar.controller;


import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Slf4j
@Controller
public class MainController {



    // 0- 초기화면 : 127.0.0.1
    @RequestMapping("/")
    public String main(Model model) {
      
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
    public String loginimpl(Model model){
        //model.addAttribute("center", "login"); // center에 login페이지 표출
        return "index";
    }


}
