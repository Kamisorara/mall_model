package com.mall.web.controller.shop;

import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.service.service.UniappCommoditiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


/**
 * 商城后台接口
 */

@RestController
@RequestMapping("/backStage")
public class backStageController {
    @Autowired
    UniappCommoditiesService commoditiesService;

    //插入商品
    @RequestMapping(value = "/insertCommodity", method = RequestMethod.POST)
    public ResponseResult insertCommodity(@RequestBody UniappCommodities commodities) {
        boolean success = commoditiesService.insertCommodity(commodities);
        if (success) {
            return new ResponseResult(200, "添加商品成功");
        } else {
            return new ResponseResult(400, "添加商品失败");
        }
    }
}
