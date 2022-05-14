package com.common.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.common.entity.shop.Recommended;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RecommendedMapper extends BaseMapper<Recommended> {
    List<Recommended> selectAll();
}
