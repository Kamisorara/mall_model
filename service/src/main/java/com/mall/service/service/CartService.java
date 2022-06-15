package com.mall.service.service;

import com.mall.entity.entity.resp.userCart;
import com.mall.entity.entity.shop.CommodityInventory;

import java.util.List;

public interface CartService {
    //用户插入购物车
    boolean insertCommodityToCart(Long userId, Long inventoryId);

    //根据用户id获取用户购物车
    List<userCart> getUserCart(Long id);
}
