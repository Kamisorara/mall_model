package com.mall.web.controller.shop;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.ClassificationDetail;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.service.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * uniapp商城首页接口
 */
@RestController
@RequestMapping("/uni-shop/index")
public class uniappIndexController {
    @Autowired
    UniappClassificationService uniappClassificationService;

    @Autowired
    UniappRecommendedService recommendedService;

    @Autowired
    UniappCommoditiesService commoditiesService;

    @Autowired
    ClassificationService classificationService;

    @Autowired
    SwiperService swiperService;


    //获取首页分类信息
    @RequestMapping(value = "/get-index-classify", method = RequestMethod.GET)
    public ResponseResult getIndexClassification() {
        return uniappClassificationService.selectAll();
    }

    //获取推荐商品详情
    @RequestMapping(value = "/get-index-recommended", method = RequestMethod.GET)
    public ResponseResult getIndexRecommended() {
        return recommendedService.selectAll();
    }

    //获取首页商品
    @RequestMapping(value = "/get-index-commodities", method = RequestMethod.GET)
    public ResponseResult getIndexCommodities() {
        return commoditiesService.selectAllCommodities();
    }


    //分页获取商品列表
    @RequestMapping(value = "/getPageCommodities", method = RequestMethod.GET)
    public ResponseResult getPageList(int pageNum, int pageSize) {
        IPage<UniappCommodities> pageList = commoditiesService.getPageList(pageNum, pageSize);
        return new ResponseResult(200, "分页获取商品获取成功", pageList);
    }

    //获取轮播图图片
    @RequestMapping(value = "/getSwiperPicture", method = RequestMethod.GET)
    public ResponseResult getSwiperPicture() {
        return swiperService.selectAll();
    }


    //uniapp获取商品分类后的详情分列表
    @RequestMapping(value = "/getClassificationDetail", method = RequestMethod.GET)
    public ResponseResult getCategory(@RequestParam("id") Integer id) {
        List<ClassificationDetail> classificationDetails = classificationService.selectCategory(id);
        return new ResponseResult(200, "商品详情列表获取成功！", classificationDetails);
    }

    //根据商品type获取商品信息（数量限制10）
    @RequestMapping(value = "/get-commodity-type-limited", method = RequestMethod.GET)
    public ResponseResult getCommodityByTypeLimited(@RequestParam("type") String type) {
        List<UniappCommodities> commodityByTypeLimitedTen = commoditiesService.getCommodityByTypeLimitedTen(type);
        return new ResponseResult(200, "根据商品type获取商品成功，数显限制10", commodityByTypeLimitedTen);
    }

    //根据商品type -分页获取商品列表
    @RequestMapping(value = "/get-commodity-type-pages", method = RequestMethod.GET)
    public ResponseResult getCommodityTypePage(@RequestParam("type") String type,
                                               @RequestParam("pageNum") int pageNum,
                                               @RequestParam("pageSize") int pageSize) {
        IPage<UniappCommodities> commodityByTypePages = commoditiesService.getCommodityByTypePages(type, pageNum, pageSize);
        return new ResponseResult(200, "根据商品type分页获取商品列表成功！", commodityByTypePages);
    }



}
