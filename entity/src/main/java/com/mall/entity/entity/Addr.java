package com.mall.entity.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * (Addr)表实体类
 * 用户地址
 *
 * @author Kamisora
 * @since 2022-05-16 20:50:06
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "sys_user_addr")
public class Addr {
    //地址id
    @TableId
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;
    //用户地址
    private String addr;
    //对应用户唯一id
    private Long userId;

}

