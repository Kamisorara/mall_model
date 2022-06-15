package com.mall.web.controller.shop;

import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.resp.userCart;
import com.mall.entity.entity.shop.*;
import com.mall.service.service.CartService;
import com.mall.service.service.UniappCommoditiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * uniapp 商品详情接口
 */

@RestController
@RequestMapping("/uniapp-detail")
public class uniappDetailController {

    @Autowired
    UniappCommoditiesService commoditiesService;

    @Autowired
    CartService cartService;

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

    //根据商品id 获取对应商品图片
    @RequestMapping("/get-commodity-picture")
    public ResponseResult getCommodityPicture(@RequestParam("id") Integer id) {
        List<String> commodityPicture = commoditiesService.getCommodityPictureById(id);
        return new ResponseResult(200, "获取商品图片成功！", commodityPicture);
    }

    //根据商品id 获取用户询问信息
    @RequestMapping("/get-commodity-userAsk")
    public ResponseResult getUserAsk(@RequestParam("id") Integer id) {
        List<UniappQuestion> userAsk = commoditiesService.getUserAskById(id);
        return new ResponseResult(200, "获取用户询问成功!", userAsk);
    }

    //根据商品id获取对应库存信息
    @RequestMapping("/get-commodity-inventory")
    public ResponseResult getInventory(@RequestParam("id") Integer id) {
        List<CommodityInventory> commodityInventory = commoditiesService.getCommodityInventoryById(id);
        return new ResponseResult(200, "获取对应商品库存信息成功!", commodityInventory);
    }

    //根据商品type获取商品信息
    @RequestMapping("/get-commodity-type")
    public ResponseResult getCommodityType(@RequestParam("type") String type) {
        List<UniappCommodities> commodityType = commoditiesService.getCommodityByType(type);
        return new ResponseResult(200, "通过type获取对应商品成功!", commodityType);
    }

    //用户插入购物车
    @RequestMapping(value = "/post-commodityToCart", method = RequestMethod.POST)
    public ResponseResult insertCommodityToCart(@RequestParam("userId") Long userId,
                                                @RequestParam("inventoryId") Long inventoryId) {
        boolean success = cartService.insertCommodityToCart(userId, inventoryId);
        if (success) {
            return new ResponseResult(200, "添加购物车成功");
        } else {
            return new ResponseResult(400, "添加购物车失败！");
        }
    }

    //用户查询购物车
    @RequestMapping(value = "/get-user-cart")
    public ResponseResult getUserCart(@RequestParam("userId") Long id) {
        List<userCart> userCart = cartService.getUserCart(id);
        return new ResponseResult(200, "获取用户购物车列表成功！", userCart);
    }
}

