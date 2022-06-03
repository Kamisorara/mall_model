package com.mall.service.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.ShopUniappPicture;
import com.mall.entity.entity.shop.UniappComment;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.entity.entity.shop.UniappQuestion;

import java.util.List;

public interface UniappCommoditiesService {

    //查询所有商品列表
    ResponseResult selectAllCommodities();

    //分页获取商品列表
    IPage<UniappCommodities> getPageList(int pageNum, int pageSize);

    //根据id获取商品详情
    UniappCommodities getCommodityDetail(Integer id);

    //根据商品id获取用户评论信息（后期改成分页懒加载）
    List<UniappComment> getCommentByCommodityId(Integer id);

    //根据商品id 获取对应商品图片
    List<String> getCommodityPictureById(Integer id);

    //根据商品id 获取用户询问信息
    List<UniappQuestion> getUserAskById(Integer id);
}
