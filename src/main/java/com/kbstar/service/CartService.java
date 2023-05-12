package com.kbstar.service;

import com.kbstar.dto.Cart;
import com.kbstar.dto.Product;
import com.kbstar.frame.AespaService;
import com.kbstar.mapper.CartMapper;
import com.kbstar.mapper.ProductMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class CartService implements AespaService<Integer, Cart> {

    /**
     * 등록 & 가입 진행
     * argument : object
     * return : null
     *
     * @param cart
     **/

    @Autowired
    CartMapper cartMapper;

    @Override
    public void register(Cart cart) throws Exception {

    }

    @Override
    public void remove(Integer integer) throws Exception {

    }

    @Override
    public void modify(Cart cart) throws Exception {

    }

    @Override
    public Cart get(Integer integer) throws Exception {
        return null;
    }

    @Override
    public List<Cart> get() throws Exception {
        return null;
    }
}
