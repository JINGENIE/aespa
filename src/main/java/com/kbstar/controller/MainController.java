package com.kbstar.controller;


import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Slf4j
@Controller
public class MainController {



    // 127.0.0.1
    @RequestMapping("/")
    public String main(Model model) {
       // model.addAttribute("adminServer",  adminServer); // 메인 center에도, 관리자용 서버 일일이 치기 귀찮으니까.
        return "index";
    }


}
