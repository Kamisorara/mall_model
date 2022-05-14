package com.system.service;


import com.common.entity.User;
import com.common.entity.resp.ResponseResult;

public interface LoginService {
    ResponseResult login(User user);

    ResponseResult logout();
}
