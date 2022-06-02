package com.mall.service.service.impl;

import com.mall.dao.mapper.SwiperMapper;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.service.service.SwiperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SwiperServiceImpl implements SwiperService {
    @Autowired
    SwiperMapper swiperMapper;

    @Override
    public ResponseResult selectAll() {
        List<String> swipers = swiperMapper.selectAll();
        return new ResponseResult(200, "获取首页轮播图成功!", swipers);
    }
}
