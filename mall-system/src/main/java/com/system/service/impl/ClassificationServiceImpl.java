package com.system.service.impl;


import com.common.entity.resp.ResponseResult;
import com.common.entity.shop.Classification;
import com.common.mapper.ClassificationMapper;
import com.system.service.ClassificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassificationServiceImpl implements ClassificationService {
    @Autowired
    ClassificationMapper classificationMapper;

    @Override
    public ResponseResult selectAll() {
        List<Classification> result = classificationMapper.selectAll();
        return new ResponseResult(200, "获取成功", result);
    }
}
