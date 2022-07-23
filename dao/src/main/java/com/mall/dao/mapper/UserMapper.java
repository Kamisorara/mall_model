package com.mall.dao.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserMapper extends BaseMapper<User> {

    //根据用户名查找用户id （用户注册时查找新增用户id用）
    Long selectUserIdByUserName(String userName);

    //获取所有用户列表信息
    List<User> getUserList();

    //根据id获取用户状态
    String getUserStatus(Long id);

    //（提供后台使用）设计用户status状态
    int updateUserStatus(@Param("id") Long id, @Param("status") String status);

}
