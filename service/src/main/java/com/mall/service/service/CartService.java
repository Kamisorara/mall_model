package com.mall.service.service;

public interface CartService {
    //用户插入购物车
    boolean insertCommodityToCart(Long userId, Long commodity_id);
}
