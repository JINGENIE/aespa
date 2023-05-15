package com.kbstar.controller;


import com.kbstar.dto.Product;
import com.kbstar.dto.User;
import com.kbstar.service.ProductService;
import com.kbstar.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTMLDocument;
import java.util.List;




@Slf4j
@Controller
public class MainController {
    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;
    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
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
    public String loginimpl(Model model, String user_id, String user_pwd, HttpSession session) throws Exception {
        User user = null;
        String nextPage = "loginfail";

        try {
            user = userService.get(user_id);
            logger.info(user_id);

            if (user != null && user_pwd.equals(user.getUser_pwd())) {
                model.addAttribute("center", dir + "center");
               session.setMaxInactiveInterval(10000);
                session.setAttribute("loginuser", user);
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
            model.addAttribute("center", nextPage);

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
            session.setAttribute("loginuser",user);
        } catch (Exception e) {
            throw new Exception("가입 오류");
        }
        model.addAttribute("rcust", user);
        model.addAttribute("center",dir+"center");
        return "index";
    }

//    @RequestMapping("/profile")
//    public String profile(Model model, HttpSession session, User user) throws Exception {
//        List<User>list =null;
//        list = (List<User>) userService.get(user.getUser_id());
//        model.addAttribute("user",list);
//        model.addAttribute("center", "profile"); // center에 login페이지 표출
//        return "index";
//    }

    @RequestMapping("/profile")
    public String profile(Model model, HttpSession session) throws Exception {
        User user = (User) session.getAttribute("loginuser");
        User profileUser = userService.get(user.getUser_id());
        model.addAttribute("user", profileUser);
        model.addAttribute("center", "profile");
        return "index";
    }
}