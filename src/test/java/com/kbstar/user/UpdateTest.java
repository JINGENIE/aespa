package com.kbstar.user;

import com.kbstar.dto.User;
import com.kbstar.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.text.SimpleDateFormat;

@Slf4j
@SpringBootTest
public class UpdateTest {
    @Autowired
    UserService service;
    @Test
    void contextLoads() {
        try {
            service.modify(new User("id01", "pwd01", "ㅇ", "ㅇ", "ㅇ","0",
                    new SimpleDateFormat("yyyy-MM-dd").parse("1990-01-01"), "0"));
            service.get("id01");
        } catch (Exception e) {
            log.info("오류");
        }

    }
}
