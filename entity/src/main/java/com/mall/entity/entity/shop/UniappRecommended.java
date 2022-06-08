package com.mall.entity.entity.shop;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * (shop_uniapp_recommended)表实体类
 *
 * @author Kamisora
 * @since 2022-05-23 21:19:36
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_uniapp_recommended")
public class UniappRecommended {
    //uniapp首页商品推荐id
    @TableId
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;
    //推荐名称
    private String title;
    //图片地址
    private String picture;

}

