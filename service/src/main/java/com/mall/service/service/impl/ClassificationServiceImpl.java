package com.mall.service.service.impl;


import com.mall.dao.mapper.ClassificationMapper;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.Classification;
import com.mall.entity.entity.shop.ClassificationDetail;
import com.mall.service.service.ClassificationService;
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

    /**
     * uniapp获取商品分类后的详情分列表
     *
     * @param id
     * @return
     */
    @Override
    public List<ClassificationDetail> selectCategory(Integer id) {
        return classificationMapper.selectCategoryById(id);
    }
}
