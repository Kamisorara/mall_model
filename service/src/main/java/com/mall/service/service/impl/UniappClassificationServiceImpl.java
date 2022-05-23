package com.mall.service.service.impl;

import com.mall.dao.mapper.UniappClassificationMapper;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.UniappClassification;
import com.mall.service.service.UniappClassificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UniappClassificationServiceImpl implements UniappClassificationService {
    @Autowired
    UniappClassificationMapper uniappClassificationMapper;

    @Override
    public ResponseResult selectAll() {
        List<UniappClassification> uniappClassifications = uniappClassificationMapper.selectAll();
        return new ResponseResult(200, "获取成功", uniappClassifications);
    }
}
