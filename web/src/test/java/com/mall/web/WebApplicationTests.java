package com.mall.web;

import com.mall.dao.mapper.SellerMapper;
import com.mall.entity.entity.UserDetail;
import com.mall.entity.entity.shop.Seller;
import com.mall.service.service.UpdateUserDetailService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.sql.Date;

@SpringBootTest
class WebApplicationTests {

    @Autowired
    SellerMapper sellerMapper;

    @Autowired
    UpdateUserDetailService updateUserDetailService;

    @Test
    void testMapper() {
        Seller seller = sellerMapper.selectById(1);
        System.out.println(seller.toString());
    }

    @Test
    void update() {
        UserDetail userDetail = new UserDetail();
        Long id = 1524761813231648769L;
        Date date = new Date(2020- 4 -10);
        userDetail.setPhonenumber("1111123123").setSex("男").setId(id).setAddr("浙江省温州市永嘉县三江街道三江立体城盛景园7-3902").setEmail("1210281722@qq.com")
                .setNickName("小卡").setCreateTime(date);
        System.out.println(updateUserDetailService.updateUserDetailMessage(userDetail));
    }

}
