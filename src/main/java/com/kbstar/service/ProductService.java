package com.kbstar.service;

import com.kbstar.dto.Product;
import com.kbstar.frame.AespaService;
import com.kbstar.mapper.ProductMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class ProductService implements AespaService<Integer, Product> {
    /** 담당 : 정인보
     * 등록 & 가입 진행
     * argument : object
     *
     * @param product
     **/
    @Autowired
    ProductMapper productMapper;
    @Override
    public void register(Product product) throws Exception {
        productMapper.insert(product);
    }

    @Override
    public void remove(Integer product_id) throws Exception {
        productMapper.delete(product_id);
    }

    @Override
    public void modify(Product product) throws Exception {
        productMapper.update(product);
        // 참고. 수정 가능항목 : 상품명(product_name), 상품가격(product_price), 상품이미지파일(product_imgname)
    }

    @Override
    public Product get(Integer product_id) throws Exception {
        return productMapper.select(product_id);
    }

    @Override
    public List<Product> get() throws Exception {
        return productMapper.selectall();
    }
    // 추후에 하단에, 카테고리별로 상품 조회하는 함수 만들 예정.
}
