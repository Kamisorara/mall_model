package com.mall.service.service.impl;

import com.mall.dao.mapper.CartMapper;
import com.mall.entity.entity.resp.userCart;
import com.mall.entity.entity.shop.Cart;
import com.mall.service.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
    CartMapper cartMapper;

    /**
     * 用户执行插入购物车操作
     *
     * @param userId
     * @param inventoryId
     * @return
     */
    @Override
    public boolean insertCommodityToCart(Long userId, Long inventoryId) {
        Cart cart = new Cart();
        cart.setUserId(userId);
        cart.setInventoryId(inventoryId);
        cart.setNum(0);
        cart.setFlag(true);
        int insert = cartMapper.insert(cart);
        return insert > 0;
    }

    /**
     * 根据用户id获取用户购物车列表
     *
     * @param id
     * @return
     */
    @Override
    public List<userCart> getUserCart(Long id) {
        List<userCart> userCart = cartMapper.selectUserCart(id);
        return userCart;
    }

}
