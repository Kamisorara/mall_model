package com.test;

import com.admin.MallApplication;
import com.common.entity.User;
import com.common.mapper.MenuMapper;
import com.common.mapper.UserMapper;
import com.common.utils.RedisCache;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;

import java.util.ArrayList;
import java.util.List;

@SpringBootTest(classes = MallApplication.class)
class TokenDemoApplicationTests {

    @Autowired
    UserMapper userMapper;

    @Autowired
    MenuMapper menuMapper;

    @Autowired
    RedisCache redisCache;

    //测试MP是否正常
    @Test
    void testMp() {
        List<User> users = userMapper.selectList(null);
        System.out.println(users);
    }

    @Test
    void PasswordEncoder() {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String encode = bCryptPasswordEncoder.encode("123123");
        System.out.println(encode);
    }


    @Test
    void testMapper() {
        List<String> list = menuMapper.selectPermsByUserId(3L);
        System.out.println(list);
    }

    @Test
    void redisTest() {
        List<String> list = new ArrayList<>();
        list.add("123123");
        list.add("123123123");
        redisCache.setCacheList("test", list);
        System.out.println(redisCache.getCacheList("test"));
    }
}