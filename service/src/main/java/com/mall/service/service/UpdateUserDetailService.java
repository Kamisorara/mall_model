package com.mall.service.service;

import com.mall.entity.entity.UserDetail;

public interface UpdateUserDetailService {
    boolean updateUserDetailMessage(UserDetail userDetail);

    UserDetail selectUserDetailInfo(Long id);
}
