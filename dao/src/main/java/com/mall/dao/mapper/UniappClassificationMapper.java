package com.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.shop.UniappClassification;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UniappClassificationMapper extends BaseMapper<UniappClassification> {
    List<UniappClassification> selectAll();
}
