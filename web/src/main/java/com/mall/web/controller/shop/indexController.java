package com.mall.web.controller.shop;


import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.Commodities;
import com.mall.entity.entity.shop.Seller;
import com.mall.service.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * 商城首页接口
 */
@RestController
@RequestMapping("/shop/index")
public class indexController {
    @Autowired
    RecommendedService recommendedService;

    @Autowired
    ClassificationService classificationService;

    @Autowired
    NoticeBoardService noticeBoardService;

    @Autowired
    CommoditiesService commoditiesService;

    @Autowired
    SellerService sellerService;

    //获取推荐商品信息
    @RequestMapping(value = "/default-recommended", method = RequestMethod.GET)
    public ResponseResult getRecommended() {
        return recommendedService.selectAll();
    }

    //获取主页商品分类信息
    @RequestMapping(value = "/classification", method = RequestMethod.GET)
    public ResponseResult getClassification() {
        return classificationService.selectAll();
    }

    //获取主页公告板信息
    @RequestMapping(value = "/notice-board", method = RequestMethod.GET)
    public ResponseResult getNoticeBoard() {
        return noticeBoardService.getAllNotice();
    }

    //获取单个商品详细信息
    @RequestMapping(value = "/commodities", method = RequestMethod.POST)
    public ResponseResult getCommodities(@RequestParam("id") Long id) {
        Commodities commodities = commoditiesService.searchOneCommodity(id);
        return new ResponseResult(200, "获取成功", commodities);
    }

    //查找店家
    @RequestMapping(value = "/seller", method = RequestMethod.POST)
    public ResponseResult getSeller(@RequestParam("id") Long id) {
        Seller seller = sellerService.selectSellerById(id);
        return new ResponseResult(200, "获取成功", seller);
    }
}
