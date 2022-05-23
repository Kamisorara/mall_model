package com.mall.service.service.impl;

import com.mall.dao.mapper.UniappCommoditiesMapper;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.service.service.UniappCommoditiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UniappCommoditiesServiceImpl implements UniappCommoditiesService {
    @Autowired
    UniappCommoditiesMapper uniappCommoditiesMapper;

    @Override
    public ResponseResult selectAllCommodities() {
        List<UniappCommodities> uniappCommodities = uniappCommoditiesMapper.selectAll();
        return new ResponseResult(200, "商品信息获取成功", uniappCommodities);
    }
}
