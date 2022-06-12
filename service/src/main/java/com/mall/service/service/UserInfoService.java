package com.mall.service.service;


import com.mall.entity.entity.User;

public interface UserInfoService {
    //获取用户详情
    User getUserInfo(Long id);

    //获取用户头像
    String getUserHead(Long id);
}
