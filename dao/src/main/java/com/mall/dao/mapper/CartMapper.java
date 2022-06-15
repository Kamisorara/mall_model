package com.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.resp.userCart;
import com.mall.entity.entity.shop.Cart;
import com.mall.entity.entity.shop.CommodityInventory;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CartMapper extends BaseMapper<Cart> {

    //根据用户id搜索他的购物车
    List<userCart> selectUserCart(Long id);
}
