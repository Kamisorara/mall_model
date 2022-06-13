package com.mall.web.controller.shop;

import com.mall.dao.mapper.HeadMapper;
import com.mall.entity.entity.Head;
import com.mall.entity.entity.User;
import com.mall.entity.entity.resp.ResponseResult;
import com.mall.entity.entity.shop.UniappCommodities;
import com.mall.service.service.Oss.OssUploadService;
import com.mall.service.service.UniappCommoditiesService;
import com.mall.service.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


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
    @Autowired
    HeadMapper headMapper;

    @Autowired
    UserInfoService userInfoService;

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

    //上传文件(开放权限)
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public ResponseResult upLoadFile(@RequestParam("file") MultipartFile multipartFile,
                                     HttpServletRequest servletRequest) {
        String url = ossUploadService.uploadFile(multipartFile);
        Head head = new Head();
        String userId = servletRequest.getHeader("userId");
        long id = Long.parseLong(userId);
        head.setUserHead(url).setUserId(id).setStatus(0);
        //先把用户头像status全都变成1（不启用的状态） 然后再进行插入
        headMapper.updateUserHeadStatus(id);
        headMapper.insert(head);
        return new ResponseResult(200, "文件上传成功", url);
    }

    //获取所有用户列表
    @RequestMapping("/get-all-userInfo")
    @PreAuthorize("@ex.hasAuthority('sys:shop:add')")
    public ResponseResult getAllUserInfo() {
        List<User> userList = userInfoService.getUserList();
        return new ResponseResult(200, "所有用户列表获取成功", userList);
    }

    //更新用户状态
    @RequestMapping(value = "/update-user-status", method = RequestMethod.POST)
    @PreAuthorize("@ex.hasAuthority('sys:shop:add')")
    public ResponseResult updateUserStatus(@RequestParam("id") Long id,
                                           @RequestParam("status") String status) {
        boolean success = userInfoService.updateUserStatus(id, status);
        if (success) {
            return new ResponseResult(200, "更新用户信息成功");
        } else {
            return new ResponseResult(400, "更新用户信息失败");
        }
    }
}
