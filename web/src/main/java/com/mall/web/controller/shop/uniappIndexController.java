package com.mall.web.controller.shop;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.service.service.SwiperService;
import com.mall.service.service.UniappClassificationService;
import com.mall.service.service.UniappCommoditiesService;
import com.mall.service.service.UniappRecommendedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * uniapp商城首页接口
 */
@RestController
@RequestMapping("/uni-shop/index")
public class uniappIndexController {
    @Autowired
    UniappClassificationService classificationService;

    @Autowired
    UniappRecommendedService recommendedService;

    @Autowired
    UniappCommoditiesService commoditiesService;

    @Autowired
    SwiperService swiperService;

    //获取首页分类信息
    @RequestMapping(value = "/get-index-classify", method = RequestMethod.GET)
    public ResponseResult getIndexClassification() {
        return classificationService.selectAll();
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
}
