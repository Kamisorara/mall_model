package com.mall.web;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.dao.mapper.MenuMapper;
import com.mall.dao.mapper.SellerMapper;
import com.mall.dao.mapper.UniappCommoditiesMapper;
import com.mall.entity.entity.UserDetail;
import com.mall.entity.entity.shop.Seller;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.service.service.UpdateUserDetailService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.sql.Date;
import java.util.List;

@SpringBootTest
class WebApplicationTests {

    @Autowired
    SellerMapper sellerMapper;

    @Autowired
    UpdateUserDetailService updateUserDetailService;

    @Autowired
    UniappCommoditiesMapper uniappCommoditiesMapper;

    @Autowired
    MenuMapper menuMapper;

    @Test
    void testMapper() {
        Seller seller = sellerMapper.selectById(1);
        System.out.println(seller.toString());
    }

    @Test
    void update() {
        UserDetail userDetail = new UserDetail();
        Long id = 1524761813231648769L;
        Date date = new Date(2020 - 4 - 10);
        userDetail.setPhonenumber("1111123123").setSex("男").setId(id).setAddr("浙江省温州市永嘉县三江街道三江立体城盛景园7-3902").setEmail("1210281722@qq.com")
                .setNickName("小卡").setCreateTime(date);
        System.out.println(updateUserDetailService.updateUserDetailMessage(userDetail));
    }


    @Test
    void Uniapp() {
        IPage<UniappCommodities> page = new Page<>();
        //当前页数
        page.setCurrent(1);
        //设置每页多少
        page.setSize(2);
        //获取
        IPage<UniappCommodities> page1 = uniappCommoditiesMapper.selectPage(page, null);
    }


    @Test
    void testManu() {
        List<String> list = menuMapper.selectPermsByUserId(1540718001081896961L);
        System.out.println(list);
    }
}
