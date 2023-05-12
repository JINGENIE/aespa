package com.kbstar.mapper;

import com.kbstar.dto.Cart;
import com.kbstar.frame.AespaMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


@Repository
@Mapper
public interface CartMapper extends AespaMapper<Integer, Cart> {

}
