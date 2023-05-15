package com.kbstar.user;

import com.kbstar.dto.User;
import com.kbstar.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
@Slf4j
@SpringBootTest
public class InsertTest {
    @Autowired
    UserService service;
    @Test
    void contextLoads() throws ParseException {
        User obj = new User("tiffanylover", "pwd01", "j",
                "female", "01033769412","seoul, seoundong, alphaco 101" ,
                new SimpleDateFormat("yyyy-MM-dd").parse("1990-01-01"), null);
        try {
            service.register(obj);
            log.info("등록 정상");
        } catch (Exception e) {
            if(e instanceof DuplicateKeyException){
                log.info("ID가 중복 되었습니다.-------------------------------");
            }else{
                log.info("시스템 장애입니다.----------------------------------");
            }
        }
    }
}
