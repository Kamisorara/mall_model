package com.mall.service.service.impl;

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
        return sellerMapper.selectById(id);
    }
}
