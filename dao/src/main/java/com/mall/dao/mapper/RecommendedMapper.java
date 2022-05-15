package com.mall.dao.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.shop.Recommended;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RecommendedMapper extends BaseMapper<Recommended> {
    List<Recommended> selectAll();
}
