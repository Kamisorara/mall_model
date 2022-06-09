package com.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.shop.CommodityInventory;
import com.mall.entity.entity.shop.UniappComment;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.entity.entity.shop.UniappQuestion;
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

    //根据商品id 获取商品相关摘片
    List<String> selectCommodityPicture(Integer id);

    //根据商品id 获取用户询问信息
    List<UniappQuestion> selectUserAskById(Integer id);

    //根据商品id 获取商品对应库存信息
    List<CommodityInventory> selectInventoryById(Integer id);

    //根据商品类型搜索对应商品
    List<UniappCommodities> selectCommodityByType(String type);

    //根据商品类搜索对应商品 数量显示10（在首页获取）
    List<UniappCommodities> selectCommodityByTypeLimitedTen(String type);



}
