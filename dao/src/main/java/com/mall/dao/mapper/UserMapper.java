package com.mall.dao.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.Addr;
import com.mall.entity.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User> {

    //根据用户名查找用户id （用户注册时查找新增用户id用）
    Long selectUserIdByUserName(String userName);
}
