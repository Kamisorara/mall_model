package com.admin.controller.shop;


import com.common.entity.resp.ResponseResult;
import com.common.entity.shop.Commodities;
import com.system.service.ClassificationService;
import com.system.service.CommoditiesService;
import com.system.service.NoticeBoardService;
import com.system.service.RecommendedService;
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
}
