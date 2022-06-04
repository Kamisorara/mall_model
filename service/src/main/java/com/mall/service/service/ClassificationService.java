package com.mall.service.service;


import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.ClassificationDetail;

import java.util.List;

public interface ClassificationService {

    ResponseResult selectAll();
    //uniapp获取商品分类后的详情分列表
    List<ClassificationDetail> selectCategory(Integer id);

}
