package com.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.shop.UniappComment;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.entity.entity.shop.UniappSeller;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UniappCommoditiesMapper extends BaseMapper<UniappCommodities> {
    //获取全部商品列表
    List<UniappCommodities> selectAll();

    //根据商品id获取
    UniappCommodities selectCommodityById(Integer id);

    //根据商品id获取销售评论信息
    List<UniappComment> selectCommentDetailByCommodityId(Integer id);
}
