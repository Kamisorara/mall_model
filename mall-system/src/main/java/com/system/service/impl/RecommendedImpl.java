package com.system.service.impl;


import com.common.entity.resp.ResponseResult;
import com.common.entity.shop.Recommended;
import com.common.mapper.RecommendedMapper;
import com.system.service.RecommendedService;
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
