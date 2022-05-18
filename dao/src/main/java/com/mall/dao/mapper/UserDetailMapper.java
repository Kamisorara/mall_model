package com.mall.dao.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mall.entity.entity.UserDetail;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

@Mapper
public interface UserDetailMapper extends BaseMapper<UserDetail> {
    int updateUserDetail(@Param("nickName") String nickName,
                         @Param("email") String email,
                         @Param("phonenumber") String phonenumber,
                         @Param("sex") String sex,
                         @Param("addr") String addr,
                         @Param("id") Long id);

    //查询用户详情
    UserDetail selectUserDetail(Long id);
}
