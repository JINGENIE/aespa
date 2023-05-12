package com.kbstar.mapper;

import com.kbstar.dto.Product;
import com.kbstar.frame.AespaMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface ProductMapper extends AespaMapper<Integer, Product> {

}