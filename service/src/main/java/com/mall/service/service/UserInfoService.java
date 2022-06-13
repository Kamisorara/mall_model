package com.mall.service.service;


import com.mall.entity.entity.User;

import java.util.List;

public interface UserInfoService {
    //获取用户详情
    User getUserInfo(Long id);

    //获取用户头像
    String getUserHead(Long id);

    //获取用户列表
    List<User> getUserList();

    //更新用户状态
    boolean updateUserStatus(Long id, String status);
}
