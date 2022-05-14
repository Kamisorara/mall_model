package com.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import com.common.entity.shop.Commodities;
import com.common.mapper.CommoditiesMapper;
import com.system.service.CommoditiesService;
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
