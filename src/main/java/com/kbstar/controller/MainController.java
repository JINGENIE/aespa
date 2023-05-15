package com.kbstar.controller;


import com.kbstar.dto.Product;
import com.kbstar.dto.User;
import com.kbstar.service.ProductService;
import com.kbstar.service.UserService;
import lombok.extern.slf4j.Slf4j;

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
public class MainController {
    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;

    String dir = "shop/";
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
        User user = null; // 로그인 고객정보 받을 준비하기
        try {
            user = userService.get(id); // DB에 저장되어있는 회원 정보랑 일치하는지 가져오기.
            // 기능 : session 에 넣어주면, 00초 동안 로그인 유지 가능.**
            // session에 담은 정보도, jsp에서 loginuser 라는 이름으로 정보 끄집어내기 가능하다.
            session.setMaxInactiveInterval(1000000);
            session.setAttribute("loginuser", user); // 성공한 로그인정보는 seesion에 집어넣어주기.
        } catch (Exception e) {
            throw new Exception("시스템 장애로 인해 로그인이 실패했습니다. 잠시후 재거래 바랍니다. ");
        }
        return "index";
    }

    //
    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center", "register"); // center에 login페이지 표출
        return "index";
    }
    @RequestMapping("/registerimpl")
    public String registerimpl(Model model,
                               @Validated User user, Errors errors, HttpSession session) throws Exception {
        if(errors.hasErrors()){
            List<ObjectError> ex = errors.getAllErrors();
            for(ObjectError e:ex){
                log.info("------------------------");
                log.info(e.getDefaultMessage());
            }
            throw new Exception("형식 오류"+errors.toString());
        }
        try {
            userService.register(user);
            session.setAttribute("logincust",user);
        } catch (Exception e) {
            throw new Exception("가입 오류");
        }
        model.addAttribute("rcust", user);
        model.addAttribute("center",dir+"center");
        return "index";
    }
}