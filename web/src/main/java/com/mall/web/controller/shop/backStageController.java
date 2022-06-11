package com.mall.web.controller.shop;

import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.service.service.Oss.OssUploadService;
import com.mall.service.service.UniappCommoditiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


/**
 * 商城后台接口
 */

@RestController
@RequestMapping("/backStage")
public class backStageController {
    @Autowired
    UniappCommoditiesService commoditiesService;

    @Autowired
    OssUploadService ossUploadService;

    //插入商品
    @RequestMapping(value = "/insertCommodity", method = RequestMethod.POST)
    @PreAuthorize("@ex.hasAuthority('sys:shop:add')")
    public ResponseResult insertCommodity(@RequestBody UniappCommodities commodities) {
        boolean success = commoditiesService.insertCommodity(commodities);
        if (success) {
            return new ResponseResult(200, "添加商品成功");
        } else {
            return new ResponseResult(400, "添加商品失败");
        }
    }

    //上传文件
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    @PreAuthorize("@ex.hasAuthority('sys:shop:add')")
    public ResponseResult upLoadFile(@RequestParam("file") MultipartFile multipartFile) {
        String url = ossUploadService.uploadFile(multipartFile);
        return new ResponseResult(200, "文件上传成功", url);
    }

}
