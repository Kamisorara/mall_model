package com.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.Head;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HeadMapper extends BaseMapper<Head> {

    //根据用户id获取用户头像
    String getUserHeadById(Long id);

    //把用户头像全都变成status 1（不启用）的状态
    int updateUserHeadStatus(Long id);
}
