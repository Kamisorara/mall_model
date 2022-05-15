package com.mall.web;

import com.mall.dao.mapper.SellerMapper;
import com.mall.entity.entity.shop.Seller;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class WebApplicationTests {

    @Autowired
    SellerMapper sellerMapper;

    @Test
    void testMapper() {
        Seller seller = sellerMapper.selectById(1);
        System.out.println(seller.toString());
    }

}
