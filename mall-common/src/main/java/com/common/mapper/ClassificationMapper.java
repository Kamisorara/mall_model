package com.common.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.common.entity.shop.Classification;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ClassificationMapper extends BaseMapper<Classification> {

    List<Classification> selectAll();
}
