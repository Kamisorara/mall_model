package com.mall.web.controller.shop;

import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.UniappComment;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.service.service.UniappCommoditiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * uniapp 商品详情接口
 */

@RestController
@RequestMapping("/uniapp-detail")
public class uniappDetailController {

    @Autowired
    UniappCommoditiesService commoditiesService;

    //根据商品id获取商品基本详情
    @RequestMapping("/get-commodities-detail")
    public ResponseResult getDetail(@RequestParam("id") Integer id) {
        UniappCommodities commodityDetail = commoditiesService.getCommodityDetail(id);
        return new ResponseResult(200, "获取商品基本详情成功!", commodityDetail);
    }


    //根据商品id 获取商品用户评论信息
    @RequestMapping("/get-commodities-comment")
    public ResponseResult getCommoditiesComment(@RequestParam("id") Integer id) {
        List<UniappComment> commentByCommodityId = commoditiesService.getCommentByCommodityId(id);
        return new ResponseResult(200, "获取评论信息成功", commentByCommodityId);
    }
}
