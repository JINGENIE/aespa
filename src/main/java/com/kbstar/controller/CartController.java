package com.kbstar.controller;


import com.kbstar.dto.Cart;
import com.kbstar.dto.Product;
import com.kbstar.service.CartService;
import com.kbstar.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

// 컨트롤러 설명 : Product를 담고, 담은 상품 중 order하기 위한 기능을 담당하는 곳.
// 로그인 한 고객만 이용 가능(미로그인 후 선택 시 로그인유도)
// 로그인 시, 담은 상품 한눈에 보기 - 주문하기 연동 등
@Slf4j
@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    ProductService productService;
    @Autowired
    CartService cartService;

    @Value("${uploadimgdir}") // 이렇게 세팅하면, 애플리케이션 프로퍼티에  정해둔, simg/ 폴더에 집어넣는다.
    String imgdir;
    String dir = "cart/";


    // 1- 기본페이지 :상품 전체조회(한눈에보기 화면) : 127.0.0.1/cart?id=${user_id}
    @RequestMapping("")
    public String main(Model model, String id) throws Exception {
        List<Cart> list = null; // 카트 정보 불러올 바구니 준비.
        try {
            list = cartService.getmycart( id ); // 카트 정보를 list에 담기.
        } catch (Exception e) {
            throw new Exception(e);
        }
        model.addAttribute("mycart", list);
        // center에 cart 페이지 표출
        model.addAttribute("center", dir + "center");
        return "index";
    }

}
