package com.mall.service.service.impl;

import com.mall.dao.mapper.UserDetailMapper;
import com.mall.entity.entity.UserDetail;
import com.mall.service.service.UpdateUserDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdateUserDetailServiceImpl implements UpdateUserDetailService {
    @Autowired
    UserDetailMapper userDetailMapper;

    @Override
    public boolean updateUserDetailMessage(UserDetail userDetail) {
        int i = userDetailMapper.updateUserDetail(userDetail.getNickName(),
                userDetail.getEmail(),
                userDetail.getPhonenumber(),
                userDetail.getSex(),
                userDetail.getAddr(),
                userDetail.getId());
        return i > 0;
    }

    @Override
    public UserDetail selectUserDetailInfo(Long id) {
        return userDetailMapper.selectUserDetail(id);
    }
}
