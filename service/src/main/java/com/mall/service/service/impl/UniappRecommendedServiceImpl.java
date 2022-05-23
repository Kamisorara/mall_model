package com.mall.service.service.impl;

import com.mall.dao.mapper.UniappRecommendedMapper;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.UniappRecommended;
import com.mall.service.service.UniappRecommendedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UniappRecommendedServiceImpl implements UniappRecommendedService {

    @Autowired
    UniappRecommendedMapper uniappRecommendedMapper;

    @Override
    public ResponseResult selectAll() {
        List<UniappRecommended> uniappRecommendeds = uniappRecommendedMapper.selectAll();
        return new ResponseResult(200, "获取成功", uniappRecommendeds);
    }
}
