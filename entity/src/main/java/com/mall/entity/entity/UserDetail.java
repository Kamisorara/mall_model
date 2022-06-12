package com.mall.entity.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;

/**
 * 用户信息页面更新表
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)//允许链式调用
public class UserDetail {
    private Long id;
    /**
     * 用户名
     */
    private String userName;
    /**
     * 昵称
     */
    private String nickName;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 手机号
     */
    private String phonenumber;
    /**
     * 用户性别
     */
    private String sex;
    /**
     * 创建时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;
    //用户地址
    private String addr;
}
