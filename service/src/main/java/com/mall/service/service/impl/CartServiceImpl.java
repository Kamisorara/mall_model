package com.mall.service.service.impl;

import com.mall.dao.mapper.CartMapper;
import com.mall.entity.entity.shop.Cart;
import com.mall.service.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
    CartMapper cartMapper;

    /**
     * 用户执行插入购物车操作
     *
     * @param userId
     * @param commodity_id
     * @return
     */
    @Override
    public boolean insertCommodityToCart(Long userId, Long commodity_id) {
        Cart cart = new Cart();
        cart.setUserId(userId);
        cart.setCommodityId(commodity_id);
        int insert = cartMapper.insert(cart);
        return insert > 0;
    }
}
