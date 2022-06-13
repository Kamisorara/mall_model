package com.mall.service.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import com.mall.dao.mapper.HeadMapper;
import com.mall.dao.mapper.UserMapper;
import com.mall.entity.entity.User;
import com.mall.service.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户详情service
 */

@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Autowired
    UserMapper userMapper;

    @Autowired
    HeadMapper headMapper;

    @Override
    public User getUserInfo(Long id) {
        LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(User::getId, id);
        return userMapper.selectOne(queryWrapper);
    }


    /**
     * 获取用户头像
     *
     * @param id
     * @return
     */
    @Override
    public String getUserHead(Long id) {
        return headMapper.getUserHeadById(id);
    }


    /**
     * 获取用户列表
     *
     * @return
     */
    @Override
    public List<User> getUserList() {
        List<User> userList = userMapper.getUserList();
        return userList;
    }


    /**
     * 更新用户状态
     *
     * @param id
     * @param status
     * @return
     */
    @Override
    public boolean updateUserStatus(Long id, String status) {
        int i = userMapper.updateUserStatus(id, status);
        return i > 0;
    }


}
