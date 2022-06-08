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
 * (shop_uniapp_picture)表实体类
 *
 * @author Kamisora
 * @since 2022-06-03 11:08:55
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "shop_uniapp_picture")
public class ShopUniappPicture {
    //商品轮播图id
    @TableId
    @JsonSerialize(using = ToStringSerializer.class)
    private Long id;
    //商品轮播图地址
    private String picture;
    //商品图对应商品id
    private Long shopId;

}

