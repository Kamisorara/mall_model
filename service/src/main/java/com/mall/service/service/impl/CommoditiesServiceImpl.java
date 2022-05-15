package com.mall.service.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import com.mall.dao.mapper.CommoditiesMapper;
import com.mall.entity.entity.shop.Commodities;
import com.mall.service.service.CommoditiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommoditiesServiceImpl implements CommoditiesService {

    @Autowired
    CommoditiesMapper commoditiesMapper;

    @Override
    public Commodities searchOneCommodity(Long id) {
        LambdaQueryWrapper<Commodities> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Commodities::getId, id);
        return commoditiesMapper.selectOne(queryWrapper);
    }
}
