package com.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.Addr;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AddrMapper extends BaseMapper<Addr> {
    Addr selectAddrById(Long id);
}
