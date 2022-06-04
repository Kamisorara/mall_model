package com.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.shop.Classification;

import com.mall.entity.entity.shop.ClassificationDetail;
import com.mall.entity.entity.shop.UniappClassification;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ClassificationMapper extends BaseMapper<Classification> {
    //获取商品分类
    List<Classification> selectAll();


    //uniapp获取商品分类后的详情分列表
    List<ClassificationDetail> selectCategoryById(Integer id);
}
