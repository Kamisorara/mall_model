package com.mall.service.service;


import com.mall.entity.entity.User;
import com.mall.entity.entity.resp.ResponseResult;

public interface LoginService {
    ResponseResult login(User user);

    ResponseResult logout();
}
