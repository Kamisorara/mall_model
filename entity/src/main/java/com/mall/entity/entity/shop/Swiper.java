package com.mall.entity.entity.shop;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 首页轮播图地址
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_uniapp_swiper")
public class Swiper {
    @TableId
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;

    private String picture;

}
