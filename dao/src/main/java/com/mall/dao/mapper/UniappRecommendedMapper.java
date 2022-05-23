package com.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.shop.UniappRecommended;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UniappRecommendedMapper extends BaseMapper<UniappRecommended> {

    List<UniappRecommended> selectAll();
}
