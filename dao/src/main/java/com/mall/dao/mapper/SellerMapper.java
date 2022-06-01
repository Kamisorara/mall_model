package com.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.shop.Seller;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SellerMapper extends BaseMapper<Seller> {
    Seller selectById(Long id);


}
