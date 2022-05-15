package com.mall.service.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.mall.dao.mapper.SellerMapper;
import com.mall.entity.entity.shop.Seller;
import com.mall.service.service.SellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SellerServiceImpl implements SellerService {
    @Autowired
    SellerMapper sellerMapper;

    @Override
    public Seller selectSellerById(Long id) {
        LambdaQueryWrapper<Seller> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Seller::getId, id);
        return sellerMapper.selectOne(queryWrapper);
    }
}
