package com.mall.service.service.impl;


import com.mall.dao.mapper.RecommendedMapper;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.Recommended;
import com.mall.service.service.RecommendedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecommendedImpl implements RecommendedService {

    @Autowired
    RecommendedMapper recommendedMapper;

    @Override
    public ResponseResult selectAll() {
        List<Recommended> recommended = recommendedMapper.selectAll();
        return new ResponseResult(200, "获取成功", recommended);
    }
}
