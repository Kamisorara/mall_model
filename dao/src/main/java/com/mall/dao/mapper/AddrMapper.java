package com.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.Addr;

public interface AddrMapper extends BaseMapper<Addr> {
    Addr selectAddrById(Long id);
}
